-- 
-- High Priestess Arlokk Beta v1.0
--

DBM.AddOns.Arlokk = { 
	["Name"] = DBM_ARLOKK_NAME,
	["Abbreviation1"] = "Arlokk", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_ARLOKK_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
	},
	["Sort"] = 6,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Arlokk.Options.Whisper",
			["text"] = DBM_ARLOKK_WHISPER_INFO,
			["func"] = function() DBM.AddOns.Arlokk.Options.Whisper = not DBM.AddOns.Arlokk.Options.Whisper; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" and string.find(arg1, DBM_ARLOKK_MARK_EXPR) ) then
			local _, _, sArg1 = string.find(arg1, DBM_ARLOKK_MARK_EXPR);
			if ( sArg1 ) then
				DBM.Announce(string.format(DBM_ARLOKK_MARK_ANNOUNCE, sArg1));
				if( DBM.AddOns.Arlokk.Options.Whisper and sArg1 ~= UnitName("player") ) then
					DBM.SendHiddenWhisper(DBM_ARLOKK_MARK_WHISPER, sArg1);
				end
			end
		end
	end,		
};
