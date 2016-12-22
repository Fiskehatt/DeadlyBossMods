DBM.AddOns.Ragnaros = { 
	["Name"] = DBM_RAGNAROS_NAME,
	["Abbreviation1"] = "Ragna",
	["Abbreviation1"] = "Rag",
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_RAGNAROS_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 10,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["InCombat"] = false,
	["Submerged"] = false,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.AddOns.Ragnaros.Submerged = false;
		DBM.Announce(DBM_RAGNAROS_EMERGED);
		DBM.Schedule(60 - delay, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 120);
		DBM.Schedule(120 - delay, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 60);
		DBM.Schedule(150 - delay, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 30);
		DBM.Schedule(165 - delay, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 15);
		DBM.StartStatusBarTimer(180 - delay, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.Ragnaros.Submerged = false;
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if ( arg1 == DBM_RAGNAROS_WRATH ) then
				DBM.Announce(DBM_RAGNAROS_WRATH_WARN1);
				DBM.EndStatusBarTimer("Wrath of Ragnaros");
				DBM.StartStatusBarTimer(30, "Wrath of Ragnaros", "Interface\\Icons\\Spell_Fire_SoulBurn");
				DBM.Schedule(25, "DBM.AddOns.Ragnaros.OnEvent", "WrathWarning", 5);
			elseif ( arg1 == DBM_RAGNAROS_SUBMERGE ) then
				DBM.AddOns.Ragnaros.Submerged = true;
				DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "WrathWarning", 5);
				DBM.EndStatusBarTimer("Wrath of Ragnaros");
				DBM.EndStatusBarTimer("Submerge");
				DBM.StartStatusBarTimer(90, "Emerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendUnBurrow");
				DBM.Schedule(30, "DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 60);
				DBM.Schedule(60, "DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 30);
				DBM.Schedule(75, "DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 15);
			end
			if ( arg1 ~= DBM_RAGNAROS_SUBMERGE ) and ( arg2 == DBM_RAGNAROS_NAME ) and ( DBM.AddOns.Ragnaros.Submerged ) then
				DBM.AddOns.Ragnaros.OnEvent("Emerge");
			end
		elseif ( event == "Emerge" ) then
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "Emerge");
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 60);
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 30);
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 15);
			DBM.AddOns.Ragnaros.Submerged = false;
			DBM.EndStatusBarTimer("Emerge");
			DBM.Announce(DBM_RAGNAROS_EMERGED);
			DBM.Schedule(60, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 120);
			DBM.Schedule(120, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 60);
			DBM.Schedule(150, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 30);
			DBM.Schedule(165, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 15);
			DBM.StartStatusBarTimer(180, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
		elseif ( event == "WrathWarning" ) then
			if arg1 then
				DBM.Announce(string.format(DBM_RAGNAROS_WRATH_WARN2, arg1));
			end
		elseif ( event == "SubmergeWarning" ) then
			if type(arg1) == "number" then
				if arg1 > 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1/60, DBM_MINUTES))
				elseif arg1 == 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1/60, DBM_MINUTE))
				else
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1, DBM_SECONDS))
				end
			end
		elseif ( event == "EmergeWarning" ) then
			if type(arg1) == "number" then
				if arg1 > 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1/60, DBM_MINUTES))
				elseif arg1 == 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1/60, DBM_MINUTE))
				else
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1, DBM_SECONDS))
				end
			end
		end
	end,
};
