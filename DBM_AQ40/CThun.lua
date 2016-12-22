--
-- v1.7 old version from Tanda
-- v1.8 Fixed C'Thun Timers - Nitram (1.12.0)
-- v1.81 re-used old timers (1.12.1)
-- v1.9 Added Option to do not hide Distance Frame during Phase2
-- 	Auto Cleanup after Bossfight if SetIcon is true
-- v1.91 Patch 2.0 fix by Tsew@EU-Kirin-Tor

DBM.AddOns.CThun = {
	["Name"] = DBM_CTHUN_NAME,
	["Abbreviation1"] = "CThun",
	["Abbreviation2"] = "ct",
	["Version"] = "1.91",
	["Author"] = "Tandanu",
	["Description"] = DBM_CTHUN_DESCRIPTION,
	["SlashCmdHelpText"] = {
		[1] = DBM_CTHUN_SLASHHELP1, 
	},
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 9,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = true,
		["SetIcon"] = true,
		["RangeCheck"] = true,
		["RangeCheckPhase2"] = false,
	},
	["NextSpawn"] = DBM_CTHUN_CLAW,
	["CurrentTarget"] = "",
	["LastTarget"] = "",
	["LastTargetChange"] = GetTime(),
	["InCombat"] = false,
	["Phase2JustStarted"] = false,

	["DropdownMenu"] = {
--		[1] = {
--			["variable"] = "DBM.AddOns.CThun.Options.Whisper",
--			["text"] = DBM_CTHUN_SEND_WHISPER,
--			["func"] = function() DBM.AddOns.CThun.Options.Whisper = not DBM.AddOns.CThun.Options.Whisper; end,
--		},
		[1] = {
			["variable"] = "DBM.AddOns.CThun.Options.SetIcon",
			["text"] = DBM_CTHUN_SET_ICON,
			["func"] = function() DBM.AddOns.CThun.Options.SetIcon = not DBM.AddOns.CThun.Options.SetIcon; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.CThun.Options.RangeCheck",
			["text"] = DBM_CTHUN_RANGE_CHECK,
			["func"] = function() DBM.AddOns.CThun.Options.RangeCheck = not DBM.AddOns.CThun.Options.RangeCheck; end,
		},
		[3] = {
			["variable"] = "DBM.AddOns.CThun.Options.RangeCheckPhase2",
			["text"] = DBM_CTHUN_RANGE_CHECK_PHASE2,
			["func"] = function() DBM.AddOns.CThun.Options.RangeCheckPhase2 = not DBM.AddOns.CThun.Options.RangeCheckPhase2; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["PLAYER_REGEN_DISABLED"] = true,
		["CHAT_MSG_COMBAT_HOSTILE_DEATH"] = true,
		["CHAT_MSG_ADDON"] = true,
	},
	["OnSlashCommand"] = function(msg)
		if string.lower(msg) == "start" and not DBM.AddOns.CThun.InCombat then
			DBM.AddOns.CThun.InCombat = true;
			DBM.Schedule(44.5, "DBM.AddOns.CThun.OnEvent", "DarkGlareWarning", 5);
			DBM.Schedule(49.5, "DBM.AddOns.CThun.OnEvent", "DarkGlareWarning", 0);
			DBM.Schedule(39.5, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 5);
			DBM.Schedule(44.5, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 0);
			if (not DBM.GetStatusBarTimerTimeLeft("Dark Glare")) and DBM.AddOns.CThun.Options.Announce then --synced timer is better!
				DBM.StartStatusBarTimer(49.5, "Dark Glare", "Interface\\Icons\\Spell_Shadow_LifeDrain02")
			end
			if (not DBM.GetStatusBarTimerTimeLeft("Eye Tentacles")) and DBM.AddOns.CThun.Options.Announce then
				DBM.StartStatusBarTimer(44.5, "Eye Tentacles", "Interface\\Icons\\INV_Misc_Eye_01")
			end
			if DBM.AddOns.CThun.Options.RangeCheck then
				DBM_Gui_DistanceFrame_Show();
			end
			DBM.AddMsg("C'Thun timers started!", "C'Thun");
			return true;
		end
	end,
	["OnCombatStart"] = function(delay)		
		DBM.AddOns.CThun.Phase2 = false;
		DBM.Schedule(37 + 7.5 - delay, "DBM.AddOns.CThun.OnEvent", "DarkGlareWarning", 5);
		DBM.Schedule(42 + 7.5 - delay, "DBM.AddOns.CThun.OnEvent", "DarkGlareWarning", 0);
		DBM.Schedule(32 + 7.5 - delay, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 5);
		DBM.Schedule(37 + 7.5 - delay, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 0);
		if (not DBM.GetStatusBarTimerTimeLeft("Dark Glare")) and DBM.AddOns.CThun.Options.Announce then --synced timer is better!
			DBM.StartStatusBarTimer(48 + 7.5 - delay, "Dark Glare", "Interface\\Icons\\Spell_Shadow_LifeDrain02")
		end
		if (not DBM.GetStatusBarTimerTimeLeft("Eye Tentacles")) and DBM.AddOns.CThun.Options.Announce then
			DBM.StartStatusBarTimer(43 + 7.5 - delay, "Eye Tentacles", "Interface\\Icons\\INV_Misc_Eye_01")
		end
		if DBM.AddOns.CThun.Options.RangeCheck then
			DBM_Gui_DistanceFrame_Show();
		end
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.CThun.Phase2 = false;
		if DBM.AddOns.CThun.Options.RangeCheck then
			DBM_Gui_DistanceFrame_Hide();
		end
		if DBM.AddOns.CThun.Options.SetIcon then
			DBM.CleanUp();
		end
	end,
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_ADDON" and arg3 == "RAID" then
			if arg1 == "DBMCTHUN" then
				if arg2 == "GOGO2" then
					if not DBM.AddOns.CThun.Phase2 then
						DBM.AddOns.CThun.InCombat = true;
						DBM.AddOns.CThun.Phase2 = true;
						DBM.UnSchedule("DBM.AddOns.CThun.OnEvent");
						DBM.EndStatusBarTimer("Dark Glare");
						DBM.EndStatusBarTimer("Dark Glare End");
						DBM.EndStatusBarTimer("Eye Tentacles");
						DBM.Schedule(2, "DBM.AddOns.CThun.OnEvent", "Phase2OrWeakenedEnd");
						DBM.AddOns.CThun.Phase2JustStarted = true; --because of out of combat bug
						DBM.Schedule(40, "DBM.AddOns.CThun.OnEvent", "ResetPhase2Var");
						if DBM.AddOns.CThun.Options.RangeCheck then
							DBM_Gui_DistanceFrame_Hide();
						end
					end
				end
			end
		elseif (event == "SmallEyeWarning") then
			if arg1 == 5 then
				DBM.Announce(string.format(DBM_CTHUN_SMALL_EYE_WARNING, 5));
			elseif arg1 == 0 then
				DBM.Schedule(40, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 5);
				DBM.Schedule(45, "DBM.AddOns.CThun.OnEvent", "SmallEyeWarning", 0);
				if ((not DBM.GetStatusBarTimerTimeLeft("Eye Tentacles")) or (DBM.GetStatusBarTimerTimeLeft("Eye Tentacles") < 1.5)) and DBM.AddOns.CThun.Options.Announce then
					DBM.StartStatusBarTimer(45, "Eye Tentacles", "Interface\\Icons\\INV_Misc_Eye_01")
				end
			end
		elseif (event == "DarkGlareWarning") then
			if arg1 == 5 then
				DBM.Announce(string.format(DBM_CTHUN_DARK_GLARE_WARNING, 5));
				DBM.Schedule(1, "DBM.AddOns.CThun.OnEvent", "CheckDarkGlareTarget");
			end		
		elseif (event == "CheckDarkGlareTarget") then
--[[		if (DBM.AddOns.CThun.CurrentTarget and (DBM.AddOns.CThun.LastTargetChange + 4.5 > GetTime()))  then
				local name, subgroup, name2, subgroup2, iconCounter;
				iconCounter = 3;
				for i = 1, GetNumRaidMembers() do
					name, _, subgroup = GetRaidRosterInfo(i);
					if name == DBM.AddOns.CThun.CurrentTarget then
						break;
					end
				end

				if (name and subgroup) then
					DBM.Announce(DBM_CTHUN_DARK_GLARE_ON_GROUP..subgroup.." ***");
					for i = 1, GetNumRaidMembers()do
						name2, _, subgroup2 = GetRaidRosterInfo(i);			
						if subgroup2 == subgroup then
							if DBM.AddOns.CThun.Options.SetIcon and DBM.Rank >= 1 then
								SetRaidTargetIcon("raid"..i, iconCounter);
							end
							DBM.Schedule(15, "DBM.AddOns.CThun.OnEvent", "ResetRaidTargetIcon", name2);
							iconCounter = iconCounter + 1;
							if name2 == UnitName("player") then
								DBM.AddSpecialWarning(DBM_CTHUN_DARK_GLARE, true, true);
							else
								if DBM.AddOns.CThun.Options.Announce and DBM.AddOns.CThun.Options.Whisper and DBM.Rank >= 1 then
									DBM.SendHiddenWhisper(DBM_CTHUN_DARK_GLARE_ON_YOU, name2);
								end
							end
						end
					end	
				end
			end]]
			DBM.Schedule(4, "DBM.AddOns.CThun.OnEvent", "GetDarkGlareDuration");

		elseif (event == "GetDarkGlareDuration") then
			local delta = - GetTime() + DBM.AddOns.CThun.LastTargetChange + 6.66; --timers by Mukka (AddOn: AQ_BossMod) - thx for this great idea to announce the targeted group :)
			if (delta < -1.5) or (delta > 1.8) then
				delta = 0;
				if DBM.AddOns.CThun.Options.Announce then
					DBM.AddMsg(DBM_CTHUN_DARK_GLARE_TIMER_FAILED);
				end
			end
			local glareEnd = 38 - 4 + delta + 3; -- +3 adjustment by me...Mukka's timers did not work 100% correct..."dark glare end" must be 3 seconds longer (and "dark glare" bar was 3 seconds too long --> wasn't a big problem)
			DBM.Schedule((glareEnd - 5), "DBM.AddOns.CThun.OnEvent", "DarkGlareEndWarning", 5);
			DBM.Schedule(glareEnd, "DBM.AddOns.CThun.OnEvent", "DarkGlareEndWarning", 0);
			if (not DBM.GetStatusBarTimerTimeLeft("Dark Glare End")) and DBM.AddOns.CThun.Options.Announce then
				DBM.StartStatusBarTimer(glareEnd, "Dark Glare End");
			end		
		elseif (event == "DarkGlareEndWarning") then
			if arg1 == 5 then
				DBM.Announce(string.format(DBM_CTHUN_DARK_GLARE_END_WARNING, 5));
			elseif arg1 == 0 then
				DBM.Schedule(44.2, "DBM.AddOns.CThun.OnEvent", "DarkGlareWarning", 5);
				if (not DBM.GetStatusBarTimerTimeLeft("Dark Glare")) and DBM.AddOns.CThun.Options.Announce then
					DBM.StartStatusBarTimer(49, "Dark Glare", "Interface\\Icons\\Spell_Shadow_LifeDrain02");
				end
			end
		elseif (event == "CHAT_MSG_COMBAT_HOSTILE_DEATH") then
			if (arg1 == DBM_CTHUN_DIES) and not DBM.AddOns.CThun.Phase2 then
				DBM.AddOns.CThun.InCombat = true;
				DBM.AddOns.CThun.Phase2 = true;
				DBM.UnSchedule("DBM.AddOns.CThun.OnEvent");
				DBM.EndStatusBarTimer("Dark Glare");
				DBM.EndStatusBarTimer("Dark Glare End");
				DBM.EndStatusBarTimer("Eye Tentacles");
				DBM.Schedule(2, "DBM.AddOns.CThun.OnEvent", "Phase2OrWeakenedEnd");
				DBM.AddOns.CThun.Phase2JustStarted = true; --because of out of combat bug
				DBM.Schedule(40, "DBM.AddOns.CThun.OnEvent", "ResetPhase2Var");
				if (DBM.AddOns.CThun.Options.RangeCheck and not DBM.AddOns.CThun.Options.RangeCheckPhase2) then
					DBM_Gui_DistanceFrame_Hide();
				end
				SendAddonMessage("DBMCTHUN", "GOGO2", "RAID");
			end
		elseif (event == "ResetPhase2Var") then
			DBM.AddOns.CThun.Phase2JustStarted = false;
		elseif (event == "Phase2OrWeakenedEnd") then
			DBM.AddOns.CThun.NextSpawn = DBM_CTHUN_CLAW;
			DBM.Announce(DBM_CTHUN_GIANT_CLAW_WARNING);
			DBM.Schedule(10, "DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 0);
			DBM.StartStatusBarTimer(10, "Giant Claw Tentacle", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
		elseif (event == "GiantTentacleSpawn") then
			DBM.AddOns.CThun.InCombat = true;
			if arg1 == 10 then
				DBM.Announce(string.format(DBM_CTHUN_GIANT_AND_EYES_WARNING, DBM.AddOns.CThun.NextSpawn));
			elseif arg1 == 0 then
				if DBM.AddOns.CThun.NextSpawn == DBM_CTHUN_CLAW then
					DBM.AddOns.CThun.NextSpawn = DBM_CTHUN_EYE;
					DBM.StartStatusBarTimer(30, "Giant Eye Tentacle", "Interface\\Icons\\INV_Misc_Eye_01");
				elseif DBM.AddOns.CThun.NextSpawn == DBM_CTHUN_EYE then
					DBM.AddOns.CThun.NextSpawn = DBM_CTHUN_CLAW;
					DBM.StartStatusBarTimer(30, "Giant Claw Tentacle", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
				end
				DBM.Schedule(20, "DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 10);
				DBM.Schedule(30, "DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 0);
				DBM.StartStatusBarTimer(30, "Eye Tentacles", "Interface\\Icons\\INV_Misc_Eye_01");
			end
		elseif (event == "CHAT_MSG_MONSTER_EMOTE") then
			if string.find(arg1, DBM_CTHUN_WEAKENED) and arg2 == DBM_CTHUN_NAME then
				DBM.AddOns.CThun.InCombat = true;

				
--[[				if not DBM.GetScheduleTimeLeft("DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 0) then --to prevent error message when the GiantTentacleSpawn stuff is not scheduled. This is a bit ugly...but...bah.
					DBM.UnSchedule("DBM.AddOns.CThun.OnEvent");
					DBM.EndStatusBarTimer("Giant Claw Tentacle");
					DBM.EndStatusBarTimer("Giant Eye Tentacle");
					DBM.EndStatusBarTimer("Eye Tentacles");
					DBM.Schedule(20, "DBM.AddOns.CThun.OnEvent", "WeakenedWarning", 25);
					DBM.Schedule(35, "DBM.AddOns.CThun.OnEvent", "WeakenedWarning", 10);
					DBM.StartStatusBarTimer(45, "Weakened", "Interface\\Icons\\Spell_Holy_AshesToAshes");
					return;
				end
				
				-- get new pop time after weakness : 45 + timeleft to spawn = WeakenedGiantTemp
				local WeakenedGiantTemp = 55;]]

				DBM.UnSchedule("DBM.AddOns.CThun.OnEvent");
				DBM.EndStatusBarTimer("Giant Claw Tentacle");
				DBM.EndStatusBarTimer("Giant Eye Tentacle");
				DBM.EndStatusBarTimer("Eye Tentacles");
				
--[[				start StatusBarTimer with the new timing for a better visibility
				DBM.StartStatusBarTimer(WeakenedGiantTemp , "Eye Tentacles", "Interface\\Icons\\INV_Misc_Eye_01");
				if DBM.AddOns.CThun.NextSpawn == DBM_CTHUN_CLAW then
					DBM.StartStatusBarTimer(WeakenedGiantTemp , "Giant Claw Tentacle", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
				elseif DBM.AddOns.CThun.NextSpawn == DBM_CTHUN_EYE then
					DBM.StartStatusBarTimer(WeakenedGiantTemp , "Giant Eye Tentacle", "Interface\\Icons\\INV_Misc_Eye_01");
				end

				-- Schedule new pop with new timing
				DBM.Schedule((WeakenedGiantTemp - 10), "DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 10);
				DBM.Schedule(WeakenedGiantTemp, "DBM.AddOns.CThun.OnEvent", "GiantTentacleSpawn", 0);]]

				DBM.Announce(DBM_CTHUN_WEAKENED_WARNING);
				DBM.Schedule(20, "DBM.AddOns.CThun.OnEvent", "WeakenedWarning", 25);
				DBM.Schedule(35, "DBM.AddOns.CThun.OnEvent", "WeakenedWarning", 10);
				DBM.Schedule(45, "DBM.AddOns.CThun.OnEvent", "Phase2OrWeakenedEnd", 0);
				DBM.StartStatusBarTimer(45, "Weakened", "Interface\\Icons\\Spell_Holy_AshesToAshes");
			end


		elseif (event == "WeakenedWarning") then
			if arg1 then
				DBM.Announce(string.format(DBM_CTHUN_WEAKENED_ENDS_WARNING, arg1));
			end
		elseif (event == "ResetRaidTargetIcon") and arg1 then
			local name;
			for i = 1, GetNumRaidMembers() do
				name = GetRaidRosterInfo(i);
				if name == arg1 then
					SetRaidTargetIcon("raid"..i, 0);
					break;
				end
			end
		end
	end,

	["OnUpdate"] = function(elapsed)
		if (not DBM.AddOns.CThun.InCombat) or (GetRealZoneText() ~= DBM_AQ40) then		
			return;
		end
			
		local UnitID, newTarget;
			
		if UnitName("target") == DBM_CTHUN_EYE_OF_CTHUN then
			newTarget = UnitName("targettarget")
		else
			for i = 1, GetNumRaidMembers() do
				if UnitName("raid"..i.."target") == DBM_CTHUN_EYE_OF_CTHUN then
					newTarget = UnitName("Raid"..i.."targettarget")
					break;
				end
			end
		end
		if newTarget ~= DBM.AddOns.CThun.LastTarget then
			if newTarget then
				if (DBM.AddOns.CThun.LastTargetChange + 1 < GetTime()) then
					local targetIcon = 3;
					for i = 1, GetNumRaidMembers() do
						if GetRaidRosterInfo(i) == newTarget then
							if GetRaidTargetIndex("raid"..i) ~= 8 and DBM.AddOns.CThun.Options.SetIcon and DBM.Rank >= 1 then
								SetRaidTargetIcon("raid"..i, 8);
							end
							if newTarget == UnitName("player") then
								DBM.AddSpecialWarning(DBM_CTHUN_EYE_BEAM, false, true);
							end
						end
					end
				end
				DBM.AddOns.CThun.CurrentTarget = newTarget
				DBM.AddOns.CThun.LastTarget = newTarget
				DBM.AddOns.CThun.LastTargetChange = GetTime()
			else
				DBM.AddOns.CThun.LastTarget = nil
			end
		end
	end,
	["UpdateInterval"] = 0.2,
};
