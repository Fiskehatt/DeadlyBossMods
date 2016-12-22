-- 
-- Hakkar v1.1
--

DBM.AddOns.Hakkar = { 
	["Name"] = DBM_HAKKAR_NAME,
	["Abbreviation1"] = "Hakkar", 
	["Version"] = "1.1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_HAKKAR_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 8,
	["LastSuffer"] = 0,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_DAMAGE"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(600 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
		DBM.StartStatusBarTimer(90 - delay, "Life Drain", "Interface\\Icons\\Spell_Shadow_LifeDrain02");
		
		DBM.Schedule(30 - delay, "DBM.AddOns.Hakkar.OnEvent", "Warning60");
		DBM.Schedule(45 - delay, "DBM.AddOns.Hakkar.OnEvent", "Warning45");
		DBM.Schedule(75 - delay, "DBM.AddOns.Hakkar.OnEvent", "Warning15");
		
		DBM.Schedule(120 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 8);
		DBM.Schedule(300 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 5);
		DBM.Schedule(480 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 2);
		DBM.Schedule(540 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 1);
		DBM.Schedule(570 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 0.5);
		DBM.Schedule(585 - delay, "DBM.AddOns.Hakkar.OnEvent", "EnrageWarning", 0.25);
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.Hakkar.LastSuffer = 0;
		DBM.EndStatusBarTimer("Life Drain");
		DBM.UnSchedule("DBM.AddOns.Hakkar.OnEvent");
	end,
	["OnEvent"] = function(event, arg1)
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE" ) then
			local _, _, sArg1, sArg2 = string.find(arg1, DBM_HAKKAR_SUFFERLIFE_EXPR);
			if ( sArg1 and sArg2 and (GetTime() - DBM.AddOns.Hakkar.LastSuffer) > 10 ) then
				DBM.AddOns.Hakkar.LastSuffer = GetTime();

				DBM.Announce(DBM_HAKKAR_SUFFERLIFE_NOW);
		
				DBM.EndStatusBarTimer("Life Drain");
				DBM.StartStatusBarTimer(90, "Life Drain", "Interface\\Icons\\Spell_Shadow_LifeDrain02");

				DBM.Schedule(30, "DBM.AddOns.Hakkar.OnEvent", "Warning60");
				DBM.Schedule(45, "DBM.AddOns.Hakkar.OnEvent", "Warning45");
				DBM.Schedule(75, "DBM.AddOns.Hakkar.OnEvent", "Warning15");
			end

		elseif ( event == "Warning60" ) then
			DBM.Announce( string.format(DBM_HAKKAR_SUFFERLIFE_ANNOUNCE, 60) );
			
		elseif ( event == "Warning45" ) then
			DBM.Announce( string.format(DBM_HAKKAR_SUFFERLIFE_ANNOUNCE, 45) );

		elseif ( event == "Warning15" ) then
			DBM.Announce( string.format(DBM_HAKKAR_SUFFERLIFE_ANNOUNCE, 15) );
		
		elseif ( event == "EnrageWarning" and arg1 and type(arg1) == "number" ) then
			if arg1 >= 1 then
				DBM.Announce(string.format(DBM_HAKKAR_ENRAGE_WARNING, arg1, DBM_MINUTES));
			else
				DBM.Announce(string.format(DBM_HAKKAR_ENRAGE_WARNING, arg1 * 60, DBM_SECONDS));
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_DAMAGE" ) then
			local _, _, sArg1, sArg2 = string.find(arg1, DBM_HAKKAR_MC_EXPR);
			if ( sArg1 and sArg2 ) then
				if sArg1 == DBM_YOU and sArg2 == DBM_ARE then
					sArg1 = UnitName("player");
				end
				
				DBM.StartStatusBarTimer(20, "Next Mind Control", "Interface\\Icons\\Spell_Shadow_ShadowWordDominate");
				DBM.StartStatusBarTimer(10, "Mind Control: "..sArg1, "Interface\\Icons\\Spell_Shadow_ShadowWordDominate");
				
				DBM.Announce(string.format(DBM_HAKKAR_MC_WARNING, sArg1));
			end
		end

	end,		
};
