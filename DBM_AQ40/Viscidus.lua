DBM.AddOns.Viscidus = {
	["Name"] = DBM_VISCIDUS_NAME,
	["Abbreviation1"] = "Vis",
	["Version"] = "1.3",
	["Author"] = "Tandanu",
	["Description"] = DBM_VISCIDUS_DESCRIPTION,
	["Instance"] = "Ahn'Qiraj",	
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 7,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["MainTank"] = "",
		["Whisper"] = false,
	},
	["InCombat"] = false,
	["SpamProtection"] = {},
	["Stats"] = {
		["Freeze0"] = 0,
		["Freeze1"] = 0,
		["Freeze2"] = 0,
		["FrostHits"] = 0,
		["TotalFrostHits"] = 0,
		["MeleeHits"] = 0,
		["TotalMeleeHits"] = 0,
		["P1Hits"] = 0,
		["P2Hits"] = 0,
		["P3Hits"] = 0,
		["P4Hits"] = 0,
		["P5Hits"] = 0,
		["P6Hits"] = 0,
		["Frozen"] = false,	
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Viscidus.Options.Whisper",
			["text"] = DBM_VISCIDUS_SEND_WHISPER,
			["func"] = function() DBM.AddOns.Viscidus.Options.Whisper = not DBM.AddOns.Viscidus.Options.Whisper; end,
		},
	},
	["Events"] = {		
		["CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS"] = true,
		["CHAT_MSG_COMBAT_HITS"] = true,
		["CHAT_MSG_COMBAT_PARTY_HITS"] = true,
		["CHAT_MSG_COMBAT_SELF_DAMAGE"] = true,
		["CHAT_MSG_COMBAT_SELF_HITS"] = true,	
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["PLAYER_REGEN_DISABLED"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SAY"] = true,
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_MONSTER_SAY"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_COMBAT_SELF_HITS"] = true,
		["CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_SELF_DAMAGE"] = true,
		["CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS"] = true,
		["CHAT_MSG_COMBAT_SELF_HITS"] = true,
		["CHAT_MSG_COMBAT_PARTY_HITS"] = true,
		["CHAT_MSG_COMBAT_HITS"] = true,
		["CHAT_MSG_COMBAT_SELF_DAMAGE"] = true,
	},	
	
	["SlashCmdHelpText"] = {
		[1] = DBM_VISCIDUS_SLASHHELP1,
	},
	["OnSlashCommand"] = function(msg)
		if string.find(string.lower(msg), "mt (%w+)") then		
			DBM.AddOns.Viscidus.Options.MainTank = string.sub(msg, 4);
			DBM.AddMsg(DBM_VISCIDUS_MT_SET..DBM.AddOns.Viscidus.Options.MainTank);
			return true;
		end
	end,
	["OnEvent"] = function(event, arg1)	
		if (event == "CHAT_MSG_MONSTER_EMOTE") then
			if (arg1 == DBM_VISCIDUS_SLOW_1) and (arg2 == DBM_VISCIDUS_VISCIDUS) then				
				DBM.Announce(string.format(DBM_VISCIDUS_FREEZE_WARNING, 1));
				DBM.AddOns.Viscidus.Stats.P1Hits = DBM.AddOns.Viscidus.Stats.FrostHits;
				DBM.AddOns.Viscidus.Stats.FrostHits = 0;
				DBM.AddOns.Viscidus.Stats.Frozen = false;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.TotalMeleeHits = 0;
			elseif (arg1 == DBM_VISCIDUS_SLOW_2) and (arg2 == DBM_VISCIDUS_VISCIDUS) then				
				DBM.Announce(string.format(DBM_VISCIDUS_FREEZE_WARNING, 2));
				DBM.AddOns.Viscidus.Stats.P2Hits = DBM.AddOns.Viscidus.Stats.FrostHits;
				DBM.AddOns.Viscidus.Stats.FrostHits = 0;
				DBM.AddOns.Viscidus.Stats.Frozen = false;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.TotalMeleeHits = 0;
			elseif (arg1 == DBM_VISCIDUS_SLOW_3) and (arg2 == DBM_VISCIDUS_VISCIDUS) then				
				DBM.Announce(DBM_VISCIDUS_FROZEN_WARNING);
				DBM.Schedule(7, "DBM.AddOns.Viscidus.OnEvent", "FrozenWarning", 8);
				DBM.Schedule(12,"DBM.AddOns.Viscidus.OnEvent", "FrozenWarning", 3);
				DBM.StartStatusBarTimer(15, "Frozen", "Interface\\Icons\\Spell_Frost_FrostNova");
				DBM.AddOns.Viscidus.Stats.P3Hits = DBM.AddOns.Viscidus.Stats.FrostHits;
				DBM.AddOns.Viscidus.Stats.FrostHits = 0;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.Frozen = true;
				DBM.AddOns.Viscidus.Stats.TotalFrostHits = 0;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.TotalMeleeHits = 0;
			elseif (arg1 == DBM_VISCIDUS_SHATTER_1) and (arg2 == DBM_VISCIDUS_VISCIDUS) then				
				DBM.Announce(string.format(DBM_VISCIDUS_SHATTER_WARNING, 1));
				DBM.AddOns.Viscidus.Stats.P4Hits = DBM.AddOns.Viscidus.Stats.FrostHits;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.Frozen = true;
				DBM.AddOns.Viscidus.Stats.TotalFrostHits = 0;
			elseif (arg1 == DBM_VISCIDUS_SHATTER_2) and (arg2 == DBM_VISCIDUS_VISCIDUS) then				
				DBM.Announce(string.format(DBM_VISCIDUS_SHATTER_WARNING, 2));
				DBM.AddOns.Viscidus.Stats.P5Hits = DBM.AddOns.Viscidus.Stats.FrostHits;
				DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
				DBM.AddOns.Viscidus.Stats.Frozen = true;
				DBM.AddOns.Viscidus.Stats.TotalFrostHits = 0;
			end
		elseif (event == "FrozenWarning") then
			if arg1 then			
				DBM.Announce(string.format(DBM_VISCIDUS_FROZEN_LEFT_WARNING, 8));
			end
		elseif (event == "PLAYER_REGEN_DISABLED") and GetRealZoneText() == DBM_AQ40 and (not DBM.AddOns.Viscidus.InCombat) then
			if DBM.UnitExists(DBM_VISCIDUS_VISCIDUS) then
				if DBM.AddOns.Viscidus.Options.MainTank == nil or DBM.AddOns.Viscidus.Options.MainTank == "" or DBM.AddOns.Viscidus.Options.MainTank == " " then
					DBM.AddMsg(DBM_VISCIDUS_MT_NOT_SET1);
					DBM.AddMsg(DBM_VISCIDUS_MT_NOT_SET2);
				end
				DBM.AddOns.Viscidus.Stats = {
					["Freeze0"] = 0,
					["Freeze1"] = 0,
					["Freeze2"] = 0,
					["FrostHits"] = 0,
					["TotalFrostHits"] = 0,
					["MeleeHits"] = 0,
					["TotalMeleeHits"] = 0,
					["P1Hits"] = 0,
					["P2Hits"] = 0,
					["P3Hits"] = 0,
					["P4Hits"] = 0,
					["P5Hits"] = 0,
					["P6Hits"] = 0,
					["Frozen"] = false,
				}
				DBM.AddOns.Viscidus.InCombat = true;
			end
		elseif (event == "ConfirmCombatEnd") then
			if (not UnitAffectingCombat("player")) and (not UnitIsDeadOrGhost("player")) then
				DBM.AddOns.Viscidus.InCombat = false;
				DBM.UnSchedule("DBM.AddOns.Viscidus.OnEvent");
			end
		elseif type(arg1) == "string" then
			if (string.find(arg1, DBM_HIT) or string.find(arg1, DBM_CRIT)) and string.find(arg1, DBM_VISCIDUS_VISCIDUS) then
				if string.find(arg1, DBM_FROST) then
					DBM.AddOns.Viscidus.Stats.TotalFrostHits = DBM.AddOns.Viscidus.Stats.TotalFrostHits + 1;
					DBM.AddOns.Viscidus.Stats.FrostHits = DBM.AddOns.Viscidus.Stats.FrostHits + 1;
					if not DBM.AddOns.Viscidus.Stats.Frozen then
						if (mod(DBM.AddOns.Viscidus.Stats.TotalFrostHits , 25) == 0) then 
							DBM.AddMsg(DBM_VISCIDUS_FROST_HITS..DBM.AddOns.Viscidus.Stats.TotalFrostHits);
						end
						if (mod(DBM.AddOns.Viscidus.Stats.TotalFrostHits, 50) == 0) then
							DBM.Announce(string.format(DBM_VISCIDUS_FROST_HITS_WARNING, DBM.AddOns.Viscidus.Stats.TotalFrostHits));
						end
						if DBM.AddOns.Viscidus.Stats.TotalFrostHits >= 300 then
							DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
							DBM.AddOns.Viscidus.Stats.Frozen = true;
							DBM.AddOns.Viscidus.Stats.TotalFrostHits = 0;
						end
					end
				elseif not (string.find(arg1, DBM_ARCANE) or string.find(arg1, DBM_HOLY) or string.find(arg1, DBM_NATURE) or string.find(arg1, DBM_SHADOW) or string.find(arg1, DBM_FIRE)) then
					DBM.AddOns.Viscidus.Stats.MeleeHits = DBM.AddOns.Viscidus.Stats.MeleeHits + 1;
					DBM.AddOns.Viscidus.Stats.TotalMeleeHits = DBM.AddOns.Viscidus.Stats.TotalMeleeHits + 1;
					if DBM.AddOns.Viscidus.Stats.Frozen then
						if (mod(DBM.AddOns.Viscidus.Stats.TotalMeleeHits, 25) == 0) then 
							DBM.AddMsg(DBM_VISCIDUS_MELEE_HITS..DBM.AddOns.Viscidus.Stats.TotalMeleeHits);
						end
						if (mod(DBM.AddOns.Viscidus.Stats.TotalMeleeHits, 50) == 0) then
							DBM.Announce(string.format(DBM_VISCIDUS_MELEE_HITS_WARNING, DBM.AddOns.Viscidus.Stats.TotalMeleeHits));
						end
						if DBM.AddOns.Viscidus.Stats.TotalMeleeHits >= 200 then
							DBM.AddOns.Viscidus.Stats.Frozen = false;
							DBM.AddOns.Viscidus.Stats.MeleeHits = 0;
							DBM.AddOns.Viscidus.Stats.TotalMeleeHits = 0;
						end
					end
				end
			end
		end	
	end,

	["OnUpdate"] = function(elapsed)
		if DBM.AddOns.Viscidus.InCombat then
			if (not UnitAffectingCombat("player")) and (not UnitIsDeadOrGhost("player")) and (not DBM.GetScheduleTimeLeft("DBM.AddOns.Viscidus.OnEvent", "ConfirmCombatEnd")) then
				DBM.Schedule(7.5, "DBM.AddOns.Viscidus.OnEvent", "ConfirmCombatEnd");
				return;
			end
			local Vis_CurrentTarget = "";
			for i = 1, GetNumRaidMembers() do
				if UnitName("Raid"..i.."target") == DBM_VISCIDUS_VISCIDUS then
					Vis_CurrentTarget = UnitName("Raid"..i.."targettarget");
					break;
				end
			end
			if Vis_CurrentTarget and Vis_CurrentTarget ~= "" and string.lower(Vis_CurrentTarget) ~= string.lower(DBM.AddOns.Viscidus.Options.MainTank) then
				if DBM.AddOns.Viscidus.SpamProtection[Vis_CurrentTarget] and DBM.AddOns.Viscidus.SpamProtection[Vis_CurrentTarget] <= 15 then		
					return;
				else		
					DBM.Announce(DBM_VISCIDUS_TOXIN_ON..Vis_CurrentTarget.." ***");					
					if Vis_CurrentTarget == UnitName("player") then
						DBM.AddSpecialWarning("Toxin", true, true);
					elseif DBM.AddOns.Viscidus.Options.Whisper then
						DBM.SendHiddenWhisper(DBM_VISCIDUS_TOXIN_ON_YOU, Vis_CurrentTarget);
					end
					DBM.AddOns.Viscidus.SpamProtection[Vis_CurrentTarget] = 0;
				end
			end	
		end
	end,
	["UpdateInterval"] = 0,
};
