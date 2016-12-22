DBM.AddOns.Gehennas = { 
	["Name"] = DBM_GEHENNAS_NAME,
	["Abbreviation1"] = "Gehennas", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_GEHENNAS_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 3,
	["isCasting"] = false,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then
			if ( string.find(arg1, DBM_GEHENNAS_CURSE_REGEXP) ) and not DBM.AddOns.Gehennas.isCasting then
				DBM.AddOns.Gehennas.isCasting = true;
				DBM.Schedule(25, "DBM.AddOns.Gehennas.OnEvent", "CurseWarning", 5);
				DBM.EndStatusBarTimer("Curse");
				DBM.StartStatusBarTimer(30, "Curse", "Interface\\Icons\\Spell_Shadow_GatherShadows");
				DBM.Announce(DBM_GEHENNAS_CURSE_WARNING);
			end
		elseif (event == "CurseWarning") then
			if arg1 then
				DBM.Announce(string.format(DBM_GEHENNAS_CURSE_SOON_WARN, arg1));
				DBM.AddOns.Gehennas.isCasting = false;
			end
		end
	end,		
};
