DBM.AddOns.Fankriss = {
	["Name"] = DBM_FANKRISS_NAME,
	["Abbreviation1"] = "FANKRISS",
	["Version"] = "1.5",
	["Author"] = "Tandanu",
	["Description"] = DBM_FANKRISS_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 4,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},	
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
	},	

	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF") then
			if arg1 == DBM_FANKRISS_WORM_SPAWNED then
				DBM.Announce(DBM_FANKRISS_SPAWN_WARNING);
			end
		end
	end,
};
