-- http://www.allegro-c.de/unicode/zcodes.htm
--


if (GetLocale()=="deDE") then
	DBM_BGMOD_LANG["THANKS"] 		= "Danke das du die La Vendetta Boss Mods verwendest. Viel Spass noch beim PvP.";
	DBM_BGMOD_LANG["WINS"]			= "Die (%w+) siegt!"; 
	DBM_BGMOD_LANG["BEGINS"]		= "Spiel startet in";
	DBM_BGMOD_LANG["ALLIANCE"]		= "Allianz";
	DBM_BGMOD_LANG["HORDE"]		= "Horde";
	DBM_BGMOD_LANG["ALLI_TAKE_ANNOUNCE"] 	= "*** Die Allianz hat %s erobert ***";
	DBM_BGMOD_LANG["HORDE_TAKE_ANNOUNCE"]	= "*** Die Horde hat %s erobert ***";


		-- AV
	DBM_BGMOD_LANG["AV_ZONE"] 		= "Alteractal";
	DBM_BGMOD_LANG["AV_START60SEC"]	= "Der Kampf um das Alteractal beginnt in 1 Minute.";
	DBM_BGMOD_LANG["AV_START30SEC"]	= "Der Kampf um das Alteractal beginnt in 30 Sekunden.";
	DBM_BGMOD_LANG["AV_TURNININFO"] 	= "Automatisches abgeben von Questgegenst\195\164nden";
	DBM_BGMOD_LANG["AV_NPC"] 		= {
			["SMITHREGZAR"] = "Schmied Regzar", -- armor
			["PRIMALISTTHURLOGA"] = "Primalist Thurloga", -- icelord
			["WINGCOMMANDERJEZTOR"] = "Schwadronskommandant Jeztor", 
			["WINGCOMMANDERGUSE"] = "Schwadronskommandant Guse",
			["WINGCOMMANDERMULVERICK"] = "Schwadronskommandant Mulverick",
			["MURGOTDEEPFORGE"] = "Murgot Tiefenschmied", -- armor
			["ARCHDRUIDRENFERAL"] = "Erzdruide Renferal", -- forestlord
			["WINGCOMMANDERVIPORE"] = "Schwadronskommandant Vipore",
			["WINDCOMMANDERSLIDORE"] = "Schwadronskommandant Slidore",
			["WINGCOMMANDERICHMAN"] = "Schwadronskommandant Ichman",
			["STORMPIKERAMRIDERCOMMANDER"] = "Kommandant der Sturmlanzenwidderreiter", -- riders
			["FROSTWOLFWOLFRIDERCOMMANDER"] = "Wolfsreiterkommandant der Frostwolf",
		};
	DBM_BGMOD_LANG["AV_ITEM"] 		= {
			["ARMORSCRAPS"] = "R\195\188stungsfetzen",
			["SOLDIERSBLOOD"] = "Blut eines Soldaten der Sturmlanzen",
			["LIEUTENANTSFLESH"] = "Fleisch eines Lieutenants der Sturmlanzen",
			["SOLDIERSFLESH"] = "Fleisch eines Soldaten der Sturmlanzen",
			["COMMANDERSFLESH"] = "Fleisch eines Kommandanten der Sturmlanzen",
			["STORMCRYSTAL"] = "Sturmkristall",
			["LIEUTENANTSMEDAL"] = "Medaille des Lieutenants der Frostw\195\182lfe",
			["SOLDIERSMEDAL"] = "Medaille des Soldaten der Frostw\195\182lfe",
			["COMMANDERSMEDAL"] = "Medaille des Kommandanten der Frostw\195\182lfe",
			["FROSTWOLFHIDE"] = "Frostwolfbalg",
			["ALTERACRAMHIDE"] = "Alteracwidderbalg",
		};
	DBM_BGMOD_LANG["AV_TARGETS"] 		= {
			"Lazarett der Sturmlanzen",
			"Nordbunker von Dun Baldar",
			"S\195\188dbunker von Dun Baldar",
			"Friedhof der Sturmlanzen",
			"Eisschwingenbunker",
			"Steinbruchfriedhof",
			"Steinbruchbunker",
			"Schneewehenfriedhof",
			"Eisblutturm",
			"Eisblutfriedhof",
			"Turmstellung",
			"Friedhof der Frostw\195\182lfe",
			"westliche Frostwolfturm",
			"\195\182stliche Frostwolfturm",
			"Heilerh\195\188tte der Frostw\195\182lfe"
	};
	DBM_BGMOD_LANG["AV_UNDERATTACK"]	= "%w+ (.+) wird angegriffen! Wenn %w+ unbewacht bleibt, wird die (%w+) %w+ .+!";
	DBM_BGMOD_LANG["AV_WASTAKENBY"]	= "%w+ (.+) wurde von der (%w+) erobert!";
	DBM_BGMOD_LANG["AV_WASDESTROYED"]	= "%w+ (.+) wurde von der (%w+) zerst\195\182rt";	
	--DBM_BGMOD_LANG["AV_IVUS"]		= "Wicked, Wicked, Mortals! The forest weeps";
	--DBM_BGMOD_LANG["AV_ICEY"]		= "WHO DARES SUMMON LOKHOLAR";


		-- AB
	DBM_BGMOD_LANG["AB_ZONE"] = "Arathibecken";
	DBM_BGMOD_LANG["AB_INFOFRAME_INFO"]	= "Geschätzte Punkte am Ende des Spiels zeigen";
	DBM_BGMOD_LANG["AB_START60SEC"] = "Die Schlacht um das Arathibecken wird in 1 Minute beginnen.";
	DBM_BGMOD_LANG["AB_START30SEC"] = "Die Schlacht um das Arathibecken wird in 30 Sekunden beginnen.";
	DBM_BGMOD_LANG["AB_CLAIMSTHE"] = "besetzt";
	DBM_BGMOD_LANG["AB_HASTAKENTHE"] = "eingenommen";
	DBM_BGMOD_LANG["AB_HASDEFENDEDTHE"] = "verteidigt";
	DBM_BGMOD_LANG["AB_HASASSAULTED"] = "(%w+) hat (.+) angegriffen!";
	DBM_BGMOD_LANG["AB_SCOREEXP"] = "Basen: (%d+)  Ressourcen: (%d+)/2000"; -- beware of the dual spaces
	DBM_BGMOD_LANG["AB_WINALLY"] = "Allianz gewinnt in:";
	DBM_BGMOD_LANG["AB_WINHORDE"] = "Horde gewinnt in:";
	DBM_BGMOD_LANG["AB_TARGETS"] 		= {
			"Hof",
			"S\195\164gewerk",
			"Schmiede",
			"Mine",
			"St\195\164lle"
		};

	DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"] 		= {
			"den Hof",
			"das S\195\164gewerk",
			"die Schmiede",
			"die Mine",
			"die St\195\164lle"
	};
		
		-- WSG
	DBM_BGMOD_LANG["WSG_ZONE"] = "Kriegshymnenschlucht";
	DBM_BGMOD_LANG["WSG_START60SEC"] = "Der Kampf um die Kriegshymnenschlucht beginnt in 1 Minute.";
	DBM_BGMOD_LANG["WSG_START30SEC"] = "Der Kampf um die Kriegshymnenschlucht beginnt in 30 Sekunden. Haltet Euch bereit!";
	DBM_BGMOD_LANG["WSG_INFOFRAME_INFO"] = "Zeige Flaggen Träger";
	DBM_BGMOD_LANG["WSG_FLAG_PICKUP"] = "(.*) hat die Flagge der (%w+) aufgenommen!";
	DBM_BGMOD_LANG["WSG_FLAG_RETURN"] = "Die Flagge der (%w+) wurde von (.+) zu ihrem St\195\188tzpunkt zur\195\188ckgebracht!";
	DBM_BGMOD_LANG["WSG_ALLYFLAG"] = "Allianz Flagge: ";
	DBM_BGMOD_LANG["WSG_HORDEFLAG"] = "Horde Flagge: ";
	DBM_BGMOD_LANG["WSG_FLAG_BASE"] = "Basis";
	DBM_BGMOD_LANG["WSG_HASCAPTURED"] = "(.+) hat die Flagge der (%w+) errungen!";

	--added 9.12
	DBM_BGMOD_LANG["ARENA_BEGIN"]		= "Noch eine Minute bis der Arenakampf beginnt!";
	DBM_BGMOD_LANG["ARENA_BEGIN30"]	= "Noch dreißig Sekunden bis der Arenakampf beginnt!";
	DBM_BGMOD_LANG["ARENA_BEGIN15"]	= "Noch fünfzehn Sekunden bis der Arenakampf beginnt!";
	
		-- BARS
	DBM_SBT["Alliance: Stormpike Aid Station"] = "Lazarett der Sturmlanzen";
	DBM_SBT["Alliance: Dun Baldar North Bunker"] = "Nordbunker von Dun Baldar";
	DBM_SBT["Alliance: Dun Baldar South Bunker"] = "S\195\188dbunker von Dun Baldar";
	DBM_SBT["Alliance: Stormpike Graveyard"] = "Friedhof der Sturmlanzen";
	DBM_SBT["Alliance: Icewing Bunker"] = "Eisschwingenbunker";
	DBM_SBT["Alliance: Stonehearth Graveyard"] = "Steinbruchfriedhof";
	DBM_SBT["Alliance: Stonehearth Bunker"] = "Steinbruchbunker";
	DBM_SBT["Alliance: Snowfall Graveyard"] = "Schneewehenfriedhof";
	DBM_SBT["Alliance: Iceblood Tower"] = "Eisblutturm";
	DBM_SBT["Alliance: Iceblood Graveyard"] = "Eisblutfriedhof";
	DBM_SBT["Alliance: Tower Point"] = "Turmstellung";
	DBM_SBT["Alliance: Frostwolf Graveyard"] = "Friedhof der Frostw\195\182lfe";
	DBM_SBT["Alliance: West Frostwolf Tower"] = "Westlicher Frostwolfturm";
	DBM_SBT["Alliance: East Frostwolf Tower"] = "\195\150stlicher Frostwolfturm";
	DBM_SBT["Alliance: Frostwolf Relief Hut"] = "H\195\188tte der Heiler";
	DBM_SBT["Alliance: Farm"] = "Hof";
	DBM_SBT["Alliance: Lumber mill"] = "S\195\164gewerk";
	DBM_SBT["Alliance: Blacksmith"] = "Schmiede";
	DBM_SBT["Alliance: Mine"] = "Mine";
	DBM_SBT["Alliance: Stables"] = "St\195\164lle";

	DBM_SBT["Horde: Stormpike Aid Station"] = "Lazarett der Sturmlanzen";
	DBM_SBT["Horde: Dun Baldar North Bunker"] = "Nordbunker von Dun Baldar";
	DBM_SBT["Horde: Dun Baldar South Bunker"] = "S\195\188dbunker von Dun Baldar";
	DBM_SBT["Horde: Stormpike Graveyard"] = "Friedhof der Sturmlanzen";
	DBM_SBT["Horde: Icewing Bunker"] = "Eisschwingenbunker";
	DBM_SBT["Horde: Stonehearth Graveyard"] = "Steinbruchfriedhof";
	DBM_SBT["Horde: Stonehearth Bunker"] = "Steinbruchbunker";
	DBM_SBT["Horde: Snowfall Graveyard"] = "Schneewehenfriedhof";
	DBM_SBT["Horde: Iceblood Tower"] = "Eisblutturm";
	DBM_SBT["Horde: Iceblood Graveyard"] = "Eisblutfriedhof";
	DBM_SBT["Horde: Tower Point"] = "Turmstellung";
	DBM_SBT["Horde: Frostwolf Graveyard"] = "Friedhof der Frostw\195\182lfe";
	DBM_SBT["Horde: West Frostwolf Tower"] = "Westlicher Frostwolfturm";
	DBM_SBT["Horde: East Frostwolf Tower"] = "\195\150stlicher Frostwolfturm";
	DBM_SBT["Horde: Frostwolf Relief Hut"] = "H\195\188tte der Heiler";
	DBM_SBT["Horde: Farm"] = "Hof";
	DBM_SBT["Horde: Lumber mill"] = "S\195\164gewerk";
	DBM_SBT["Horde: Blacksmith"] = "Schmiede";
	DBM_SBT["Horde: Mine"] = "Mine";
	DBM_SBT["Horde: Stables"] = "St\195\164lle";


	-- DBM_SBT["Flag respawn"] = "Flaggen Respawn in";
	-- DBM_SBT["Ivus spawn"] = "";
	-- DBM_SBT["Ice spawn"] = "";
	DBM_SBT["Begins"] = DBM_BGMOD_LANG["BEGINS"];
	DBM_SBT["AB_WINHORDE"] = DBM_BGMOD_LANG.AB_WINHORDE;
	DBM_SBT["AB_WINALLY"] = DBM_BGMOD_LANG.AB_WINALLY;
	DBM_BGMOD_LANG["SHOW_INV_TIMER"] = "Timer bei BG Einladung zeigen";
	
	DBM_BGMOD_LANG["AB_DESCRIPTION"]	= "Zeigt Timer an und berechnet die Zeit bis man gewinnt oder verliert.";
	DBM_BGMOD_LANG["AV_DESCRIPTION"]	= "Zeigt Timer für Türme und Friedhöfe.";
	DBM_BGMOD_LANG["WS_DESCRIPTION"]	= "Zeigt den Flaggenträger.";
	
end
