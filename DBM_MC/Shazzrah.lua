DBM.AddOns.Shazzrah = { 
	["Name"] = DBM_SHAZZRAH_NAME,
	["Abbreviation1"] = "Shazz", 
	["Version"] = "1.1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_SHAZZRAH_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 6,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Curse"] = false,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1)
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" ) then
			if ( arg1 == DBM_SHAZZRAH_DEADEN_MAGIC ) then
				DBM.Announce(DBM_SHAZZRAH_DEADEN_WARN);
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then
			if ( string.find(arg1, DBM_SHAZZRAH_CURSE_REGEXP) ) and not DBM.AddOns.Shazzrah.Curse then
				DBM.AddOns.Shazzrah.Curse = true;
				DBM.Announce(DBM_SHAZZRAH_CURSE_WARNING);
				DBM.Schedule(15, "DBM.AddOns.Lucifron.OnEvent", "ShazzCurseWarning", 5);
				DBM.EndStatusBarTimer("Curse");
				DBM.StartStatusBarTimer(20, "Curse", "Interface\\Icons\\Spell_Shadow_AntiShadow");
			end
		elseif ( event == "ShazzCurseWarning" ) then
			if arg1 then
				DBM.Announce(string.format(DBM_SHAZZRAH_CURSE_SOON_WARNING, arg1));
				DBM.AddOns.Shazzrah.Curse = false;
			end
		end
	end,		
};
