
DBM.AddOns.Maexxna = {
	["Name"] = DBM_MAEXXNA_NAME,
	["Abbreviation1"] = "Maex",
	["Abbreviation2"] = "Maexx",
	["Abbreviation3"] = "Mae",
	["Version"] = "1.7",
	["Author"] = "Tandanu",
	["Description"] = DBM_MAEXXNA_DESCRIPTION,
	["Instance"] = DBM_NAXX,
	["GUITab"] = DBMGUI_TAB_NAXX,
	["Sort"] = 13,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Yell"] = true,
	},
	["isSpraying"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Maexxna.Options.Yell",
			["text"] = DBM_MAEXXNA_YELL_ON_WRAP,
			["func"] = function() DBM.AddOns.Maexxna.Options.Yell = not DBM.AddOns.Maexxna.Options.Yell; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_HITS"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_COMBAT_FRIENDLY_DEATH"] = true,
	},	
	["OnCombatStart"] = function(delay)
			DBM.Schedule(25 - delay, "DBM.AddOns.Maexxna.OnEvent", "SprayWarning", 15);
			DBM.Schedule(35 - delay, "DBM.AddOns.Maexxna.OnEvent", "SprayWarning", 5);
			DBM.Schedule(25 - delay, "DBM.AddOns.Maexxna.OnEvent", "SpiderWarning", 5);
			DBM.Schedule(30 - delay, "DBM.AddOns.Maexxna.OnEvent", "SpiderWarning", 0);
			DBM.StartStatusBarTimer(40 - delay, "Web Spray", "Interface\\Icons\\Spell_Nature_Web");
			DBM.StartStatusBarTimer(30 - delay, "Spider Spawn", "Interface\\Icons\\INV_Misc_MonsterSpiderCarapace_01");
	end,
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_HITS" 
		    or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" 
		    or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" 
		    or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE") then
			if (string.find(arg1, DBM_MAEXXNA_WEB_SPRAY) and (not DBM.AddOns.Maexxna.isSpraying)) then			
				DBM.Schedule(25, "DBM.AddOns.Maexxna.OnEvent", "SprayWarning", 15);
				DBM.Schedule(35, "DBM.AddOns.Maexxna.OnEvent", "SprayWarning", 5);
				DBM.Schedule(25, "DBM.AddOns.Maexxna.OnEvent", "SpiderWarning", 5);
				DBM.Schedule(30, "DBM.AddOns.Maexxna.OnEvent", "SpiderWarning", 0);
				DBM.StartStatusBarTimer(40, "Web Spray", "Interface\\Icons\\Spell_Nature_Web");
				DBM.StartStatusBarTimer(30, "Spider Spawn", "Interface\\Icons\\INV_Misc_MonsterSpiderCarapace_01");
				
				DBM.AddOns.Maexxna.isSpraying = true;
				DBM.Schedule(10, "DBM.AddOns.Maexxna.OnEvent", "ResetIsSpraying"); 
			end
         
			local _, _, playerName = string.find(arg1, DBM_MAEXXNA_WEB_WRAP_REGEXP);
			if playerName == DBM_YOU then
				playerName = UnitName("player");
				if DBM.AddOns.Maexxna.Options.Yell then
					for i = 1, GetNumRaidMembers() do
						local name, rank, subgroup;
						name, rank, subgroup = GetRaidRosterInfo(i)
						if name == UnitName("player") then
							SendChatMessage(string.format(DBM_MAEXXNA_WEB_WRAP_YELL, name, subgroup), "YELL");
							break;
						end
					end
				end
			end
			if (playerName) then
				DBM.Announce(string.format(DBM_MAEXXNA_WRAP_WARNING, tostring(playerName)));
			end		
		elseif event == "ResetIsSpraying"  then
			DBM.AddOns.Maexxna.isSpraying = false;			
		elseif event == "SprayWarning" then
			if arg1 then
				DBM.Announce(string.format(DBM_MAEXXNA_SPRAY_WARNING, arg1));
			end
		elseif event == "SpiderWarning" then
			if arg1 and arg1 > 0 then
				DBM.Announce(string.format(DBM_MAEXXNA_SPIDER_WARNING, arg1));
			elseif arg1 == 0 then
				DBM.Announce(DBM_MAEXXNA_SPIDERS_SPAWNED);
			end
		end      
   end,   
};
