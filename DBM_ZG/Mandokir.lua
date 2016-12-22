-- 
-- Broodlord Mandokir v1.0
--

DBM.AddOns.Mandokir = { 
	["Name"] = DBM_MANDOKIR_NAME,
	["Abbreviation1"] = "Mandokir", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MANDOKIR_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Wisper"] = false,
		["SetIcon"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Mandokir.Options.Whisper",
			["text"] = DBM_MANDOKIR_WHISPER_INFO,
			["func"] = function() DBM.AddOns.Mandokir.Options.Whisper = not DBM.AddOns.Mandokir.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Mandokir.Options.SetIcon",
			["text"] = DBM_MANDOKIR_SETICON_INFO,
			["func"] = function() DBM.AddOns.Mandokir.Options.SetIcon = not DBM.AddOns.Mandokir.Options.SetIcon; end,
		},
	},
	["Sort"] = 4,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" and string.find(arg1, DBM_MANDOKIR_WATCH_EXPR) ) then
			local _, _, sArg1 = string.find(arg1, DBM_MANDOKIR_WATCH_EXPR);
			if ( sArg1 ) then
				if ( sArg1 == UnitName("player") ) then
					DBM.AddSpecialWarning(DBM_MANDOKIR_SELFWARN);
					sArg1 = UnitName("player");

				else
					if DBM.AddOns.Mandokir.Options.Whisper then
						DBM.SendHiddenWhisper(DBM_MANDOKIR_WHISPER_TEXT, sArg1);
					end
				end

				if DBM.AddOns.Mandokir.Options.SetIcon then
					local targetID;
					for i = 1, GetNumRaidMembers() do
						if UnitName("raid"..i) == sArg1 then
							targetID = i;
							break;
						end
					end
					if targetID and DBM.Rank >= 1 then
						if GetRaidTargetIndex("raid"..targetID) ~= 8 then
							SetRaidTargetIcon("raid"..targetID, 8);
						end
					end	
				end
				DBM.Announce(string.format(DBM_MANDOKIR_WATCH_ANNOUNCE, sArg1));
			end
		end
	end,		
};
