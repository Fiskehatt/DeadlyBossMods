--
-- La Vendetta Instructor Razuvious Raid Warning AddOn
-- (c) by Nitram from La Vendetta on DE-Azshara
--

DBM.AddOns.Razuvious = {
	["Name"] = DBM_IR_NAME,
	["Abbreviation1"] = "Razu",
	["Abbreviation2"] = "Razuvious",
	["Abbreviation3"] = "ir",
	["Version"] = "1.6",
	["Author"] = "Nitram",
	["Description"] = DBM_IR_DESCRIPTION,
	["Instance"] = DBM_NAXX,
	["GUITab"] = DBMGUI_TAB_NAXX,
	["Sort"] = 21,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["10SecWarning"] = false,
	},
	["Lastshout"] = 0,
	["OnLoop"] = false,
	["LastAnnounce"] = 0,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Razuvious.Options['10SecWarning']",
			["text"] = DBM_IR_SHOW_10SEC_WARNING,
			["func"] = function() DBM.AddOns.Razuvious.Options["10SecWarning"] = not DBM.AddOns.Razuvious.Options["10SecWarning"]; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,		-- Disrupting Shout on YOU
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,		-- on Party
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,		-- on Raid / Pet
	},
	["OnCombatStart"] = function(delay)
		DBM.AddOns.Razuvious.OnEvent("StartNewDShoutTimer");
		DBM.AddOns.Razuvious.Lastshout = GetTime();
		DBM.StartRepeatingStatusBarTimer(25, "Disrupting Shout", "Interface\\Icons\\Ability_Warrior_RallyingCry");
	end,
	["OnCombatEnd"] = function(delay)
		DBM.EndRepeatingStatusBarTimer("Disrupting Shout");
	end,
	["OnEvent"] = function(event, arg1)			
		if ( event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" or 				
			 event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" or
			 event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" ) then
			
			if( string.find(arg1, DBM_IR_SPELL_1) )then
				if( DBM.AddOns.Razuvious.Lastshout > 0 and math.floor(GetTime() - DBM.AddOns.Razuvious.Lastshout) > 0 ) then
					DBM.AddOns.Razuvious.InCombat = true;
					DBM.AddMsg(DBM_IR_TIMER_UPDATED);		-- To see that the Loop is Sync'd to the Shout
					
--					DBM.AddMsg("Time since last D-Shout : ".. (time() - DBM.AddOns.Razuvious.Lastshout) );
					DBM.AddOns.Razuvious.OnEvent("StartNewDShoutTimer");
					DBM.AddOns.Razuvious.Lastshout = GetTime();
					DBM.EndRepeatingStatusBarTimer("Disrupting Shout");
					DBM.StartRepeatingStatusBarTimer(25, "Disrupting Shout", "Interface\\Icons\\Ability_Warrior_RallyingCry");
				else
					DBM.AddOns.Razuvious.OnEvent("StartNewDShoutTimer");
					DBM.AddOns.Razuvious.Lastshout = GetTime();
				end
			end
		end
			
		if (event == "StartNewDShoutTimer") then
			if (GetTime() - DBM.AddOns.Razuvious.Lastshout) < 2  then return true; end	-- Don't need Spam
				
			DBM.UnSchedule("DBM.AddOns.Razuvious.OnEvent");			-- Don't need the Loop & Warnings
				
			if (GetTime() - DBM.AddOns.Razuvious.LastAnnounce) > 4 then
				DBM.Announce(string.format(DBM_IR_SHOUT_WARNING, 25));		-- Callout Warning
				DBM.AddOns.Razuvious.LastAnnounce = GetTime();
			end
			DBM.Schedule(15, "DBM.AddOns.Razuvious.OnEvent", "DShout10SecWarning");			-- Schedule Warnings
			DBM.Schedule(20, "DBM.AddOns.Razuvious.OnEvent", "DShout5SecWarning");
			DBM.Schedule(22, "DBM.AddOns.Razuvious.OnEvent", "DShout3SecWarning");
				
			DBM.AddOns.Razuvious.OnLoop = true;
		elseif (event == "DShout10SecWarning") and DBM.AddOns.Razuvious.Options["10SecWarning"] then
			DBM.Announce(string.format(DBM_IR_SHOUT_WARNING, 10));
			
		elseif (event == "DShout5SecWarning") then
			DBM.Announce(string.format(DBM_IR_SHOUT_WARNING, 5));
			
		elseif (event == "DShout3SecWarning") then
--			DBM.Announce("*** Disrupting Shout in 3 Sec ***", "RAID_WARNING");
			
			DBM.Schedule(3.5, "DBM.AddOns.Razuvious.OnEvent", "StartNewDShoutTimer");			-- Schedule Loop
		end
	end,
}
