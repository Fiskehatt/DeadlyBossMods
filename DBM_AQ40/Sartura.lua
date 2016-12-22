DBM.AddOns.Sartura = {
	["Name"] = DBM_SARTURA_NAME,
	["Abbreviation1"] = "Sartura",
	["Version"] = "1.5",
	["Author"] = "Tandanu",
	["Description"] = DBM_SARTURA_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 3,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},	
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,		
	},
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(600 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
		DBM.Schedule(540 - delay, "DBM.AddOns.Sartura.OnEvent", "EnrageWarning");
	end,
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_MONSTER_EMOTE") then
			if (string.find(string.lower(arg1), string.lower(DBM_SARTURA_ENRAGE))) and (arg2 == DBM_SARTURA_SARTURA) then
				DBM.Announce(DBM_SARTURA_WARNING);
			end
		elseif (event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS") or (event == "CHAT_MSG_SPELL_AURA_GONE_OTHER") then
			if (arg1 == DBM_SARTURA_GAIN_WHIRLWIND) then
				DBM.Announce(DBM_SARTURA_ANNOUNCE_WHIRLWIND);
				DBM.StartStatusBarTimer(15, "Whirlwind", "Interface\\Icons\\Ability_Whirlwind");
			elseif (arg1 == DBM_SARTURA_WHIRLWIND_FADES) then		
				DBM.Announce(DBM_SARTURA_WHIRLWIND_FADED);				
			end
		elseif (event == "EnrageWarning") then
			DBM.Announce(string.format(DBM_TWINEMPS_ENRAGE_WARNING, 1, DBM_MINUTE)); --blah, need generic DBM_ENRAGE string...hmm...oO
		end
	end,
};
