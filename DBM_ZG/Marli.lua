-- 
-- High Priestess Mar'li v1.0
--

DBM.AddOns.Marli = { 
	["Name"] = DBM_MARLI_NAME,
	["Abbreviation1"] = "Marli", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MARLI_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 3,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" and string.find(arg1, DBM_MARLI_SPIDER_EXPR) ) then
			DBM.Announce(DBM_MARLI_SPIDER_ANNOUNCE);

		end
	end,		
};
