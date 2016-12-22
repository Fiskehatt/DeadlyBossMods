--
-- La Vendetta Noth the Plaguebringer Raid Warning AddOn
-- (c) by Nitram from La Vendetta on DE-Azshara
--
-- Edited Hye/Ajaaja of Kilrogg (first blink timer and spawn warning during balcony phase) - thank you!

DBM.AddOns.Noth = {
	["Name"] = DBM_NTP_NAME,
	["Abbreviation1"] = "Noth",
	["Abbreviation2"] = "NTP",
	["Version"] = "1.6",
	["Author"] = "Nitram",
	["Description"] = DBM_NTP_DESCRIPTION,
	["Instance"] = DBM_NAXX,
	["GUITab"] = DBMGUI_TAB_NAXX,
	["Sort"] = 31,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["TimeOnBalcony"] = 70;
		["TimeInRoom"] = 90;
		["OnBalcony"] = false,
		["AnnounceSpawn"] = false,
		["AnnounceCurse"] = true,
	},
	["Phase"] = 0,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Noth.Options.AnnounceSpawn",
			["text"] = DBM_NTP_OPTION_WARN_SPAWN,
			["func"] = function() DBM.AddOns.Noth.Options.AnnounceSpawn = not DBM.AddOns.Noth.Options.AnnounceSpawn; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Noth.Options.AnnounceCurse",
			["text"] = DBM_NTP_OPTION_WARN_CURSE,
			["func"] = function() DBM.AddOns.Noth.Options.AnnounceCurse = not DBM.AddOns.Noth.Options.AnnounceCurse; end,
		},
	},
	["LastCurse"] = 0,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_MONSTER_YELL" and ((arg1 == DBM_NTP_YELL_START1) 
			                               or (arg1 == DBM_NTP_YELL_START2) 
						       or (arg1 == DBM_NTP_YELL_START3))) 
		  or (event == "BACKINROOM") then

			DBM.AddOns.Noth.InCombat = true;
			DBM.AddOns.Noth.Options.OnBalcony = false;					
			if (event == "BACKINROOM") then
				DBM.Announce(string.format(DBM_NTP_BACK_WARNING, DBM.AddOns.Noth.Options.TimeInRoom));
			else
				DBM.AddOns.Noth.Options.TimeOnBalcony = 70;
				DBM.AddOns.Noth.Options.TimeInRoom = 90;
				DBM.Announce(string.format(DBM_NTP_TELEPORT_WARNING, DBM.AddOns.Noth.Options.TimeInRoom));
				DBM.Schedule(25, "DBM.AddOns.Noth.OnEvent", "NTP5SecWarningBlink");
				DBM.Schedule(30, "DBM.AddOns.Noth.OnEvent", "NTP0SecWarningBlink");
				DBM.StartStatusBarTimer(30, "Blink Cooldown", "Interface\\Icons\\Spell_Arcane_Blink");
			end
			DBM.Schedule((DBM.AddOns.Noth.Options.TimeInRoom-10), "DBM.AddOns.Noth.OnEvent", "NTP10SecWarningTeleport");
			DBM.Schedule(DBM.AddOns.Noth.Options.TimeInRoom, "DBM.AddOns.Noth.OnEvent", "NTPGoToBalcony");
			DBM.StartStatusBarTimer(DBM.AddOns.Noth.Options.TimeInRoom, "Teleport to Balcony", "Interface\\Icons\\Spell_Arcane_Blink");
		end
	
		if( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" ) then			
			if arg1 == DBM_NTP_SPELL_1 then
				DBM.Announce(DBM_NTP_NOTH_GAINS_BLINK);
				DBM.Schedule(25, "DBM.AddOns.Noth.OnEvent", "NTP5SecWarningBlink");
				DBM.EndStatusBarTimer("Blink");
				DBM.StartStatusBarTimer(30, "Blink", "Interface\\Icons\\Spell_Arcane_Blink");
			end
		end

		if( event == "CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS" 
		 or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" 
		 or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then

			if (DBM.AddOns.Noth.Options.AnnounceCurse 
			and (time() > (DBM.AddOns.Noth.LastCurse+10) )
			and string.find(arg1, DBM_NTP_CURSE_AFFLICT)) then

				DBM.AddOns.Noth.LastCurse = time();
				DBM.Announce(DBM_NTP_CURSE_WARNING);
				
				-- DBM.StartStatusBarTimer(57, "Possible AE Curse");			(need more Tests)
				DBM.StartStatusBarTimer(9, "Curse Timeout", "Interface\\Icons\\Spell_Shadow_AnimateDead");
			end
		end
		
		if( event == "CHAT_MSG_MONSTER_YELL" and (string.find(arg1, DBM_NTP_ADDS_SPAWN))) and DBM.AddOns.Noth.Options.AnnounceSpawn then
			DBM.Announce(DBM_NTP_ADD_WARNING);
		end
			
		if (event == "NTP5SecWarningBlink") then							-- Blink System
			DBM.Announce(DBM_NTP_BLINK_5SEC_WARNING);
		elseif (event == "NTP0SecWarningBlink") then
			DBM.Announce(DBM_NTP_BLINK_0SEC_WARNING);	
		elseif (event == "NTP10SecWarningTeleport") then
			DBM.Announce(DBM_NTP_TELEPORT_10SEC_WARNING);				
		elseif (event == "NTP10SECUNTILBACK" ) then
			DBM.Announce(DBM_NTP_BACK_10SEC_WARNING);
		elseif (event == "NTP10SecWarningWave2") then
			DBM.Announce(DBM_NTP_NEXT_WAVE_SOON);
			
		elseif (event == "NTPGoToBalcony" ) then
			DBM.AddOns.Noth.Options.OnBalcony = true;
			DBM.Schedule((DBM.AddOns.Noth.Options.TimeOnBalcony-10), "DBM.AddOns.Noth.OnEvent", "NTP10SECUNTILBACK");
			DBM.Schedule(DBM.AddOns.Noth.Options.TimeOnBalcony, "DBM.AddOns.Noth.OnEvent", "BACKINROOM");
			DBM.StartStatusBarTimer(DBM.AddOns.Noth.Options.TimeOnBalcony, "Teleport back", "Interface\\Icons\\Spell_Arcane_Blink");
			if (DBM.AddOns.Noth.Options.TimeOnBalcony == 70 ) then
				DBM.AddOns.Noth.Phase = 1;
				DBM.AddOns.Noth.Options.TimeOnBalcony = 95;
				DBM.AddOns.Noth.Options.TimeInRoom = 110;
				-- Wave1/Wave2 Announce/Scheduling
				DBM.Schedule(30, "DBM.AddOns.Noth.OnEvent", "NTP10SecWarningWave2");
				DBM.StartStatusBarTimer(10, "Wave 1", "Interface\\Icons\\Spell_Shadow_RaiseDead");
				DBM.StartStatusBarTimer(40, "Wave 2", "Interface\\Icons\\Spell_Shadow_RaiseDead");
			elseif (DBM.AddOns.Noth.Options.TimeOnBalcony == 95) then
				DBM.AddOns.Noth.Phase = 2;
				DBM.AddOns.Noth.Options.TimeOnBalcony = 120;
				DBM.AddOns.Noth.Options.TimeInRoom = 180;
				-- Wave1/Wave2 Announce/Scheduling
				DBM.Schedule(45, "DBM.AddOns.Noth.OnEvent", "NTP10SecWarningWave2");
				DBM.StartStatusBarTimer(10, "Wave 1", "Interface\\Icons\\Spell_Shadow_RaiseDead");
				DBM.StartStatusBarTimer(55, "Wave 2", "Interface\\Icons\\Spell_Shadow_RaiseDead");
			end
	
			DBM.EndStatusBarTimer("Blink");
			DBM.UnSchedule("DBM.AddOns.Noth.OnEvent", "NTP5SecWarningBlink");
		end
	end,
}

