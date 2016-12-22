DBM.AddOns.Chromaggus = {
	["Name"] = DBM_CHROMAGGUS_NAME,
	["Abbreviation1"] = "chrom",
	["Version"] = "1.2",
	["Author"] = "Tandanu",
	["Description"] = DBM_CHROMAGGUS_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 7,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Frenzy"] = true,
		["Vulnerability"] = true,
	},
	["InCombat"] = false,
	["Breath1"] = DBM_CHROMAGGUS_BREATH_1,
	["Breath2"] = DBM_CHROMAGGUS_BREATH_2,
	["Vulnerability"] = "",
	["InCombat"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Chromaggus.Options.Frenzy",
			["text"] = DBM_CHROMAGGUS_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Chromaggus.Options.Frenzy = not DBM.AddOns.Chromaggus.Options.Frenzy; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Chromaggus.Options.Vulnerability",
			["text"] = DBM_CHROMAGGUS_ANNOUNCE_VULNERABILITY,
			["func"] = function() DBM.AddOns.Chromaggus.Options.Vulnerability = not DBM.AddOns.Chromaggus.Options.Vulnerability; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.Schedule(22 - delay, "DBM.AddOns.Chromaggus.OnEvent", "BreathWarning", 1);
		DBM.Schedule(54 - delay, "DBM.AddOns.Chromaggus.OnEvent", "BreathWarning", 2);
		DBM.StartStatusBarTimer(30 - delay, "Breath 1");
		DBM.StartStatusBarTimer(60 - delay, "Breath 2");
	end,
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" and arg1 then
			local breath;
			_, _, breath = string.find(arg1, DBM_CHROMAGGUS_BREATH_REGEXP);
			
			if breath == "Zeitraffer" then --fix me!
				breath = "Time Lapse";
			elseif breath == "Fleisch entzünden" then
				breath = "Ignite Flesh";
			elseif breath == "Verbrennen" then
				breath = "Incinerate";
			elseif breath == "Frostbeulen" then
				breath = "Frost Burn";
			elseif breath == "Ätzende Säure" then
				breath = "Corrosive Acid";
			end
			
			if breath then
				DBM.AddOns.Chromaggus.InCombat = true;
				if DBM.AddOns.Chromaggus.Breath1 == DBM_CHROMAGGUS_BREATH_1 then
					DBM.EndStatusBarTimer("Breath 1");
					DBM.AddOns.Chromaggus.Breath1 = breath;
				elseif DBM.AddOns.Chromaggus.Breath2 == DBM_CHROMAGGUS_BREATH_2 then
					DBM.EndStatusBarTimer("Breath 2");
					DBM.AddOns.Chromaggus.Breath2 = breath;
				end
				
				DBM.Announce(string.format(DBM_CHROMAGGUS_BREATH_CAST_WARNING, breath));
				
				DBM.EndStatusBarTimer(breath);
				
				local icon; --fix me
				if breath == DBM_CHROMAGGUS_TIME_LAPSE then
					icon = "Interface\\Icons\\Spell_Arcane_PortalOrgrimmar";
				elseif breath == DBM_CHROMAGGUS_IGNITE_FLESH then
					icon = "Interface\\Icons\\Spell_Fire_Fire";
				elseif breath == DBM_CHROMAGGUS_INCINERATE then
					icon = "Interface\\Icons\\Spell_Shadow_ChillTouch";
				elseif breath == DBM_CHROMAGGUS_FROST_BURN then
					icon = "Interface\\Icons\\Spell_Frost_ChillingBlast";
				elseif breath == DBM_CHROMAGGUS_CORROSIVE_ACID then
					icon = "Interface\\Icons\\Spell_Nature_Acid_01";
				end
				
				
				DBM.StartStatusBarTimer(2, breath.." cast", icon);
				DBM.Schedule(2, "DBM.AddOns.Chromaggus.OnEvent", "StartNewBreathTimer", breath);
			end
		elseif event == "StartNewBreathTimer" and arg1 then
			local icon; --fix me
			if arg1 == DBM_CHROMAGGUS_TIME_LAPSE then
				icon = "Interface\\Icons\\Spell_Arcane_PortalOrgrimmar";
			elseif arg1 == DBM_CHROMAGGUS_IGNITE_FLESH then
				icon = "Interface\\Icons\\Spell_Fire_Fire";
			elseif arg1 == DBM_CHROMAGGUS_INCINERATE then
				icon = "Interface\\Icons\\Spell_Shadow_ChillTouch";
			elseif arg1 == DBM_CHROMAGGUS_FROST_BURN then
				icon = "Interface\\Icons\\Spell_Frost_ChillingBlast";
			elseif arg1 == DBM_CHROMAGGUS_CORROSIVE_ACID then
				icon = "Interface\\Icons\\Spell_Nature_Acid_01";
			end
			
			DBM.EndStatusBarTimer(tostring(arg1));
			DBM.StartStatusBarTimer(60, tostring(arg1), icon);
			if arg1 == DBM.AddOns.Chromaggus.Breath1 then
				DBM.Schedule(50, "DBM.AddOns.Chromaggus.OnEvent", "BreathWarning", 1);
			elseif arg1 == DBM.AddOns.Chromaggus.Breath2 then
				DBM.Schedule(50, "DBM.AddOns.Chromaggus.OnEvent", "BreathWarning", 2);
			end
		elseif event == "BreathWarning" then
			if arg1 then
				DBM.Announce(string.format(DBM_CHROMAGGUS_BREATH_WARNING, DBM.AddOns.Chromaggus['Breath'..tostring(arg1)]));
			end
		elseif event == "CHAT_MSG_SPELL_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE" then		
			if DBM.AddOns.Chromaggus.Options.Vulnerability and DBM.AddOns.Chromaggus.Vulnerability == "" then
				local hitcrit, damage, damagetype;
				_, _, hitcrit, damage, damagetype = string.find(arg1, DBM_CHROMAGGUS_VULNERABILITY_REGEXP);
				
				if (hitcrit == DBM_HITS or hitcrit == DBM_CRITS) and tonumber(damage) and damagetype then
					DBM.AddOns.Chromaggus.InCombat = true;
					if (hitcrit == DBM_HITS and tonumber(damage) >= 666) or (hitcrit == DBM_CRITS and tonumber(damage) >= 1337) then
						DBM.AddOns.Chromaggus.Vulnerability = damagetype;
						DBM.Announce(DBM_CHROMAGGUS_NEW_VULNERABILITY_ANNOUNCE..damagetype.." ***");
					end
				end
			end
		elseif event == "CHAT_MSG_MONSTER_EMOTE" then
			if arg1 == DBM_CHROMAGGUS_FRENZY_EXPR and arg2 == DBM_CHROMAGGUS_CHROMAGGUS then
				DBM.EndStatusBarTimer("Frenzy")
				DBM.StartStatusBarTimer(15.6, "Frenzy", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
				if DBM.AddOns.Chromaggus.Options.Frenzy then
					DBM.Announce(DBM_CHROMAGGUS_FRENZY_ANNOUNCE);
				end
			elseif arg1 == DBM_CHROMAGGUS_VULNERABILITY_EXPR and arg2 == DBM_CHROMAGGUS_CHROMAGGUS then
				if DBM.AddOns.Chromaggus.Options.Vulnerability then
					DBM.Announce(DBM_CHROMAGGUS_VULNERABILITY_ANNOUNCE);
					DBM.Schedule(3, "DBM.AddOns.Chromaggus.OnEvent", "ClearVulnerability");
				end
			end
		elseif event == "ClearVulnerability" then
			DBM.AddOns.Chromaggus.Vulnerability = "";
		end
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.Chromaggus.Breath1 = "Breath 1";
		DBM.AddOns.Chromaggus.Breath2 = "Breath 2";
		DBM.AddOns.Chromaggus.Vulnerability = "";
	end,
};
