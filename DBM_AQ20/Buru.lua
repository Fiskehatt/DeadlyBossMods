-- 
-- Buru the Gorger Beta v1.0
--

DBM.AddOns.Buru = { 
	["Name"] = DBM_BURU_NAME,
	["Abbreviation1"] = "Buru", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_BURU_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
		["SetIcon"] = false,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Buru.Options.Whisper",
			["text"] = DBM_BURU_WHISPER_INFO,
			["func"] = function() DBM.AddOns.Buru.Options.Whisper = not DBM.AddOns.Buru.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Buru.Options.SetIcon",
			["text"] = DBM_BURU_SETICON_INFO,
			["func"] = function() DBM.AddOns.Buru.Options.SetIcon = not DBM.AddOns.Buru.Options.SetIcon; end,
		},
	},
	["Sort"] = 14,
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
	},	
	["OnEvent"] = function(event, arg1) 

			local _, _, sArg1 = string.find(arg1, DBM_BURU_EYE_EXPR);
			if ( sArg1 ) then
				
				if ( sArg1 == UnitName("player") ) then
					sArg1 = UnitName("player");
					DBM.AddSpecialWarning(DBM_BURU_EYE_SELFWARNING, true, true);
				end
				
				if DBM.AddOns.Buru.Options.Whisper and sArg1 ~= UnitName("player") then
					DBM.SendHiddenWhisper(DBM_BURU_WHISPER_TEXT, sArg1);
				end

				if DBM.AddOns.Buru.Options.SetIcon then
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

				DBM.Announce( string.format(DBM_BURU_EYE_ANNOUNCE, sArg1) );
			end
	end,		
};
