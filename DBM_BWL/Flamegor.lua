DBM.AddOns.Flamegor = {
	["Name"] = DBM_FLAMEGOR_NAME,
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_FLAMEGOR_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 6,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Frenzy"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Flamegor.Options.Frenzy",
			["text"] = DBM_FLAMEGOR_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Flamegor.Options.Frenzy = not DBM.AddOns.Flamegor.Options.Frenzy; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(31 - delay, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
		DBM.Schedule(28 - delay, "DBM.AddOns.Flamegor.OnEvent", "WingBuffetWarning", 3);
	end,
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" then
			if arg1 == DBM_FLAMEGOR_WING_BUFFET then
				DBM.Announce(string.format(DBM_WING_BUFFET_WARNING, 1))
				DBM.StartStatusBarTimer(1, "Wing Buffet Cast", "Interface\\Icons\\INV_Misc_MonsterScales_14");
				DBM.Schedule(29, "DBM.AddOns.Flamegor.OnEvent", "WingBuffetWarning", 3);
				DBM.Schedule(1, "DBM.AddOns.Flamegor.OnEvent", "WingBuffetWarning", 31);
			elseif arg1 == DBM_FLAMEGOR_SHADOW_FLAME then
				DBM.Announce(DBM_SHADOW_FLAME_WARNING);
				DBM.StartStatusBarTimer(2, "Shadow Flame Cast", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
		elseif event == "WingBuffetWarning" then
			if arg1 == 3 then
				DBM.Announce(string.format(DBM_WING_BUFFET_WARNING, 3));
			elseif arg1 == 31 then
				DBM.EndStatusBarTimer("Wing Buffet");
				DBM.StartStatusBarTimer(31, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
			end
		elseif event == "CHAT_MSG_MONSTER_EMOTE" then
			if arg1 == DBM_FLAMEGOR_FRENZY and arg2 == DBM_FLAMEGOR_FLAMEGOR then
				DBM.EndStatusBarTimer("Frenzy")
				DBM.StartStatusBarTimer(9, "Frenzy", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
				if DBM.AddOns.Flamegor.Options.Frenzy then
					DBM.Announce(DBM_FLAMEGOR_FRENZY_ANNOUNCE);
				end
			end
		end
	end,
};
