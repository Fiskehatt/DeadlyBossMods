--
--	TwinEmps by Tandanu v1.0
--	modified by Nitram to v1.1 with bug explode
--

DBM.AddOns.TwinEmps = {
	["Name"] = DBM_TWINEMPS_NAME,
	["Abbreviation1"] = "twins",
	["Abbreviation2"] = "twinemp",
	["Abbreviation3"] = "twin",
	["Version"] = "1.1",
	["Author"] = "Tandanu",
	["Description"] = DBM_TWINEMPS_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 6,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["BugExplode"] = true,
	},
	["InCombat"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.TwinEmps.Options.BugExplode",
			["text"] = DBM_TWINEMPS_BUG_EXPLOE,
			["func"] = function() DBM.AddOns.TwinEmps.Options.BugExplode = not DBM.AddOns.TwinEmps.Options.BugExplode; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.Schedule(300 - delay, "DBM.AddOns.TwinEmps.OnEvent", "EnrageWarning", 10)
		DBM.Schedule(600 - delay, "DBM.AddOns.TwinEmps.OnEvent", "EnrageWarning", 5)
		DBM.Schedule(840 - delay, "DBM.AddOns.TwinEmps.OnEvent", "EnrageWarning", 1)
		DBM.Schedule(870 - delay, "DBM.AddOns.TwinEmps.OnEvent", "EnrageWarning", 0.5)
		DBM.StartStatusBarTimer(900 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
		
		DBM.StartStatusBarTimer(30 - delay, "Teleport", "Interface\\Icons\\Spell_Arcane_Blink");
		DBM.Schedule(20 - delay, "DBM.AddOns.TwinEmps.OnEvent", "TeleportWarning", 10);
		DBM.Schedule(25 - delay, "DBM.AddOns.TwinEmps.OnEvent", "TeleportWarning", 5);
	end,
	["OnEvent"] = function(event, arg1)	
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and string.find(arg1, DBM_TWINEMPS_EXPLODE_EXPR) ) then
			if DBM.AddOns.TwinEmps.Options.BugExplode then
				DBM.AddSpecialWarning(DBM_TWINEMPS_EXPLODE_ANNOUNCE);
			end
		elseif event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" then -- mob casts a spell
			if (string.find(arg1, DBM_TWINEMPS_CAST_SPELL_1)) then
				DBM.Announce(DBM_TWINEMPS_TELEPORT_ANNOUNCE);
				DBM.EndStatusBarTimer("Teleport");
				DBM.StartStatusBarTimer(30, "Teleport", "Interface\\Icons\\Spell_Arcane_Blink");
				DBM.Schedule(20, "DBM.AddOns.TwinEmps.OnEvent", "TeleportWarning", 10);
				DBM.Schedule(25, "DBM.AddOns.TwinEmps.OnEvent", "TeleportWarning", 5);
			end
		elseif event == "TeleportWarning" then
			if arg1 then
				DBM.Announce(string.format(DBM_TWINEMPS_TELEPORT_WARNING, arg1));
			end
		elseif event == "EnrageWarning" then
			if arg1 and arg1 >= 1 then
				DBM.Announce(string.format(DBM_TWINEMPS_ENRAGE_WARNING, arg1, DBM_MIN));
			elseif arg1 == 0.5 then
				DBM.Announce(string.format(DBM_TWINEMPS_ENRAGE_WARNING, 30, DBM_SEC));
			end
		end
	end,
};
