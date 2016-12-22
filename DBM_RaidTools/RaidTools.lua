----------------------------------------------------
-- Deadly RaidTools - A Raid Support Mod for DBM     --
----------------------------------------------------
-- (c) by Nitram <La Vendetta> from DE-Azshara    --
----------------------------------------------------
--
--  v0.1
-- Fist Release
-- Added Slashcommand "/drt logout <name>"
-- Added Slashcommand "/drt pull <x>" aka "/pull <x>" x = sec
-- Added Slashcommand "/drt ui" 
--
--  v0.2
-- Added Slashcommand "/drt ver" 
-- Added Slashcommand "/drt enable <AddOn> <Player>"
-- Added Slashcommand "/drt disable <AddOn> <Player>"
-- Added Slashcommand "/drt announce <AddOn> <Player> <on|off>"
-- Added Slashcommand "/drt bosslist"
-- Added Slashcommand "/drt remote <on|off>"
-- Added Slashcommand "/drt emote <emote> [target]"
--
--  v0.3
-- Updated Slashcommand "/DRT remote <option> <on|off>"
-- Added CT RaidAssist Support (if CTRA iss not loaded)
--
--  v0.4
-- Added Slashcommand "/DRT invite <level>" for mass Guild Invite (simple version... add more options soon)
-- Added XML Frame to show Raid Durability
-- Added Slashcommand "/DRT dura" for Raid Durability Check
--
--
--
--
-- IsPromoted(name)			// Returns the Rank of an Player by Name
-- IsRaidMember(name)			// Returns true if a Player is in the RaidGroup
-- RaidUnitByName(name)			// Returns the UnitID (raidXX) from a name
-- RaidMsg(msg)				// Sends a Chat Message to "RAID"
-- Msg(msg)				// Prints out a local Message in DefaultChatFrame
--
--

DM_RaidTools = {}
DM_RaidTools["Version"]		= "0.4";
DM_RaidTools["CTMessageDone"] 	= false;

DRT_Dura_Table = {} 			-- Table which contains durability responses
DRT_Dura_SortBy = 3; -- 1 --> Name ASC
					  -- 2 --> Name DESC
					  -- 3 --> Durability DESC
					  -- 4 --> Durability ASC

function DM_RaidTools:OnLoad()
	this:RegisterEvent("CHAT_MSG_ADDON");
	this:RegisterEvent("VARIABLES_LOADED");

	SLASH_DRT1 = "/drt";
	SLASH_DRT2 = "/lvrt";
	SlashCmdList["DRT"] = function(msg) self:Slash_Handler(msg); end;

	SLASH_DRT_PULL1 = "/pull";
	SlashCmdList["DRT_PULL"] = function(msg) self:Announce_Pull(msg); end;

end


function DM_RaidTools:OnEvent()
	if (event == "VARIABLES_LOADED") then
		if type(DRT_Save) ~= "table" then 	DRT_Save = {} 	end
		if not DRT_Save["Remote"] then		DRT_Save["Remote"] = true; 	end
		if not DRT_Save["Emote"] then		DRT_Save["Emote"] = true; 	end
		if not DRT_Save["Logout"] then		DRT_Save["Logout"] = true;	end
		if not DRT_Save["Ctmod"] then		DRT_Save["Ctmod"] = true;	end


	elseif (event == "CHAT_MSG_ADDON") then
		if (DRT_Save.Logout and arg1 == "LVBM RT LOGOUT" and arg2 == UnitName("player") and self:IsPromoted(arg4) >= 1) then
			self:RaidMsg( string.format(DRT_SENDLOGOUT_RAID_NOTICE, arg4) );
			Logout();		-- Shows the default "Logout" Dialog (with cancel Option)

		elseif (arg1 == "LVBM RT VER") then
			DBM.SendHiddenWhisper(string.format(DRT_VERSION_WHISPER, DM_RaidTools["Version"]), arg4);

		elseif (DRT_Save.Remote and arg1 == "LVBM RT ENABLEADDON" and arg2 and self:IsPromoted(arg4) >= 1) then
			local _, _, xArg1, xArg2 = string.find(arg2, "(.*) ### (.*)");
			if xArg1 and (xArg2 == UnitName("player") or xArg2 == "All") then
				if( DBM.AddOns[xArg1] and DBM.AddOns[xArg1].Options.Enabled ~= nil ) then
					DBM.AddOns[xArg1].Options.Enabled = true;
					DBM.AddMsg(DBM_MOD_ENABLED, string.format('%q', DBM.AddOns[xArg1].Name));
				end
			end

		elseif (DRT_Save.Remote and arg1 == "LVBM RT DISABLEADDON" and arg2 and self:IsPromoted(arg4) >= 1) then
			local _, _, xArg1, xArg2 = string.find(arg2, "(.*) ### (.*)");
			if xArg1 and (xArg2 == UnitName("player") or xArg2 == "All") then
				if( DBM.AddOns[xArg1] and DBM.AddOns[xArg1].Options.Enabled ~= nil ) then
					DBM.AddOns[xArg1].Options.Enabled = false;
					DBM.AddMsg(DBM_MOD_DISABLED, string.format('%q', DBM.AddOns[xArg1].Name));
				end
			end

		elseif (DRT_Save.Remote and arg1 == "LVBM RT ANNOUNCEON" and arg2 and self:IsPromoted(arg4) >= 1) then
			local _, _, xArg1, xArg2 = string.find(arg2, "(.*) ### (.*)");
			if xArg1 and (xArg2 == UnitName("player") or xArg2 == "All") then
				if( DBM.AddOns[xArg1] and DBM.AddOns[xArg1].Options.Announce ~= nil ) then
					DBM.AddOns[xArg1].Options.Announce = true;
					DBM.AddMsg(DBM_ANNOUNCE_ENABLED, string.format('%q', DBM.AddOns[xArg1].Name));
				end
			end

		elseif (DRT_Save.Remote and arg1 == "LVBM RT ANNOUNCEOFF" and arg2 and self:IsPromoted(arg4) >= 1) then
			local _, _, xArg1, xArg2 = string.find(arg2, "(.*) ### (.*)");
			if xArg1 and (xArg2 == UnitName("player") or xArg2 == "All") then
				if( DBM.AddOns[xArg1] and DBM.AddOns[xArg1].Options.Announce ~= nil ) then
					DBM.AddOns[xArg1].Options.Announce = false;
					DBM.AddMsg(DBM_ANNOUNCE_DISABLED, string.format('%q', DBM.AddOns[xArg1].Name));
				end
			end

		elseif (DRT_Save.Emote and arg1 == "LVBM RT EMOTE" and arg2 and self:IsPromoted(arg4) >= 1) then
			if string.find(arg2, " ") then
				local _, _, xArg1, xArg2 = string.find(arg2, "(.*) (.*)");
				if xArg2 ~= UnitName("player") then
					DoEmote(xArg1, xArg2);
				end
			elseif (arg2 ~= "") then
				DoEmote(arg2);
			else
				return;
			end
			self:Msg( string.format(DRT_EMOTE_RECIVE, arg4) );
		elseif (arg1 == "CTRA") then	
			-- We answer to some CT functions if CTRA isn't loaded
			if DRT_Save.Ctmod and arg2 == "DURC" and not IsAddOnLoaded("CT_RaidAssist") and not IsAddOnLoaded("oRA2") and arg3 == "RAID" then
				local currDur, maxDur, brokenItems = self:Durability();
				if currDur and maxDur and brokenItems then
					SendAddonMessage("CTRA", "DUR "..currDur.." "..maxDur.." "..brokenItems.." "..arg4, arg3);
				end
			elseif arg2 and string.sub(arg2, 0, 3) == "DUR" then
				local _, _, currDur, maxDur, broken = string.find(arg2, "DUR (%d+) (%d+) (%d+)");
				if tonumber(currDur) and tonumber(maxDur) and tonumber(broken) and tonumber(maxDur) > 0 then
					local upddone = false;
					for index, value in pairs(DRT_Dura_Table) do
						if value.Name == arg4 then
							upddone = true;
							value.Dura = math.floor((tonumber(currDur)/tonumber(maxDur))*100).."%";
							value.Broken = tonumber(broken);
							break;
						end
					end
					if not upddone then
						local _, _, _, _, _, fileName = GetRaidRosterInfo(self:RaidUnitByName(arg4, true));
						table.insert(DRT_Dura_Table, {
							["Name"]	= arg4,
							["FileName"]	= fileName,
							["Dura"]	= math.floor((tonumber(currDur)/tonumber(maxDur))*100).."%",
							["Broken"]	= tonumber(broken),
						});
					end
					if DBM_DurabilityFrame:IsShown() then
						DRT_Durability_Sort();
						DRT_Durability_Update();
					end
				end
			end
		end
	end
end

function DM_RaidTools:Msg(msg)
	DBM.AddMsg(msg, "Deadly RaidTools");
end

function DM_RaidTools:RaidMsg(msg)
	if (DBM.InRaid) then
		SendChatMessage(msg, "RAID");
	end
end

function DM_RaidTools:IsPromoted(name)
	if (DBM.InRaid and DBM.Raid[name]) then	return DBM.Raid[name];
	else						return 0;
	end
end

function DM_RaidTools:IsRaidMember(name)
	if (DBM.InRaid and DBM.Raid[name]) then	return true;
	else						return false;
	end
end

function DM_RaidTools:RaidUnitByName(name, unitID)
	for i=1, GetNumRaidMembers(), 1 do
		if UnitName("raid"..i) == name then
			if unitID then
				return i;
			else
				return "raid"..i;
			end
		end
	end
	return nil;
end

-- Functions
function DM_RaidTools:Slash_Handler(msg)
	local _, xEnd = string.find(msg, " ");
	local xCommand = string.lower(string.sub(msg, 0, (xEnd or 0)-1));
	local xParams = string.sub(msg, (xEnd or 0)+1);

	if (xCommand == "logout") then
		if (not self:IsRaidMember(DBM.Capitalize(xParams, true))) then self:Msg(DRT_SENDLOGOUT_NEED_NAME); return; end
		SendAddonMessage("LVBM RT LOGOUT", DBM.Capitalize(xParams, true), "RAID");
		self:Msg( string.format(DRT_SENDLOGOUT, xParams) );

	elseif (xCommand == "pull") then
		xParams = tonumber(xParams);
		
		if DBM.Rank >= 1 then
			if (xParams) then 	self:Announce_Pull(xParams); 
			else			self:Msg(DRT_PULLCOMMAND_FAILED);
			end
		else
			self:Msg(DRT_INVITE_NOPERMISSION);
		end
	elseif (xCommand == "spamblock") then --fix me :<
		local _, _, xArg1, xArg2 = string.find(xParams, "(%w+) (%w+)");
		if not xArg1 or not xArg2 then
			if DBM.Options.SpamBlock.RaidChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.CTRaidFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.Battleground then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_DISABLED_RED));
			end
			return;
		end
		xArg1, xArg2 = string.lower(xArg1), string.lower(xArg2);
		
		if xArg2 ~= "on" and xArg2 ~= "off" then
			if DBM.Options.SpamBlock.RaidChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.CTRaidFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.Battleground then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_DISABLED_RED));
			end
			return;
		end
		
		if xArg1 == "raid" then
			if xArg2 == "on" then
				DBM.Options.SpamBlock.RaidChat = true;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Chat", DBM_ENABLED_GREEN));
			else
				DBM.Options.SpamBlock.RaidChat = false;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Chat", DBM_DISABLED_RED));
			end
		elseif xArg1 == "raidwarning" then
			if xArg2 == "on" then
				DBM.Options.SpamBlock.RaidWarningChat = true;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Warning Chat", DBM_ENABLED_GREEN));
			else
				DBM.Options.SpamBlock.RaidWarningChat = false;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Warning Chat", DBM_DISABLED_RED));
			end
		elseif xArg1 == "raidwarningframe" then
			if xArg2 == "on" then
				DBM.Options.SpamBlock.RaidWarningFrame = true;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Warning Frame", DBM_ENABLED_GREEN));
			else
				DBM.Options.SpamBlock.RaidWarningFrame = false;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Raid Warning Frame", DBM_DISABLED_RED));
			end
		elseif xArg1 == "ctraid" then
			if xArg2 == "on" then
				DBM.Options.SpamBlock.CTRaidFrame = true;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "CT Raid", DBM_ENABLED_GREEN));
			else
				DBM.Options.SpamBlock.CTRaidFrame = false;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "CT Raid", DBM_DISABLED_RED));
			end
		elseif xArg1 == "battleground" then
			if xArg2 == "on" then
				DBM.Options.SpamBlock.Battleground = true;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Battleground", DBM_ENABLED_GREEN));
			else
				DBM.Options.SpamBlock.Battleground = false;
				self:Msg(string.format(DRT_SPAMBLOCK_OPTION_SET, "Battleground", DBM_DISABLED_RED));
			end
		else
			if DBM.Options.SpamBlock.RaidChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[1], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningChat then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[2], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.RaidWarningFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[3], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.CTRaidFrame then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[4], DBM_DISABLED_RED));
			end
			if DBM.Options.SpamBlock.Battleground then
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_ENABLED_GREEN));
			else
				self:Msg(string.format(DRT_SPAMBLOCK_SLASHHELP[5], DBM_DISABLED_RED));
			end
			return;
		end
	elseif (xCommand == "enable" or xCommand == "disable") then
		local _, _, xArg1, xArg2 = string.find(xParams, "(.*) (.*)");
		xArg2 = DBM.Capitalize(xArg2, true);
		if DBM.Rank == 0 then
			self:Msg(DRT_INVITE_NOPERMISSION);
			return;
		end
		
		if xArg1 and xArg2 then
			if xCommand == "enable" then
				self:Msg( string.format(DRT_ENABLEADDON_MESSAGE, xArg2) );
				SendAddonMessage("LVBM RT ENABLEADDON", xArg1.." ### "..xArg2, "RAID");
			elseif xCommand == "disable" then
				self:Msg( string.format(DRT_DISANABLEADDON_MESSAGE, xArg2) );		
				SendAddonMessage("LVBM RT DISABLEADDON", xArg1.." ### "..xArg2, "RAID");
			end
		else 
			self:Msg( DRT_COMMAND_FAILD );
		end

	elseif (xCommand == "announce") then
		local _, _, xArg1, xArg2, xArg3 = string.find(xParams, "(.*) (.*) (.*)");
		if not xArg1 or not xArg2 or not xArg3 then
			self:Msg( DRT_SLASHHELP[8] );
			return;
		end
		xArg2 = DBM.Capitalize(xArg2, true);
		if DBM.Rank == 0 then
			self:Msg(DRT_INVITE_NOPERMISSION);
			return;
		end
		xArg3 = string.lower(xArg3);
		if xArg1 and xArg2 and (xArg3 == "on" or xArg3 == "off") then
			if xArg3 == "on" then
				self:Msg( string.format(DRT_ANNOUNCEON_MESSAGE, xArg2) );
				SendAddonMessage("LVBM RT ANNOUNCEON", xArg1.." ### "..xArg2, "RAID");
			elseif xArg3 == "off" then
				self:Msg( string.format(DRT_ANNOUNCEOFF_MESSAGE, xArg2) );		
				SendAddonMessage("LVBM RT ANNOUNCEOFF", xArg1.." ### "..xArg2, "RAID");
			end
		else 
			self:Msg( DRT_SLASHHELP[8] );
		end

	elseif (xCommand == "bosslist") then
		for index, value in pairs(DBM.AddOns) do
			self:Msg(index);
		end

	elseif (xCommand == "emote") then
	
		if DBM.Rank == 0 then
			self:Msg(DRT_INVITE_NOPERMISSION);
			return;
		end
	
		self:Msg( string.format(DRT_EMOTE_MESSAGE, xParams) );
		SendAddonMessage("LVBM RT EMOTE", xParams, "RAID");

	elseif (xCommand == "remote") then
		local _, _, xArg1, xArg2 = string.find(xParams, "(.*) (.*)");

		if xArg1 and xArg2 and ( string.lower(xArg2) == "on" or string.lower(xArg2) == "off" ) then
			if DRT_Save[DBM.Capitalize(xArg1, true)] ~= nil then
				if xArg2 == "on" then
					DRT_Save[DBM.Capitalize(xArg1, true)] = true;
					self:Msg( string.format(DRT_REMOTE_ON, xArg1) );
				else
					DRT_Save[DBM.Capitalize(xArg1, true)] = false;
					self:Msg( string.format(DRT_REMOTE_OFF, xArg1) );
				end
			else
				for index, value in pairs(DRT_Save) do
					if value then
						self:Msg( string.format(DRT_REMOTE_INFO_ON, index) );
					else
						self:Msg( string.format(DRT_REMOTE_INFO_OFF, index) );
					end
				end
			end
		else 
			for index, value in pairs(DRT_Save) do
				if value then
					self:Msg( string.format(DRT_REMOTE_INFO_ON, index) );
				else
					self:Msg( string.format(DRT_REMOTE_INFO_OFF, index) );
				end
			end
		end
	
	elseif (xCommand == "invite") then
		xParams = tonumber(xParams);
		if( xParams ~= nil ) then
			if not GetGuildInfo("player") then
				self:Msg(DRT_INVITE_NOGUILD);
				return;
			end
			if DBM.InRaid and DBM.Rank < 1 then
				self:Msg(DRT_INVITE_NOPERMISSION);
				return;
			end
			SendChatMessage(DRT_INVITE_GUILD_MESSAGE, "GUILD");
			GuildRoster();
			DBM.Schedule(10, "DM_RaidTools:Raid_Invite", xParams);
		else
			self:Msg(DRT_INVITE_SYNTAX);
		end

	elseif (xCommand == "dur") or (xCommand == "dura") then
		if DBM.Rank == 0 then
			self:Msg(DRT_INVITE_NOPERMISSION);
			return;
		end
		
		DRT_Dura_Table = {};
		SendAddonMessage("CTRA", "DURC", "RAID");
		DBM_DurabilityFrame:Show();

	elseif (xCommand == "ver") then
		self:Msg( DRT_VERSION_MESSAGE );
		SendAddonMessage("LVBM RT VER", "-nil-", "RAID");

	elseif (xCommand == "ui") then
		ReloadUI();

	else
		for index, value in pairs(DRT_SLASHHELP) do self:Msg(value); end
	end
end

function DM_RaidTools:Raid_Invite(xArg1)
	GuildRoster();
	SetGuildRosterShowOffline(true);
	CloseGuildRoster();

	for i=1, GetNumGuildMembers(true) do
		local name, _, _, level, class, zone, _, _, online = GetGuildRosterInfo(i);
		if not self:IsRaidMember(name) and online and name ~= UnitName("player") and level == xArg1 then
			InviteUnit(name);
		elseif xArg1 == 0 then
			InviteUnit(name);
		end

	end
end

function DM_RaidTools:Announce_Pull(msg, announce)
	if( msg == nil and type(announce) == "number" ) then
		DBM.Announce(string.format(DRT_PULLCOMMAND_PREWARN, announce));
	elseif( msg == "pull" ) then
		DBM.Announce(DRT_PULLCOMMAND_ANNOUNCE);
		DBM.AddSpecialWarning(DRT_PULLCOMMAND_SELFWARN);
	else
		DBM.UnSchedule("DM_RaidTools:Announce_Pull");

		local time = tonumber(msg);
		if( time == nil or time > 30 ) then time = 15;	end

		for i=1, (time-1), 1 do
			DBM.Schedule(time-i, "DM_RaidTools:Announce_Pull", nil, i);
		end
		DBM.Schedule(time, "DM_RaidTools:Announce_Pull", "pull");
		DBM.StartStatusBarTimer(time, "Incoming Pull");
	end
end

function DM_RaidTools:Durability()
	local currDur, maxDur, brokenItems = 0, 0, 0;
	local itemIds = { 1, 2, 3, 5, 6, 7, 8, 9, 10, 16, 17, 18 };
	for k, v in pairs(itemIds) do
		DBMTooltip:ClearLines();
		DBMTooltip:SetInventoryItem("player", v);
		for i = 1, DBMTooltip:NumLines(), 1 do
			local useless, useless, sMin, sMax = string.find(getglobal("DBMTooltipTextLeft" .. i):GetText() or "", DRT_TOOLTIP_DURABILITY);
			if ( sMin and sMax ) then
				local iMin, iMax = tonumber(sMin), tonumber(sMax);
				if ( iMin == 0 ) then
					brokenItems = brokenItems + 1;
				end
				currDur = currDur + iMin;
				maxDur = maxDur + iMax;
				break;
			end
		end
	end
	return currDur, maxDur, brokenItems;
end




-- XML Functions
function DRT_Durability_Update()
	local numEntries = table.getn(DRT_Dura_Table);
	FauxScrollFrame_Update(DBM_DurabilityFrameScrollFrame, numEntries, 19, 20);

	for i = 1, 19, 1 do
		local button = getglobal("DBM_DurabilityFramePlayer" .. i);
		local index = i + FauxScrollFrame_GetOffset(DBM_DurabilityFrameScrollFrame);
		if ( index <= numEntries ) then
			if ( numEntries <= 19 ) then
				button:SetWidth(275);
			else
				button:SetWidth(253);
			end
			button:Show();
			getglobal(button:GetName() .. "Name"):SetText(DRT_Dura_Table[index]["Name"]);

			local color = RAID_CLASS_COLORS[string.upper(DRT_Dura_Table[index]["FileName"])];
			if ( color ) then
				getglobal(button:GetName() .. "Name"):SetTextColor(color.r, color.g, color.b);
			end
			if DRT_Dura_Table[index]["Broken"] > 0 then
				getglobal(button:GetName() .. "Info"):SetText(DRT_Dura_Table[index]["Dura"].." "..string.format(DRT_BROKEN_ITEMS, DRT_Dura_Table[index]["Broken"]));
			else
				getglobal(button:GetName() .. "Info"):SetText(DRT_Dura_Table[index]["Dura"]);
			end
		else
			button:Hide();
		end
	end

end

function DRT_Durability_Sort(sortBy)
	if type(sortBy) == "number" then
		DRT_Dura_SortBy = sortBy;
	end
	
	table.sort(DRT_Dura_Table, function(v1, v2)
		if v1.Dura and v2.Dura and v1.Name and v2.Name and v1.FileName and v2.FileName then
			local percent1 = string.gsub(v1.Dura, "%%", "");
			local percent2 = string.gsub(v2.Dura, "%%", "");
			percent1 = tonumber(percent1);
			percent2 = tonumber(percent2);
			
			if DRT_Dura_SortBy == 1 then
				return v1.FileName..v1.Name < v2.FileName..v2.Name;
			elseif DRT_Dura_SortBy == 2 then
				return v1.FileName..v1.Name > v2.FileName..v2.Name;
			elseif DRT_Dura_SortBy == 3 then
				return percent1 > percent2;
			elseif DRT_Dura_SortBy == 4 then
				return percent1 < percent2;
			end
		else
			return false;
		end
	end)
end

-- 1 --> Name ASC
-- 2 --> Name DESC
-- 3 --> Durability DESC
-- 4 --> Durability ASC


function DM_RaidTools:CheckForSpam(event, msg, author)
	if not DBM.Options.SpamBlock or not event or not msg then return false; end
	
	local spamExpression = "([%*]+) (.+) ([%*]+)";
	local BGspamExpression = "^%w+: %w+[%s%w]*%s+%-%s+%d+:%d%d$"
	if (event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER") and DBM.Options.SpamBlock.RaidChat and string.find(msg, spamExpression) then
		return true;
	elseif event == "CHAT_MSG_RAID_WARNING" and DBM.Options.SpamBlock.RaidWarningChat and string.find(msg, spamExpression) then
		return true;
	elseif event == "CHAT_MSG_CTRAID_WARNING" and DBM.Options.SpamBlock.CTRaidFrame and string.find(msg, spamExpression) then
		return true;
	elseif event == "CHAT_MSG_RAID_WARNING_FRAME" and DBM.Options.SpamBlock.RaidWarningFrame and string.find(msg, spamExpression) then
		return true;
	elseif (event == "CHAT_MSG_BATTLEGROUND" or event == "CHAT_MSG_BATTLEGROUND_LEADER") and author ~= UnitName("player") and DBM.Options.SpamBlock.Battleground and string.find(msg, BGspamExpression) then
		return true;
	else
		return false;
	end
end