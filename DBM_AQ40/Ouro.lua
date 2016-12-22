DBM.AddOns.Ouro = {
	["Name"] = DBM_OURO_NAME,
	["Abbreviation1"] = "ouru",
	["Version"] = "1.1",
	["Author"] = "Tandanu",
	["Description"] = DBM_OURO_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 8,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},	
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
	},
	["Submerged"] = false,
	["Enraged"] = false,
	["InCombat"] = false,
	["OnCombatStart"] = function(delay)
		DBM.AddOns.Ouro.Enraged = false;
		DBM.AddOns.Ouro.Submerged = false;
		DBM.Announce(DBM_OURO_EMERGED_WARNING);
		DBM.Schedule(80 - delay, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 100);
		DBM.Schedule(120 - delay, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 60);
		DBM.Schedule(165 - delay, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 15);
		DBM.StartStatusBarTimer(180 - delay, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.Ouro.Enraged = false;
		DBM.AddOns.Ouro.Submerged = false;
	end,
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_MONSTER_EMOTE") then
			if arg1 == DBM_OURO_ENRAGE and arg2 == DBM_OURO_OURO then
				DBM.Announce(DBM_OURO_ENRAGE_ANNOUNCE);
				DBM.AddOns.Ouro.Enraged = true;
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 100); --ouro does not submerge when enraged
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 60);
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 15);
				DBM.EndStatusBarTimer("Submerge");
			end
		elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") or (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF") then
			if (arg1 == DBM_OURO_CAST_SWEEP) then
				DBM.AddOns.Ouro.InCombat = true;
				DBM.Announce(DBM_OURO_SWEEP_WARNING);
				DBM.Schedule(16, "DBM.AddOns.Ouro.OnEvent", "SweepWarning", 5);
				DBM.EndStatusBarTimer("Sweep")
				DBM.StartStatusBarTimer(1.5, "Sweep Cast", "Interface\\Icons\\INV_Misc_MonsterScales_05");
				DBM.Schedule(1.5, "DBM.AddOns.Ouro.OnEvent", "StartNewTimer", "Sweep");
			elseif (arg1 == DBM_OURO_CAST_SAND_BLAST) then
				DBM.AddOns.Ouro.InCombat = true;
				DBM.Announce(DBM_OURO_BLAST_WARNING);				
				DBM.Schedule(18, "DBM.AddOns.Ouro.OnEvent", "SandBlastWarning", 5);
				DBM.EndStatusBarTimer("Sand Blast");
				DBM.StartStatusBarTimer(2, "Sand Blast Cast", "Interface\\Icons\\Spell_Nature_Cyclone");
				DBM.Schedule(2, "DBM.AddOns.Ouro.OnEvent", "StartNewTimer", "Sand Blast");
			elseif (not DBM.AddOns.Ouro.Submerged) and (not DBM.AddOns.Ouro.Enraged) and string.find(arg1, DBM_OURO_DIRT_MOUND_QUAKE) and ((not DBM.GetStatusBarTimerTimeLeft("Emerge")) or (DBM.GetStatusBarTimerTimeLeft("Emerge") > 22)) then
				DBM.AddOns.Ouro.InCombat = true;
				DBM.AddOns.Ouro.Submerged = true;
				DBM.Announce(DBM_OURO_SUBMERGED_WARNING);
				DBM.Schedule(22, "DBM.AddOns.Ouro.OnEvent", "EmergeWarning", 5);
				DBM.Schedule(27, "DBM.AddOns.Ouro.OnEvent", "OuroEmerge");
				DBM.Schedule(34, "DBM.AddOns.Ouro.OnEvent", "ResetSubmergeVar");
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 100);
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 60);
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 15);
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SandBlastWarning", 5);
				DBM.UnSchedule("DBM.AddOns.Ouro.OnEvent", "SweepWarning", 5);
				DBM.EndStatusBarTimer("Submerge");
				DBM.EndStatusBarTimer("Sweep");
				DBM.EndStatusBarTimer("Sand Blast");
				DBM.StartStatusBarTimer(27, "Emerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendUnBurrow");
			end
		elseif (event == "StartNewTimer") then
			if arg1 == "Sweep" then
				DBM.StartStatusBarTimer(19, "Sweep", "Interface\\Icons\\INV_Misc_MonsterScales_05");
			elseif arg1 == "Sand Blast" then
				DBM.StartStatusBarTimer(21, "Sand Blast", "Interface\\Icons\\Spell_Nature_Cyclone");
			end
		elseif (event == "ResetSubmergeVar") then
			DBM.AddOns.Ouro.Submerged = false;
		elseif (event == "SweepWarning") then		
			if arg1 == 5 then
				DBM.Announce(DBM_OURO_SWEEP_SOON_WARNING);
			end
		elseif (event == "SandBlastWarning") then
			if arg1 == 5 then
				DBM.Announce(DBM_OURO_BLAST_SOON_WARNING);
			end
		elseif (event == "EmergeWarning") then
			DBM.Announce(DBM_OURO_EMERGE_SOON_WARNING);
		elseif (event == "OuroEmerge") then
			DBM.Announce(DBM_OURO_EMERGED_WARNING);
			DBM.Schedule(80, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 100);
			DBM.Schedule(120, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 60);
			DBM.Schedule(165, "DBM.AddOns.Ouro.OnEvent", "SubmergeWarning", 15);
			DBM.EndStatusBarTimer("Emerge");
			DBM.StartStatusBarTimer(180, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
		elseif (event == "SubmergeWarning") then
			if arg1 == 100 then
				DBM.Announce(DBM_OURO_POSSIBLE_SUBMERGE_WARNING);
			elseif arg1 then				
				DBM.Announce(string.format(DBM_OURO_SUBMERGE_WARNING, arg1));
			end
		end
	end,
};
