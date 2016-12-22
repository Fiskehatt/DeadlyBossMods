DBM.AddOns.Magmadar = { 
	["Name"] = DBM_MAGMADAR_NAME,
	["Abbreviation1"] = "Magma", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MAGMADAR_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 2,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Frenzy"] = true,
	},
	["Fearing"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Magmadar.Options.Frenzy",
			["text"] = DBM_MAGMADAR_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Magmadar.Options.Frenzy = not DBM.AddOns.Magmadar.Options.Frenzy; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( (event == "CHAT_MSG_MONSTER_EMOTE") and ( arg1 == DBM_MAGMADAR_FRENZY ) and ( arg2 == DBM_MAGMADAR_NAME ) ) then
			DBM.EndStatusBarTimer("Frenzy")
			DBM.StartStatusBarTimer(10, "Frenzy", "Interface\\Icons\\INV_Misc_MonsterClaw_03");
			if DBM.AddOns.Magmadar.Options.Frenzy then
				DBM.Announce(DBM_MAGMADAR_FRENZY_WARNING);
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then
			if ( string.find(arg1, DBM_MAGMADAR_FEAR) ) and not DBM.AddOns.Magmadar.Fearing then
				DBM.AddOns.Magmadar.Fearing = true;
				DBM.Announce(DBM_MAGMADAR_FEAR_WARNING1);
				DBM.Schedule(25, "DBM.AddOns.Magmadar.OnEvent", "FearWarning");
				DBM.EndStatusBarTimer("Fear");
				DBM.StartStatusBarTimer(30, "Fear", "Interface\\Icons\\Spell_Shadow_PsychicScream");
			end
		elseif (event == "FearWarning") then
			DBM.Announce(DBM_MAGMADAR_FEAR_WARNING2);
			DBM.AddOns.Magmadar.Fearing = false;
		end
	end,		
};
