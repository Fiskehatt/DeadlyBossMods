--
-- Three Bugs (Vem, Yauj & Kri) - Optional Boss in AQ40 
-- Mod by Nitram
--

DBM.AddOns.ThreeBugs = {
	["Name"] = DBM_THREEBUGS_NAME,
	["Abbreviation1"] = "Bugs",
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_THREEBUGS_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 2,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},	
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
	},
	["LastFear"] = 0,
	["OnEvent"] = function(event, arg1)

		if (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF") then
			if( arg1 ~= nil and string.find(arg1, DBM_THREEBUGS_CASTHEAL_EXPR) ) then
				DBM.Announce(DBM_THREEBUGS_CASTHEAL_ANNOUNCE);
				DBM.StartStatusBarTimer(2, "Great Heal Cast", "Interface\\Icons\\Spell_Holy_Heal");
			end
		end

		if (event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"
		 or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"
		 or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE") then

		 	if (time() - DBM.AddOns.ThreeBugs.LastFear) > 10 and DBM.AddOns.ThreeBugs.InCombat then
				local _, _, sArg1, sArg2 = string.find(arg1, DBM_THREEBUGS_FEAR_EXPR);
				if( sArg1 ~= nil and sArg2 ~= nil ) then
					DBM.AddOns.ThreeBugs.LastFear = time();
					DBM.Schedule(17, "DBM.AddOns.ThreeBugs.OnEvent", "FearIn3");	-- 20 Sec Fear

					DBM.EndStatusBarTimer("Yauj Fear");
					DBM.StartStatusBarTimer(20, "Yauj Fear", "Interface\\Icons\\Spell_Shadow_PsychicScream");
				end
			end
		end

		if (event == "FearIn3") then
			DBM.Announce(string.format(DBM_THREEBUGS_FEAR_ANNOUNCE, 3));
		end


	end,
	
};
