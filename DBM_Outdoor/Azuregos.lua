-- 
-- Azuregos (Azshara Dragon) beta v0.1
--

DBM.AddOns.Azuregos = { 
	["Name"] = DBM_AZUREGOS_NAME,
	["Abbreviation1"] = "Azu", 
	["Version"] = "0.1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_AZUREGOS_INFO,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 4,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},	
	["OnEvent"] = function(event, arg1)
		if( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and arg1 == DBM_AZUREGOS_SHIELDUP_EXPR ) then
			DBM.Announce(DBM_AZUREGOS_SHIELDUP_ANNOUNCE);

		elseif( event == "CHAT_MSG_SPELL_AURA_GONE_OTHER" and arg1 == DBM_AZUREGOS_SHIELDDOWN_EXPR ) then
			DBM.Announce(DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE);

		elseif( event == "CHAT_MSG_MONSTER_YELL" and arg1 == DBM_AZUREGOS_PORT_EXPR ) then
			DBM.Announce(DBM_AZUREGOS_PORT_ANNOUNCE);
			
		end
	end,
};
