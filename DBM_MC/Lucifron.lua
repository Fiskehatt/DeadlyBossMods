DBM.AddOns.Lucifron = { 
	["Name"] = DBM_LUCIFRON_NAME,
	["Abbreviation1"] = "Luci", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_LUCIFRON_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 1,
	["Curse"] = false,
	["Doom"] = false,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1)
		if ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then
			if ( string.find(arg1, DBM_LUCIFRON_CURSE_REGEXP) ) and not DBM.AddOns.Lucifron.Curse then
				DBM.AddOns.Lucifron.Curse = true;
				DBM.Announce(DBM_LUCIFRON_CURSE_WARNING);
				DBM.Schedule(15, "DBM.AddOns.Lucifron.OnEvent", "CurseWarning", 5);
				DBM.EndStatusBarTimer("Curse");
				DBM.StartStatusBarTimer(20, "Curse", "Interface\\Icons\\Spell_Shadow_BlackPlague");
			elseif ( string.find(arg1, DBM_LUCIFRON_DOOM_REGEXP) ) and not DBM.AddOns.Lucifron.Doom then
				DBM.AddOns.Lucifron.Doom = true;
				DBM.Announce(DBM_LUCIFRON_DOOM_WARNING);
				DBM.Schedule(15, "DBM.AddOns.Lucifron.OnEvent", "DoomWarning", 5);
				DBM.EndStatusBarTimer("Impending Doom");
				DBM.StartStatusBarTimer(20, "Impending Doom", "Interface\\Icons\\Spell_Shadow_NightOfTheDead");
			end
		elseif (event == "CurseWarning") then
			if arg1 then
				DBM.Announce(string.format(DBM_LUCIFRON_CURSE_SOON_WARNING, arg1));
				DBM.AddOns.Lucifron.Curse = false;
			end
		elseif (event == "DoomWarning") then
			if arg1 then
				DBM.Announce(string.format(DBM_LUCIFRON_DOOM_SOON_WARNING, arg1));
				DBM.AddOns.Lucifron.Doom = false;
			end
		end
	end,		
};
