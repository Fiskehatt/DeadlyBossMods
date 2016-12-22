-- 
-- High Priest Venoxis v1.0
--

DBM.AddOns.Venoxis = { 
	["Name"] = DBM_VENOXIS_NAME,
	["Abbreviation1"] = "Venoxis", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_VENOXIS_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 2,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and arg1 == DBM_VENOXIS_RENEW_EXPR ) then
			DBM.Announce(DBM_VENOXIS_RENEW_ANNOUNCE);

		elseif ( event == "CHAT_MSG_MONSTER_YELL" and arg1 == DBM_VENOXIS_TRANSFORM_EXPR ) then
			DBM.Announce(DBM_VENOXIS_TRANSFORM_ANNOUNCE);

		end
	end,		
};
