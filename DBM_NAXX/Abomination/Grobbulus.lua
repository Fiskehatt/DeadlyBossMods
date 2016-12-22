--
--  Grobbulus - v1.2 by Tandanu
--  v1.3 Updated by Nitram - Fixed Promoted Bug - Added TimerBar for Injection
--

DBM.AddOns.Grobbulus = {
	["Name"] = DBM_GROBB_NAME,
	["Abbreviation1"] = "grob",
	["Abbreviation2"] = "grobb",
	["Version"] = "1.3",
	["Author"] = "Tandanu + Nitram",
	["Description"] = DBM_GROBB_DESCRIPTION,
	["Instance"] = DBM_NAXX,
	["GUITab"] = DBMGUI_TAB_NAXX,
	["Sort"] = 42,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
		["SetIcon"] = true,
	},
	["UsedIcons"] = {
		[8]	= false,
		[7]	= false,
		[6]	= false,
		[5]	= false,
		[4]	= false,
		[3]	= false,
		[2]	= false,
		[1]	= false,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Grobbulus.Options.Whisper",
			["text"] = DBM_GROBB_SEND_WHISPER,
			["func"] = function() DBM.AddOns.Grobbulus.Options.Whisper = not DBM.AddOns.Grobbulus.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Grobbulus.Options.SetIcon",
			["text"] = DBM_GROBB_SET_ICON,
			["func"] = function() DBM.AddOns.Grobbulus.Options.SetIcon = not DBM.AddOns.Grobbulus.Options.SetIcon; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_SELF"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.Schedule(240 - delay, "DBM.AddOns.Grobbulus.OnEvent", "EnrageWarning", 120);
		DBM.Schedule(300 - delay, "DBM.AddOns.Grobbulus.OnEvent", "EnrageWarning", 60);
		DBM.Schedule(330 - delay, "DBM.AddOns.Grobbulus.OnEvent", "EnrageWarning", 30);
		DBM.StartStatusBarTimer(600 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
	end,
	["OnCombatEnd"] = function()
		if( DBM.AddOns.Grobbulus.Options.SetIcon ) then
			DBM.CleanUp();
		end
		DBM.UnSchedule("DBM.AddOns.Grobbulus.OnEvent", "EnrageWarning");
	end,
	["OnEvent"] = function(event, arg1) 
		if (event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE") 
		or (event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE") 
		or (event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE") then

			local Name, Type;
			_, _, Name, Type = string.find(arg1, DBM_GROBB_INJECTION_REGEXP);
			if (Name == DBM_YOU) and (Type == DBM_ARE) then
				Name = UnitName("player");
			end
			if Name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == Name then
						targetID = i;
					end
				end
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Grobbulus.Options.SetIcon and DBM.AddOns.Grobbulus.Options.Announce then
					local iconToUse;
					for index, value in pairs(DBM.AddOns.Grobbulus.UsedIcons) do
						if value == false then
							iconToUse = index;
						end
					end
					if (not GetRaidTargetIndex("raid"..targetID)) or (not DBM.AddOns.Grobbulus.UsedIcons[GetRaidTargetIndex("raid"..targetID)] == Name) then
						if UnitExists("raid"..targetID) and iconToUse and iconToUse <= 8 and iconToUse >= 1 then
							SetRaidTargetIcon("raid"..targetID, iconToUse);
							DBM.AddOns.Grobbulus.UsedIcons[iconToUse] = Name;
							DBM.Schedule(10, "DBM.AddOns.Grobbulus.OnEvent", "ClearIcon"..Name, iconToUse);
						end
					end
				end

				if DBM.AddOns.Grobbulus.Options.Whisper and Name ~= UnitName("player") then
					DBM.SendHiddenWhisper(DBM_GROBB_YOU_ARE_INJECTED, Name);
				end
				if Name == UnitName("player") then
					DBM.AddSpecialWarning(DBM_GROBB_INJECTED, true, true);
				end
				DBM.Announce(string.format(DBM_GROBB_INJECTED_WARNING, Name));
				DBM.StartStatusBarTimer(10, "Injection: "..Name, "Interface\\Icons\\Spell_Shadow_CallofBone");
			end

		elseif string.sub(event, 1, 9) == "ClearIcon" and arg1 then
			local player = string.sub(event, 10);
			if player then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == player then
						targetID = i;
						break;
					end
				end
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Grobbulus.Options.SetIcon and DBM.AddOns.Grobbulus.Options.Announce then
					if GetRaidTargetIndex("raid"..targetID) == arg1 then
						SetRaidTargetIcon("raid"..targetID, 0)
						DBM.AddOns.Grobbulus.UsedIcons[arg1] = false;
					end
				end
			end

		elseif ((event == "CHAT_MSG_SPELL_AURA_GONE_OTHER") or (event == "CHAT_MSG_SPELL_AURA_GONE_SELF")) and arg1 then
			local Name;
			_, _, Name = string.find(arg1, DBM_GROBB_INJECTION_FADES_REGEXP);
			if Name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == Name then
						targetID = i;
						break;
					end
				end	
				if targetID and DBM.Rank >= 1 then
					if DBM.AddOns.Grobbulus.Options.SetIcon and GetRaidTargetIndex("raid"..targetID) then
						DBM.AddOns.Grobbulus.UsedIcons[GetRaidTargetIndex("raid"..targetID)] = false;
						DBM.UnSchedule("DBM.AddOns.Grobbulus.OnEvent", "ClearIcon"..UnitName("raid"..targetID), GetRaidTargetIndex("raid"..targetID));
						SetRaidTargetIcon("raid"..targetID, 0);						
					end
				end	
			end

		elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"
		    and string.find(arg1, DBM_GROBB_CLOUD_POISON) ) then

			DBM.StartStatusBarTimer(15, "Poison Cloud", "Interface\\Icons\\Spell_Nature_AbolishMagic");	
			
		elseif (event == "EnrageWarning") then
			if arg1 == 120 then
				DBM.Announce(string.format(DBM_GLUTH_ENRAGE_ANNOUNCE, 2, DBM_MINUTE));
			elseif arg1 == 60 then
				DBM.Announce(string.format(DBM_GLUTH_ENRAGE_ANNOUNCE, 1, DBM_MINUTE));
			elseif arg1 == 30 then
				DBM.Announce(string.format(DBM_GLUTH_ENRAGE_ANNOUNCE, 30, DBM_SECONDS));
			end
		end
	end,
};
