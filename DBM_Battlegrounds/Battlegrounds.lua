--
-- Alterac und Arathi Battleground Mods
--
-- based on v1.0 from LeoLeal,  thanks
-- by Nitram to v1.2 with auto turn-In for alterac valley
-- by Nitram to v1.4 with Arathi Basin Time to End Bar, bugfixes etc.
-- by Nitram to v1.5 with WSG Flag Info Frame and a lot of Bugfixes.
-- by Nitram to v1.6 with only Local Bars, Option to change "bar" text, Colored Bars
-- by Nitram to v1.7 - changed localizations
-- by Diablohu to v1.8 - add icon for timer bars, fix some issues in zhCN client
--

DBM.AddOns.Battlegrounds = { 
	["Name"] = DBM_BGMOD_LANG.NAME, 
	["Abbreviation1"] = "bg", 
	["Version"] = "1.8", 
	["Author"] = "Nitram + LeoLeal + Diablohu", 
	["Description"] = DBM_BGMOD_LANG.INFO,
	["Instance"] = DBM_OTHER, 
	["GUITab"] = DBM_NO_GUI_TAB, 
	["Sort"] = 0, 
	["Options"] = {
		["Enabled"] = true, 
		["Announce"] = false, 
		["AVAutoTurnIn"] = true, 
		["ShowWsgFrame"] = true,
		["ShowAbFrame"] = true,
		["ColorByClass"] = true,
		["ShowInviteTimer"] = true,
	}, 
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_BG_SYSTEM_NEUTRAL"] = true,
		["CHAT_MSG_BG_SYSTEM_ALLIANCE"] = true, 
		["CHAT_MSG_BG_SYSTEM_HORDE"] = true, 
		["PLAYER_ENTERING_WORLD"] = true,
		["ZONE_CHANGED_NEW_AREA"] = true,
		["GOSSIP_SHOW"] = true, 			-- Turn In
		["QUEST_PROGRESS"] = true, 			-- Turn In
		["QUEST_COMPLETE"] = true, 			-- Turn In
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,	-- WSG Boots Timer
		["UPDATE_BATTLEFIELD_SCORE"] = true,
	}, 	
	["GetItemName"] = function(bag,  slot)
		local itemlink;
		if (bag == -1) then	itemlink = GetInventoryItemLink("player",  slot);
		else			itemlink = GetContainerItemLink(bag,  slot);
		end
		if (itemlink) then
			local _,  _,  name = string.find(itemlink,  "^.*%[(.*)%].*$");
			return name;
		else	return "";
		end
	end, 
	["GetItemCount"] = function(ItemName)
		local anzl,  bagNr,  bagSlot = 0;
		for bagNr = 0,  10,  1 do
			for bagSlot = 1,  GetContainerNumSlots(bagNr),  1 do
				if( DBM.AddOns.Battlegrounds.GetItemName(bagNr,  bagSlot) == ItemName) then
					local _,  itemCount = GetContainerItemInfo(bagNr,  bagSlot);
					anzl = anzl + itemCount;
				end
			end
		end
		return anzl;
	end, 
	["ABGetScore"] = function()		-- DBM.AddOns.Battlegrounds.ABGetScore
		if( GetRealZoneText() == DBM_ARATHI ) then
			local _, mAllyInfo = GetWorldStateUIInfo(1);
			local _, mHordeInfo = GetWorldStateUIInfo(2);
			if( not mAllyInfo or not mHordeInfo ) then return false; end

			local _, _, AllyBases, AllyScore = string.find(mAllyInfo, DBM_BGMOD_LANG.AB_SCOREEXP);
			local _, _, HordeBases, HordeScore = string.find(mHordeInfo, DBM_BGMOD_LANG.AB_SCOREEXP);
			if( not AllyBases or not AllyScore or not HordeBases or not HordeScore) then return false; end

			AllyBases	= tonumber( AllyBases );
			AllyScore	= tonumber( AllyScore );
			HordeBases	= tonumber( HordeBases );
			HordeScore	= tonumber( HordeScore );

			return true, AllyBases, AllyScore, HordeBases, HordeScore;
		else return false;
		end
	end,
	["ABLastTick"] = {
		["LastAllyCount"] = 0,
		["LastHordeCount"] = 0,
		["Alliance"] = {
			["Score"] = 0,
			["Time"] = 0,
			["Bases"] = 0,
		},
		["Horde"] = {
			["Score"] = 0,
			["Time"] = 0,
			["Bases"] = 0,
		},
	},
	["ABResPerSec"] = function(bases)
		bases = tonumber(bases);
		local value = 0.0;		-- Used values from BGAssist because my times where wrong
		if(bases == 1) then	value = 25.0 / 30.0;		-- 25 res per 30 sec
		elseif(bases == 2) then	value = (300.0 / 9.0) / 30.0; 	-- 33.3(repeating) per 30 sec
		elseif(bases == 3) then	value = 50.0  / 30.0;		-- 50 res per 30 sec
		elseif(bases == 4) then	value = 100.0 / 30.0;		-- 100 res per 30 sec
		elseif(bases == 5) then	value = 900.0 / 30.0;		-- 900 res per 30 sec
		end
		return value;
	end,
	["WSGInfoFrame"] = function(showframe)
		if showframe then
			if AlwaysUpFrame1DynamicIconButton and AlwaysUpFrame2DynamicIconButton then
				if not DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1 then
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1 = CreateFrame("Frame", nil, AlwaysUpFrame1DynamicIconButton);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:SetHeight(10);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:SetWidth(100);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:SetPoint("LEFT", "AlwaysUpFrame1DynamicIconButton", "RIGHT", 4, 0)
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1Text = DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:CreateFontString(nil, nil, "GameFontNormalSmall");
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1Text:SetAllPoints(DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1Text:SetJustifyH("LEFT");
				end
				if not DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2 then
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2 = CreateFrame("Frame", nil, AlwaysUpFrame2DynamicIconButton);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:SetHeight(10);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:SetWidth(100);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:SetPoint("LEFT", "AlwaysUpFrame2DynamicIconButton", "RIGHT", 4, 0)
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2Text= DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:CreateFontString(nil, nil, "GameFontNormalSmall");
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2Text:SetAllPoints(DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2);
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2Text:SetJustifyH("LEFT");
				end
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:Show();
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1Text:SetText("");
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:Show();
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2Text:SetText("");
			end
		else
			if DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1 and DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2 then
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:Hide();
				DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:Hide();
			end
		end	
	end,
	["ABInfoFrame"] = function(showframe)
		if showframe then
			if AlwaysUpFrame1Text and AlwaysUpFrame2Text then
				if not DBM.AddOns.Battlegrounds.ABScoreFrame1 then
					DBM.AddOns.Battlegrounds.ABScoreFrame1 = CreateFrame("Frame", nil, AlwaysUpFrame1);
					DBM.AddOns.Battlegrounds.ABScoreFrame1:SetHeight(10);
					DBM.AddOns.Battlegrounds.ABScoreFrame1:SetWidth(100);
					DBM.AddOns.Battlegrounds.ABScoreFrame1:SetPoint("LEFT", "AlwaysUpFrame1Text", "RIGHT", 4, 0)
					DBM.AddOns.Battlegrounds.ABScoreFrame1Text = DBM.AddOns.Battlegrounds.ABScoreFrame1:CreateFontString(nil, nil, "GameFontNormalSmall");
					DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetAllPoints(DBM.AddOns.Battlegrounds.ABScoreFrame1);
					DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetJustifyH("LEFT");
				end
				if not DBM.AddOns.Battlegrounds.ABScoreFrame2 then
					DBM.AddOns.Battlegrounds.ABScoreFrame2 = CreateFrame("Frame", nil, AlwaysUpFrame2);
					DBM.AddOns.Battlegrounds.ABScoreFrame2:SetHeight(10);
					DBM.AddOns.Battlegrounds.ABScoreFrame2:SetWidth(100);
					DBM.AddOns.Battlegrounds.ABScoreFrame2:SetPoint("LEFT", "AlwaysUpFrame2Text", "RIGHT", 4, 0)
					DBM.AddOns.Battlegrounds.ABScoreFrame2Text= DBM.AddOns.Battlegrounds.ABScoreFrame2:CreateFontString(nil, nil, "GameFontNormalSmall");
					DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetAllPoints(DBM.AddOns.Battlegrounds.ABScoreFrame2);
					DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetJustifyH("LEFT");
				end
				DBM.AddOns.Battlegrounds.ABScoreFrame1:Show();
				DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("");
				DBM.AddOns.Battlegrounds.ABScoreFrame2:Show();
				DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("");
			end
		else
			if DBM.AddOns.Battlegrounds.ABScoreFrame1 and DBM.AddOns.Battlegrounds.ABScoreFrame2 then
				DBM.AddOns.Battlegrounds.ABScoreFrame1:Hide();
				DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("");
				DBM.AddOns.Battlegrounds.ABScoreFrame2:Hide();
				DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("");
			end
		end	
	end,
	["OnUpdate"] = function(elapsed)
		if( GetRealZoneText() == DBM_ARATHI ) then
			local mOk, AllyBases, AllyScore, HordeBases, HordeScore = DBM.AddOns.Battlegrounds.ABGetScore();



			if( mOk and DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score ~= AllyScore ) then		-- Update Time on Score Change
				DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score = AllyScore;
				DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases = AllyBases;
				DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Time = time();
			end
			if( mOk and DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score ~= HordeScore ) then
				DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score = HordeScore;
				DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases = HordeBases;
				DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Time = time();
			end
			
		  	if( DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score < 2000 
			and DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score < 2000
			and (DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score + DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score) > 0
			and (DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases + DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases) > 0 ) then

				if( DBM.AddOns.Battlegrounds.ABLastTick.LastAllyCount ~= DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases 
				 or DBM.AddOns.Battlegrounds.ABLastTick.LastHordeCount ~= DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases )
				 and not DBM.GetScheduleTimeLeft("DBM.AddOns.Battlegrounds.OnEvent", "GetNewABTimes") then
					DBM.Schedule(3, "DBM.AddOns.Battlegrounds.OnEvent", "GetNewABTimes");		-- Try this because the GetScore()
																								-- isn't synced and this sucks :(
				end
			end
		else 
			-- AB TimeLeft
			DBM.EndStatusBarTimer("AB_WINALLY", true);
			DBM.EndStatusBarTimer("AB_WINHORDE", true);
		end
		
		--invite timer stuff
		if MAX_BATTLEFIELD_QUEUES and PVP_TEAMSIZE and DBM.AddOns.Battlegrounds.Options.ShowInviteTimer then
			for i = 1, MAX_BATTLEFIELD_QUEUES do
				local status, mapName, instanceID, _, _, teamSize = GetBattlefieldStatus(i);
				if (mapName and (instanceID ~= 0)) then
					mapName = mapName.." "..instanceID;
					if (teamSize ~= 0) then
						mapName = mapName.." "..format(PVP_TEAMSIZE, tostring(teamSize), tostring(teamSize));
					end
				end
				if status == "confirm" then
					if not DBM.GetStatusBarTimerTimeLeft(mapName) then
						DBM.StartStatusBarTimer((GetBattlefieldPortExpiration(i)/1000), mapName, nil, true);
					end
				end
			end
		end
		
		
	end,
	["OnEvent"] = function(event,  arg1)

		if(event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" and string.find(arg1, DBM_BGMOD_LANG.WSG_BOOTS_EXPR) )then
			DBM.StartStatusBarTimer(10, "Speed Boots", nil, true);
			-- Respawn Timer seems to be around 165-175 Seconds (dynamic)
			return;	-- no other code needs this event
		end

		-- ------------------------ --
		-- WSG InfoFrame - FlagCaps --
		-- ------------------------ --
		if( (event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD") and GetRealZoneText() == DBM_WARSONG ) and DBM.AddOns.Battlegrounds.Options.ShowWsgFrame then
			DBM.AddSyncMessage("REQ VER "..DBM.Version, true);
			DBM.AddOns.Battlegrounds.WSGInfoFrame(true);
		elseif( (event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD") and GetRealZoneText() ~= DBM_WARSONG ) then
			DBM.AddOns.Battlegrounds.WSGInfoFrame(false);
		end
		
		if( (event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD") and GetRealZoneText() == DBM_ARATHI ) then
			DBM.AddSyncMessage("REQ VER "..DBM.Version, true);
			DBM.AddOns.Battlegrounds.ABInfoFrame(true);
		elseif( (event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD") and GetRealZoneText() ~= DBM_ARATHI ) then
			DBM.AddOns.Battlegrounds.ABInfoFrame(false);
		end
		
		if( (event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_ENTERING_WORLD") and GetRealZoneText() == DBM_ALTERAC ) then
			DBM.AddSyncMessage("REQ VER "..DBM.Version, true);
		end

		if (event == "CHAT_MSG_BG_SYSTEM_ALLIANCE" or event == "CHAT_MSG_BG_SYSTEM_HORDE") and DBM.AddOns.Battlegrounds.Options.ShowWsgFrame then
			if( DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1 and DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2 ) then
				if( string.find(arg1, DBM_BGMOD_LANG.WSG_FLAG_PICKUP) ) then
					local _, _, sArg1, sArg2 =  string.find(arg1, DBM_BGMOD_LANG.WSG_FLAG_PICKUP);
					local mSide, mNick;
					if( GetLocale() == "deDE" ) then 	mSide = sArg2; mNick = sArg1;
					else					mSide = sArg1; mNick = sArg2;
					end
					
					if( mSide == DBM_BGMOD_LANG.ALLIANCE ) then
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2Text:SetText(mNick);
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:Show();

					elseif( mSide == DBM_BGMOD_LANG.HORDE ) then
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1Text:SetText(mNick);
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:Show();
					end	
				elseif( string.find(arg1, DBM_BGMOD_LANG.WSG_FLAG_RETURN) ) then
					local _, _, mSide, mNick =  string.find(arg1, DBM_BGMOD_LANG.WSG_FLAG_RETURN);
					if( mSide == DBM_BGMOD_LANG.ALLIANCE ) then
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:Hide();

					elseif( mSide == DBM_BGMOD_LANG.HORDE ) then
						DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:Hide();

					end
				elseif( string.find(arg1, DBM_BGMOD_LANG.WSG_HASCAPTURED) ) then
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame2:Hide();
					DBM.AddOns.Battlegrounds.WSGFlagCarrierFrame1:Hide();
				end
			end
		end

		----------------
		-- AB WinTime --
		----------------

		if( event == "GetNewABTimes" ) then

				
				local AllyTime = ((2000 - DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score) 
				            / DBM.AddOns.Battlegrounds.ABResPerSec(DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases))
					    - (time()-DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Time);

				local HordeTime = ((2000 - DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score) 
				             / DBM.AddOns.Battlegrounds.ABResPerSec(DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases))
					     - (time()-DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Time);

				if( AllyTime > 5000 ) then 	AllyTime = 5000; end
				if( HordeTime > 5000 ) then 	HordeTime = 5000; end
				

				
				DBM.AddOns.Battlegrounds.ABLastTick.LastAllyCount = DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases; 
				DBM.AddOns.Battlegrounds.ABLastTick.LastHordeCount = DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases;

				if DBM.GetStatusBarTimerTimeLeft("AB_WINALLY") and DBM.GetStatusBarTimerTimeLeft("AB_WINHORDE") then --bad timers, synced by bugged clients
					DBM.EndStatusBarTimer("AB_WINALLY");
					DBM.EndStatusBarTimer("AB_WINHORDE");
				end
				
				
				if( AllyTime == HordeTime ) then
					DBM.EndStatusBarTimer("AB_WINALLY", true);
					DBM.EndStatusBarTimer("AB_WINHORDE", true);
					DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("");
					DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("");
					
					
				elseif( AllyTime > HordeTime ) then		-- Horde wins!
					if DBM.AddOns.Battlegrounds.ABScoreFrame1Text and DBM.AddOns.Battlegrounds.ABScoreFrame2Text then
						if DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases == 0 then
							DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("("..DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score..")");
						else
							DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("("..math.floor(math.floor(((HordeTime * DBM.AddOns.Battlegrounds.ABResPerSec(DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Bases)) + DBM.AddOns.Battlegrounds.ABLastTick["Alliance"].Score) / 10) * 10)..")");
						end
						DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("(2000)");
					end
					
					if( DBM.GetStatusBarTimerTimeLeft("AB_WINALLY") ) then
						local timeLeft, timeElapsed = DBM.GetStatusBarTimerTimeLeft("AB_WINALLY");
						DBM.UpdateStatusBarTimer("AB_WINALLY", nil, (timeElapsed + HordeTime), "AB_WINHORDE", "Interface\\Icons\\INV_BannerPVP_01.blp", true);
						
					elseif( DBM.GetStatusBarTimerTimeLeft("AB_WINHORDE") ) then
						local timeLeft, timeElapsed = DBM.GetStatusBarTimerTimeLeft("AB_WINHORDE");
						DBM.UpdateStatusBarTimer("AB_WINHORDE", nil, (timeElapsed + HordeTime), nil, nil, true);
						
					else
						DBM.StartStatusBarTimer(HordeTime, "AB_WINHORDE", "Interface\\Icons\\INV_BannerPVP_01.blp", true);
					end

				elseif( HordeTime > AllyTime ) then		-- Alliance wins!
					if DBM.AddOns.Battlegrounds.ABScoreFrame1Text and DBM.AddOns.Battlegrounds.ABScoreFrame2Text then
						if DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases == 0 then
							DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("("..DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score..")");
						else
							DBM.AddOns.Battlegrounds.ABScoreFrame2Text:SetText("("..math.floor(math.floor(((AllyTime * DBM.AddOns.Battlegrounds.ABResPerSec(DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Bases)) + DBM.AddOns.Battlegrounds.ABLastTick["Horde"].Score) / 10) * 10)..")");
						end
						DBM.AddOns.Battlegrounds.ABScoreFrame1Text:SetText("(2000)");						
					end
					
					if( DBM.GetStatusBarTimerTimeLeft("AB_WINHORDE") ) then
						local timeLeft, timeElapsed = DBM.GetStatusBarTimerTimeLeft("AB_WINHORDE");
						DBM.UpdateStatusBarTimer("AB_WINHORDE", nil, (timeElapsed + AllyTime), "AB_WINALLY", "Interface\\Icons\\INV_BannerPVP_02.blp", true);

					elseif( DBM.GetStatusBarTimerTimeLeft("AB_WINALLY") ) then
						local timeLeft, timeElapsed = DBM.GetStatusBarTimerTimeLeft("AB_WINALLY");
						DBM.UpdateStatusBarTimer("AB_WINALLY", nil, (timeElapsed + AllyTime), nil, nil, true);
					else
						DBM.StartStatusBarTimer(AllyTime, "AB_WINALLY", "Interface\\Icons\\INV_BannerPVP_02.blp", true);
					end
				end
		end
		
		-------------------
		-- AV AutoTurnIn --
		-------------------
		if ((event == "GOSSIP_SHOW" or event=="QUEST_PROGRESS") and GetRealZoneText() == DBM_ALTERAC) and DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn then
			local target = UnitName("target");

			if( target == DBM_BGMOD_LANG.AV_NPC.SMITHREGZAR or target == DBM_BGMOD_LANG.AV_NPC.MURGOTDEEPFORGE ) then
				-- Open Quest to Smith or Murgot
				local Upgrade = GetGossipOptions();
				if string.find((string.lower(Upgrade) or ""), DBM_UPGRADE) then
					SelectGossipOption(1);
				elseif (DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.ARMORSCRAPS) >= 20) then					
					SelectGossipAvailableQuest(1);
				end

			elseif( target == DBM_BGMOD_LANG.AV_NPC.PRIMALISTTHURLOGA) then
				local anzl = DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.SOLDIERSBLOOD);
				if (anzl >= 5) then		SelectGossipAvailableQuest(2);
				elseif (anzl > 0) then		SelectGossipAvailableQuest(1);
				end

			elseif( target == DBM_BGMOD_LANG.AV_NPC.ARCHDRUIDRENFERAL) then
				local anzl = DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.STORMCRYSTAL);
				if (anzl >= 5) then		SelectGossipAvailableQuest(2);
				elseif (anzl > 0) then		SelectGossipAvailableQuest(1);
				end

			elseif( target == DBM_BGMOD_LANG.AV_NPC.STORMPIKERAMRIDERCOMMANDER) then	-- Ram Riders
				if (DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.FROSTWOLFHIDE) > 0) then
					SelectGossipAvailableQuest(1);
				end

			elseif( target == DBM_BGMOD_LANG.AV_NPC.FROSTWOLFWOLFRIDERCOMMANDER) then	-- Wolf Riders
				if (DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.ALTERACRAMHIDE) > 0) then
					SelectGossipAvailableQuest(1);
				end
			end

		end
		if (event=="QUEST_PROGRESS" and GetRealZoneText() == DBM_ALTERAC and DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn) then
			local target = UnitName("target");

			if (target == DBM_BGMOD_LANG.AV_NPC.WINGCOMMANDERJEZTOR 
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.LIEUTENANTSFLESH) == 0) then		return;

			elseif (target == DBM_BGMOD_LANG.AV_NPC.WINGCOMMANDERGUSE
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.SOLDIERSFLESH) == 0) then		return;

			elseif (target == DBM_BGMOD_LANG.AV_NPC.WINGCOMMANDERMULVERICK
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.COMMANDERSFLESH) == 0) then		return;

			elseif (target == DBM_BGMOD_LANG.AV_NPC.WINGCOMMANDERVIPORE
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.LIEUTENANTSMEDAL) == 0) then		return;

			elseif (target == DBM_BGMOD_LANG.AV_NPC.WINDCOMMANDERSLIDORE
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.SOLDIERSMEDAL) == 0) then		return;

			elseif (target == DBM_BGMOD_LANG.AV_NPC.WINGCOMMANDERICHMAN
			   and DBM.AddOns.Battlegrounds.GetItemCount(DBM_BGMOD_LANG.AV_ITEM.COMMANDERSMEDAL) == 0) then		return;

		   	end
			CompleteQuest();

		end
		if (event=="QUEST_COMPLETE" and GetRealZoneText() == DBM_ALTERAC and DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn) then
			local target = UnitName("target");
			for index,  value in pairs(DBM_BGMOD_LANG.AV_NPC) do
				if (target == value) then
					GetQuestReward(0);
					DBM.AddMsg(DBM_BGMOD_LANG.THANKS);
				end
			end
		end


		-- ----------------- --
		-- Code from LeoLeal --
		-- modded by Nitram  --
		-- ----------------- --
		if (event == "CHAT_MSG_BG_SYSTEM_ALLIANCE") then
			for index, value in ipairs(DBM_BGMOD_LANG.AB_TARGETS) do --AB Captures
				if string.find(arg1, value) then
					if string.find(arg1, DBM_BGMOD_LANG["AB_HASASSAULTED"]) or string.find(arg1, DBM_BGMOD_LANG["AB_CLAIMSTHE"]) then
						--Initiate a timer w/ value as text string for 60 seconds
						DBM.EndStatusBarTimer("Horde: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]));
						DBM.StartColoredStatusBarTimer(64,  "Alliance: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), "Interface\\Icons\\INV_BannerPVP_02.blp", 0, 0, 1, nil, nil, nil, "Battlegrounds");

					elseif string.find(arg1, DBM_BGMOD_LANG["AB_HASDEFENDEDTHE"]) or string.find(arg1, DBM_BGMOD_LANG["AB_HASTAKENTHE"]) then
						--clear a timer for value
						if string.find(arg1, DBM_BGMOD_LANG["AB_HASTAKENTHE"]) then
							if DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"] and DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"][index] then
								DBM.Announce(string.format(DBM_BGMOD_LANG.ALLI_TAKE_ANNOUNCE, DBM_BGMOD_LANG.AB_TARGETS_ANNOUNCE[index]));
							else
								DBM.Announce(string.format(DBM_BGMOD_LANG.ALLI_TAKE_ANNOUNCE, DBM.Capitalize(DBM_BGMOD_LANG.AB_TARGETS[index])));
							end
							local oldFlashColor = DBM.Options.FlashColor;
							DBM.Options.FlashColor = "blue";
							DBM.AddSpecialWarning("", false, true);
							DBM.Options.FlashColor = oldFlashColor;
						end
						DBM.EndStatusBarTimer("Alliance: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
						DBM.EndStatusBarTimer("Horde: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
					end
				end
			end
			
			-- WSG Capture Flag
			if (string.find(arg1, DBM_BGMOD_LANG["WSG_HASCAPTURED"])) then
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "blue";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
				DBM.StartStatusBarTimer(23, "Flag respawn", true);
			end
			
			--Initial capture of Snowfall for alliance
			if string.find(string.lower(arg1), string.lower(DBM_BGMOD_EN_TARGET_AV[8])) then
				DBM.EndStatusBarTimer("Horde: "..DBM_BGMOD_EN_TARGET_AV[8]);
				DBM.StartColoredStatusBarTimer(303,  "Alliance: "..DBM_BGMOD_EN_TARGET_AV[8], "Interface\\Icons\\Spell_Shadow_AnimateDead", 0,0,1, nil, nil, nil, "Battlegrounds");
			end
		elseif (event == "CHAT_MSG_BG_SYSTEM_HORDE") then
			for index, value in ipairs(DBM_BGMOD_LANG.AB_TARGETS) do --AB Captures
				if string.find(arg1, value) then
					if string.find(arg1, DBM_BGMOD_LANG["AB_HASASSAULTED"]) or string.find(arg1, DBM_BGMOD_LANG["AB_CLAIMSTHE"]) then
						--Initiate a timer w/ value as text string for 60 seconds
						DBM.EndStatusBarTimer("Alliance: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]));
						DBM.StartColoredStatusBarTimer(64, "Horde: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), "Interface\\Icons\\INV_BannerPVP_01.blp", 1,0,0, nil, nil, nil, "Battlegrounds");
					elseif string.find(arg1, DBM_BGMOD_LANG["AB_HASDEFENDEDTHE"]) or string.find(arg1, DBM_BGMOD_LANG["AB_HASTAKENTHE"]) then
						--clear a timer for value
						if string.find(arg1, DBM_BGMOD_LANG["AB_HASTAKENTHE"]) then
							if DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"] and DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"][index] then
								DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, DBM_BGMOD_LANG.AB_TARGETS_ANNOUNCE[index]));
							else
								DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, DBM.Capitalize(DBM_BGMOD_LANG.AB_TARGETS[index])));
							end
							local oldFlashColor = DBM.Options.FlashColor;
							DBM.Options.FlashColor = "red";
							DBM.AddSpecialWarning("", false, true);
							DBM.Options.FlashColor = oldFlashColor;
						end
						DBM.EndStatusBarTimer("Horde: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
						DBM.EndStatusBarTimer("Alliance: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
					end
				end
			end			
			-- WSG Capture
			if (string.find(arg1,DBM_BGMOD_LANG["WSG_HASCAPTURED"])) then
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "red";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
				DBM.StartStatusBarTimer(23, "Flag respawn", true);
			end
		
			--Initial capture of Snowfall for horde
			if string.find(string.lower(arg1), string.lower(DBM_BGMOD_EN_TARGET_AV[8])) then
				DBM.EndStatusBarTimer("Alliance: "..DBM_BGMOD_EN_TARGET_AV[8]);
				DBM.StartColoredStatusBarTimer(303, "Horde: "..DBM_BGMOD_EN_TARGET_AV[8], "Interface\\Icons\\Spell_Shadow_AnimateDead", 1,0,0, nil, nil, nil, "Battlegrounds");
			end
			
		-- Alterac Valley Specific Yells
		elseif (event == "CHAT_MSG_MONSTER_YELL") then
			if string.find(arg1, "西霜狼哨塔被部落占领了") then
				DBM.EndStatusBarTimer("Alliance: 西侧霜狼哨塔", true);
				DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, "西侧霜狼哨塔"));
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "red";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
			elseif string.find(arg1, "东霜狼哨塔被部落占领了") then
				DBM.EndStatusBarTimer("Alliance: 东侧霜狼哨塔", true);
				DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, "东侧霜狼哨塔"));
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "red";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
			elseif string.find(arg1, "西侧防御塔点被部落占领了") then
				DBM.EndStatusBarTimer("Alliance: 哨塔高地", true);
				DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, "哨塔高地"));
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "red";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
			elseif string.find(arg1, "石炉墓地受到攻击！如果我们不尽快采取措施的话，部落会([^%s]+)它的！") then
				DBM.StartColoredStatusBarTimer(303,  "Horde: 石炉墓地", "Interface\\Icons\\Spell_Shadow_AnimateDead", 1,0,0);
			elseif string.find(arg1, "冰翼工事被联盟领了！") then
				DBM.EndStatusBarTimer("Horde: 冰翼碉堡", true);
				DBM.Announce(string.format(DBM_BGMOD_LANG.ALLI_TAKE_ANNOUNCE, "冰翼碉堡"));
				local oldFlashColor = DBM.Options.FlashColor;
				DBM.Options.FlashColor = "blue";
				DBM.AddSpecialWarning("", false, true);
				DBM.Options.FlashColor = oldFlashColor;
			end
			
			for index, value in ipairs(DBM_BGMOD_LANG["AV_TARGETS"]) do --AV Captures
				if string.find(string.lower(arg1), string.lower(value)) then

					if string.find(arg1, DBM_BGMOD_LANG["AV_UNDERATTACK"]) then
						--Initiate a timer w/ value as text string for 300 seconds
						local icon;
						if DBM_BGMOD_LANG["AV_TARGET_TYPE"] and DBM_BGMOD_LANG["AV_TARGET_TYPE"][index] then
							if DBM_BGMOD_LANG["AV_TARGET_TYPE"][index] == "tower" then
								if string.find(arg1, DBM_BGMOD_LANG["HORDE"]) then
									icon = "Interface\\AddOns\\DBM_API\\Textures\\GuardTower";
								elseif string.find(arg1, DBM_BGMOD_LANG["ALLIANCE"]) then
									icon = "Interface\\AddOns\\DBM_API\\Textures\\OrcTower"; --orc tower, because the alliance captures horde towers, so the bar is for a horde tower if the alliance captured a tower!
								end
							elseif DBM_BGMOD_LANG["AV_TARGET_TYPE"][index] == "graveyard" then								
								icon = "Interface\\Icons\\Spell_Shadow_AnimateDead";
							end
						end
						
						if string.find(arg1, DBM_BGMOD_LANG["HORDE"]) then 
							DBM.EndStatusBarTimer("Alliance: "..DBM_BGMOD_EN_TARGET_AV[index]);
							DBM.StartColoredStatusBarTimer(303,  "Horde: "..DBM_BGMOD_EN_TARGET_AV[index], icon or "Interface\\Icons\\INV_BannerPVP_01.blp", 1,0,0, nil, nil, nil, "Battlegrounds");
						end
						if string.find(arg1, DBM_BGMOD_LANG["ALLIANCE"]) then
							DBM.EndStatusBarTimer("Horde: "..DBM_BGMOD_EN_TARGET_AV[index]);
							DBM.StartColoredStatusBarTimer(303,  "Alliance: "..DBM_BGMOD_EN_TARGET_AV[index], icon or "Interface\\Icons\\INV_BannerPVP_02.blp", 0,0,1, nil, nil, nil, "Battlegrounds");
						end
					elseif string.find(arg1, DBM_BGMOD_LANG["AV_WASDESTROYED"]) or string.find(arg1, DBM_BGMOD_LANG["AV_WASTAKENBY"]) then
						if string.find(arg1, DBM_BGMOD_LANG["ALLIANCE"]) then
							DBM.Announce(string.format(DBM_BGMOD_LANG.ALLI_TAKE_ANNOUNCE, value));
							local oldFlashColor = DBM.Options.FlashColor;
							DBM.Options.FlashColor = "blue";
							DBM.AddSpecialWarning("", false, true);
							DBM.Options.FlashColor = oldFlashColor;
						end
						if string.find(arg1, DBM_BGMOD_LANG["HORDE"]) then
							DBM.Announce(string.format(DBM_BGMOD_LANG.HORDE_TAKE_ANNOUNCE, value));
							local oldFlashColor = DBM.Options.FlashColor;
							DBM.Options.FlashColor = "red";
							DBM.AddSpecialWarning("", false, true);
							DBM.Options.FlashColor = oldFlashColor;
						end
						DBM.EndStatusBarTimer("Alliance: "..DBM_BGMOD_EN_TARGET_AV[index], true);
						DBM.EndStatusBarTimer("Horde: "..DBM_BGMOD_EN_TARGET_AV[index], true);
					end
				end
			end

			--Ivus and Ice Lord
			if string.find(arg1,DBM_BGMOD_LANG["AV_IVUS"]) then 
				DBM.StartStatusBarTimer(603,  "Ivus spawn", "Interface\\Icons\\INV_BannerPVP_02.blp");
			elseif string.find(string.lower(arg1),string.lower(DBM_BGMOD_LANG["AV_ICEY"])) then
				DBM.StartStatusBarTimer(603,  "Ice spawn", "Interface\\Icons\\INV_BannerPVP_01.blp");
			end

		-- Begining Match Timers and End Matches
		elseif (event == "CHAT_MSG_BG_SYSTEM_NEUTRAL") then
			if (arg1 == DBM_BGMOD_LANG["WSG_START60SEC"]
			 or arg1 == DBM_BGMOD_LANG["AB_START60SEC"]
			 or arg1 == DBM_BGMOD_LANG["AV_START60SEC"] ) then
					DBM.EndStatusBarTimer("Begins", true);
					DBM.StartStatusBarTimer(62, "Begins", true);

			elseif (arg1 == DBM_BGMOD_LANG["WSG_START30SEC"]
			     or arg1 == DBM_BGMOD_LANG["AB_START30SEC"]
			     or arg1 == DBM_BGMOD_LANG["AV_START30SEC"] ) then
					
					if not DBM.GetStatusBarTimerTimeLeft("Begins") then
						DBM.StartStatusBarTimer(62, "Begins");
					end
					DBM.UpdateStatusBarTimer("Begins", 31, 62);
					
			elseif (arg1 == DBM_BGMOD_LANG["ARENA_BEGIN"]) then
				DBM.StartStatusBarTimer(60, "Begins", nil, true); --local timer, because IsInInstance is bugged in arenas
			elseif (arg1 == DBM_BGMOD_LANG["ARENA_BEGIN30"]) then
				if not DBM.GetStatusBarTimerTimeLeft("Begins") then
					DBM.StartStatusBarTimer(60, "Begins", nil, true);
				end
				DBM.UpdateStatusBarTimer("Begins", 30, 60);
			elseif (arg1 == DBM_BGMOD_LANG["ARENA_BEGIN15"]) then
				if not DBM.GetStatusBarTimerTimeLeft("Begins") then
					DBM.StartStatusBarTimer(60, "Begins", nil, true);
				end
				DBM.UpdateStatusBarTimer("Begins", 45, 60);
			end

			-- Resets Timers when BGMatch Ends (Note that this is different than Leaving BG)
			if string.find(arg1, DBM_BGMOD_LANG["WINS"]) then
				DBM.EndStatusBarTimer("Flag respawn", true);
				for index, value in ipairs(DBM_BGMOD_LANG.AB_TARGETS) do
					DBM.EndStatusBarTimer("Horde: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
					DBM.EndStatusBarTimer("Alliance: "..DBM.Capitalize(DBM_BGMOD_EN_TARGET_AB[index]), true);
				end
				for index, value in ipairs(DBM_BGMOD_EN_TARGET_AV) do
					DBM.EndStatusBarTimer("Horde: "..DBM_BGMOD_EN_TARGET_AV[index], true);
					DBM.EndStatusBarTimer("Alliance: "..DBM_BGMOD_EN_TARGET_AV[index], true);
				end
				DBM.UnSchedule("DBM.AddOns.Battlegrounds.OnEvent", "GetNewABTimes");
			end

		-- Reset Timers when leaving BG
		elseif (event == "PLAYER_ENTERING_WORLD") then
			for index, value in pairs(DBM.StatusBarData) do
				if value.bossModID == "Battlegrounds" then
					DBM.EndRepeatingStatusBarTimer(index, true);
				end
			end
			DBM.UnSchedule("DBM.AddOns.Battlegrounds.OnEvent");
		end
	end, 	
	["ClassColors"] = {
		[DBM_HUNTER] = { r = 0.67, g = 0.83, b = 0.45 },
		[DBM_WARLOCK] = { r = 0.58, g = 0.51, b = 0.79 },
		[DBM_PRIEST] = { r = 1.0, g = 1.0, b = 1.0 },
		[DBM_PALADIN] = { r = 0.96, g = 0.55, b = 0.73 },
		[DBM_MAGE] = { r = 0.41, g = 0.8, b = 0.94 },
		[DBM_ROGUE] = { r = 1.0, g = 0.96, b = 0.41 },
		[DBM_DRUID] = { r = 1.0, g = 0.49, b = 0.04 },
		[DBM_SHAMAN] = { r = 0.96, g = 0.55, b = 0.73 },
		[DBM_WARRIOR] = { r = 0.78, g = 0.61, b = 0.43 }
	},
};

 


--[[hooksecurefunc("WorldStateScoreFrame_Update", function()
	if not DBM.AddOns.Battlegrounds.Options.ColorByClass then
		return;
	end
	
	local isArena = IsActiveBattlefieldArena();
	local i = 1;
	while getglobal("WorldStateScoreButton"..i.."NameButtonName") do
		local index = (FauxScrollFrame_GetOffset(WorldStateScoreScrollFrame) or 0) + i;
		
		local name, _, _, _, _, faction, _, _, class = GetBattlefieldScore(index);
		if (name ~= UnitName("player")) and class and DBM.AddOns.Battlegrounds.ClassColors[class] then
			getglobal("WorldStateScoreButton"..i.."NameButtonName"):SetTextColor(DBM.AddOns.Battlegrounds.ClassColors[class].r, DBM.AddOns.Battlegrounds.ClassColors[class].g, DBM.AddOns.Battlegrounds.ClassColors[class].b);
			local playerName = getglobal("WorldStateScoreButton"..i.."NameButtonName"):GetText();
			if playerName then
				local _, _, playerName, playerServer = string.find(playerName, "([^%-]+)%-(.+)");
				if playerServer and playerName then
					if faction == 0 then
						if isArena then
							getglobal("WorldStateScoreButton"..i.."NameButtonName"):SetText(playerName.."|cffffffff-|r|cff19ff19"..playerServer.."|r");
						else
							getglobal("WorldStateScoreButton"..i.."NameButtonName"):SetText(playerName.."|cffffffff-|r|cffff1919"..playerServer.."|r");
						end
					else
						if isArena then
							getglobal("WorldStateScoreButton"..i.."NameButtonName"):SetText(playerName.."|cffffffff-|r|cffffd100"..playerServer.."|r");
						else
							getglobal("WorldStateScoreButton"..i.."NameButtonName"):SetText(playerName.."|cffffffff-|r|cff00adf0"..playerServer.."|r");
						end
					end
				end
			end
		end
		i = i + 1;
	end
end);]]