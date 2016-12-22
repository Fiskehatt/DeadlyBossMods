-- 
-- Lord Kazzak v1.0
--
-- todo:
-- Twisted Reflection !!! - Magic 
-- Your own streght feeds me, %s!
--

DBM.AddOns.Kazzak = { 
	["Name"] = DBM_KAZZAK_NAME,
	["Abbreviation1"] = "kazzak", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_KAZZAK_INFO,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["FightStartTime"] = 0,
	["Sort"] = 5,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_COMBAT_HOSTILE_DEATH"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( (event == "CHAT_MSG_MONSTER_YELL") and ( arg1 == DBM_KAZZAK_START_YELL ) and ( arg2 == DBM_KAZZAK_NAME ) ) then
			DBM.AddOns.Kazzak.FightStartTime = time();
			DBM.EndStatusBarTimer("Supreme Mode")
			DBM.UnSchedule("DBM.AddOns.Kazzak.OnEvent");

			DBM.StartStatusBarTimer(180, DBM_KAZZAK_BAR_TEXT, "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
			DBM.Schedule(90, "DBM.AddOns.Kazzak.OnEvent", "SupremeWarning1");
			DBM.Schedule(150, "DBM.AddOns.Kazzak.OnEvent", "SupremeWarning2");
			DBM.Schedule(170, "DBM.AddOns.Kazzak.OnEvent", "SupremeWarning3");

			DBM.Announce(DBM_KAZZAK_ANNOUNCE_START);

		elseif ( event == "CHAT_MSG_COMBAT_HOSTILE_DEATH" ) then
			if arg1 == DBM_KAZZAK_DIES and DBM.AddOns.Kazzak.FightStartTime > 0 then
				DBM.UnSchedule("DBM.AddOns.Kazzak.OnEvent");
				DBM.EndStatusBarTimer("Supreme Mode");

				local temptime = time() - DBM.AddOns.Kazzak.FightStartTime;

				DBM.Announce(string.format(DBM_KAZZAK_ANNOUNCE_TIMENEEDED, temptime));
				DBM.AddOns.Kazzak.FightStartTime = 0;
			end

		elseif (event == "SupremeWarning1") then
			DBM.Announce(string.format(DBM_KAZZAK_ANNOUNCE_SEC, 90));

		elseif (event == "SupremeWarning2") then
			DBM.Announce(string.format(DBM_KAZZAK_ANNOUNCE_SEC, 30));

		elseif (event == "SupremeWarning3") then
			DBM.Announce(string.format(DBM_KAZZAK_ANNOUNCE_SEC, 10));

		end
	end,		
};
