-- 
-- Moam Beta v1.0
--

DBM.AddOns.Moam = { 
	["Name"] = DBM_MOAM_NAME,
	["Abbreviation1"] = "Moam", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MOAM_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 13,
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
	},	
	["OnEvent"] = function(event, arg1) 

		-- Combatstart - until Stone form
		if (event == "CHAT_MSG_MONSTER_EMOTE" and arg1 == DBM_MOAM_COMBAT_START )  then
			DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_TIME, 90) );

			DBM.EndStatusBarTimer("Stone form");
			DBM.StartStatusBarTimer(90, "Stone form", "Interface\\Icons\\Spell_Shadow_UnholyStrength");
		
			DBM.Schedule(30, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 60);
			DBM.Schedule(60, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 30);
			DBM.Schedule(80, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 10);

		elseif ( event == "StoneWarning" ) then
			if arg1 then
				DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_TIME, arg1) );	
			end
		end

		-- Gain Stoneform - until transform
		if (event == "CHAT_MSG_MONSTER_EMOTE" and arg1 == DBM_MOAM_STONE_GAIN )  then
			DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_FADE, 90) );

			DBM.EndStatusBarTimer("Stone form");
			DBM.StartStatusBarTimer(90, "Stone form", "Interface\\Icons\\Spell_Shadow_UnholyStrength");
		
			DBM.Schedule(30, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 60);
			DBM.Schedule(60, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 30);
			DBM.Schedule(80, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 10);

		elseif ( event == "StoneFadeWarning" ) then
			if arg1 then
				DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_FADE, arg1) );	
			end
		end

		-- Stoneform Fades
		if ( event == "CHAT_MSG_SPELL_AURA_GONE_OTHER" and string.find(arg1, DBM_MOAM_STONE_FADE_EXPR) ) then
			DBM.UnSchedule("DBM.AddOns.Moam.OnEvent");
			DBM.Announce( DBM_MOAM_STONE_FADE_ANNOUNCE );

		end
	end,		
};
