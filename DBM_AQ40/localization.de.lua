if GetLocale() == "deDE" then
	--Skeram
	DBM_SKERAM_NAME		= "Prophet Skeram";
	DBM_SKERAM_DESCRIPTION	= "Warnt vor Skerams Arkaner Explosion und Gedankenkontrolle.";
	
	DBM_SKERAM_AE	= "*** Arkane Explosion ***";
	DBM_SKERAM_MC	= "*** %s ist \195\188bernommen ***";
	
	DBM_SKERAM_CAST_SPELL_AE			= "Der Prophet Skeram beginnt Arkane Explosion zu wirken.";
	DBM_SKERAM_MIND_CONTROL_TEXTURE	= "Spell_Shadow_Charm";
	DBM_SKERAM_MIND_CONTROL_DEBUFF		= "Wahre Erf\195\188llung";	

	-- 2. Three Bugs (Vem & Co)
	DBM_THREEBUGS_NAME			= "Drei Käfer - Vem, Yauj and Kri";
	DBM_THREEBUGS_VEM			= "Vem";
	DBM_THREEBUGS_YAUJ			= "Prinzessin Yauj";
	DBM_THREEBUGS_KRI			= "Lord Kri";
	DBM_THREEBUGS_VEM			= "Vem";
	DBM_THREEBUGS_REAL_NAME	= "Drei Käfer";
	DBM_THREEBUGS_FEAR_EXPR		= "(.+) (.+) betroffen von Furcht.";
	DBM_THREEBUGS_FEAR_ANNOUNCE		= "*** Yauj Fear in %d Sek ***";
	DBM_THREEBUGS_CASTHEAL_EXPR		= "Yauj beginngt Große Heilung zu wirken.";
	DBM_THREEBUGS_CASTHEAL_ANNOUNCE	= "*** Yauj zaubert Heilung, jetzt Unterbrechen ***";
	DBM_SBT["Great Heal Cast"] 		= "Große Heilung";	
	
	--Sartura
	DBM_SARTURA_NAME			= "Schlachtwache Sartura"
	DBM_SARTURA_DESCRIPTION	= "Stellt einen Timer f\195\188r Sarturas Wirbelwind zur Verf\195\188gung"
	
	DBM_SARTURA_ANNOUNCE_WHIRLWIND	= "*** Wirbelwind ***"
	DBM_SARTURA_WHIRLWIND_FADED	= "*** Wirbelwind ausgelaufen - stunnen! ***"
	
	DBM_SARTURA_GAIN_WHIRLWIND		= "Schlachtwache Sartura bekommt Wirbelwind.";
	DBM_SARTURA_WHIRLWIND_FADES	= "Wirbelwind schwindet von Schlachtwache Sartura.";
	DBM_SARTURA_ENRAGE			= "%s wird w\195\188tend";
	DBM_SARTURA_SARTURA		= "Schlachtwache Sartura";
	
	DBM_SBT["Whirlwind"] = "Wirbelwind";
	
	--Fankriss
	DBM_FANKRISS_NAME			= "Fankriss der Unnachgiebige"
	DBM_FANKRISS_DESCRIPTION	= "Sagt den Spawn der W\195\188rner an."
	
	DBM_FANKRISS_SPAWN_WARNING	= "*** Wurm gespawned ***"
	
	DBM_FANKRISS_WORM_SPAWNED	= "Fankriss der Unnachgiebige wirkt Wurm beschw\195\182ren.";

	--Huhuran
	DBM_HUHURAN_NAME				= "Prinzessin Huhuran";
	DBM_HUHURAN_DESCRIPTION		= "Stellt einen Timer f\195\188r Huhurans Wyvern Sting zur Verf\195\188gung und warnt vor Frenzy.";
	DBM_HUHURAN_ANNOUNCE_FRENZY	= "Frenzy ansagen";
	
	DBM_HUHURAN_WYVERN_WARNING	= "*** Stich des Fl\195\188geldrachens in ~5 Sek ***";
	
	DBM_HUHURAN_WYVERN_REGEXP	= "(%w+) ist von Stich des Fl\195\188geldrachens betroffen.";
	DBM_HUHURAN_FRENZY			= "%s ger\195\164t in Raserei!";
	DBM_HUHURAN_HUHURAN		= "Prinzessin Huhuran";
	
	DBM_SBT["Wyvern Sting Cooldown"] = "Stich des Fl\195\188geldrachens Cooldown";
	
	
	--Defenders
	DBM_DEFENDER_NAME			= "Verteidiger des Anubisath";
	DBM_DEFENDER_DESCRIPTION	= "Warnt vor Explosion und Seuche.";
	DBM_DEFENDER_WHISPER		= "Whisper verschicken";
	DBM_DEFENDER_PLAGUE		= "Seuche ansagen";
	
	DBM_DEFENDER_ANNOUNCE_EXPLODE	= "*** Explosion ***";
	DBM_DEFENDER_ANNOUNCE_PLAGUE	= "*** %s hat die Seuche ***";
	DBM_DEFENDER_WHISPER_PLAGUE	= "Du hast die Seuche!";
	DBM_DEFENDER_PLAGUE_WARNING	= "Seuche";
	
	DBM_DEFENDER_GAIN_EXPLODE	= "Verteidiger des Anubisath bekommt 'Explodieren'.";
	DBM_DEFENDER_PLAGUE_REGEXP	= "([^%s]+) (%w+) von Seuche betroffen.";
	
	DBM_SBT["Explode"]	= "Explosion";
	
	
	--Twin Emperors
	DBM_TWINEMPS_NAME		= "Zwillings Imperatoren";
	DBM_TWINEMPS_DESCRIPTION	= "Stellt Timer f\195\188r die Zwillings Imperatoren zur Verf\195\188gung. Die Käfer Explosions Warnung sollte mit hoher Combat Log Reichweite nicht verwendet werden."
	DBM_TWINEMPS_BUG_EXPLOE	= "Warnung anzeigen, wenn ein Käfer explodiert";
	
	DBM_TWINEMPS_TELEPORT_WARNING	= "*** Teleport in %s Sek ***";
	DBM_TWINEMPS_ENRAGE_WARNING	= "*** Enrage in %s %s ***";

	DBM_TWINEMPS_TELEPORT_ANNOUNCE	= "*** Teleport ***";
	
	DBM_TWINEMPS_CAST_SPELL_1	= "Imperator Vek'lor wirkt Zwillingsteleport.";
	DBM_TWINEMPS_CAST_SPELL_2	= "Imperator Vek'nilash wirkt Zwillingsteleport.";
	DBM_TWINEMPS_VEKNILASH		= "Imperator Vek'nilash";
	DBM_TWINEMPS_VEKLOR		= "Imperator Vek'lor";

	DBM_TWINEMPS_EXPLODE_EXPR 	= "(.+) bekommt 'K\195\164fer explodieren lassen'.";
	DBM_TWINEMPS_EXPLODE_ANNOUNCE 	= "K\195\164fer Bombe - lauf weg";
	
	DBM_SBT["Enrage"]		= "Enrage";
	DBM_SBT["Teleport"]		= "Teleport";
	
	
	--Ouro
	DBM_OURO_NAME			= "Ouro";
	DBM_OURO_DESCRIPTION	= "Stellt Timer für Ouro zur Verfügung.";
	
	DBM_OURO_SWEEP_SOON_WARNING		= "*** Feger in ~5 Sek ***";
	DBM_OURO_BLAST_SOON_WARNING		= "*** Sandstoß in ~5 Sek ***";
	DBM_OURO_SWEEP_WARNING				= "*** Feger in 1 Sek ***";
	DBM_OURO_BLAST_WARNING				= "*** Sandstoß in 2 Sek ***";
	DBM_OURO_SUBMERGED_WARNING			= "*** Ouro ist für 30 Sek untergetaucht ***";
	DBM_OURO_EMERGE_SOON_WARNING		= "*** ~5 Sekunden bis Ouro auftaucht ***";
	DBM_OURO_EMERGED_WARNING			= "*** Ouro ist aufgetaucht - 3 Minuten bis zum Untertauchen ***";
	DBM_OURO_POSSIBLE_SUBMERGE_WARNING	= "*** Ouro taucht vielleicht in 10 Sekunden unter ***";
	DBM_OURO_SUBMERGE_WARNING			= "*** %s Sekunden bis Ouro untertaucht ***";
	
	DBM_OURO_CAST_SWEEP		= "Ouro beginnt Feger zu wirken.";
	DBM_OURO_CAST_SAND_BLAST	= "Ouro beginnt Sandstoß auszuführen.";
	DBM_OURO_DIRT_MOUND_QUAKE	= "Erdhaufens Erdbeben";
	DBM_OURO_ENRAGE			= "%s goes into a berserker rage!";
	DBM_OURO_OURO				= "Ouro";
	
	DBM_SBT["Submerge"]		= "Untertauchen";
	DBM_SBT["Emerge"]			= "Auftauchen";
	DBM_SBT["Sand Blast"]		= "Sandsto\195\159";
	DBM_SBT["Sand Blast Cast"]	= "Sandsto\195\159 Cast";
	DBM_SBT["Sweep"]			= "Feger"
	DBM_SBT["Sweep Cast"]		= "Feger Cast";
	
	
	--CThun
	DBM_CTHUN_NAME				= "C'Thun"
	DBM_CTHUN_DESCRIPTION			= "Stellt Timer f\195\188r Tentakel zur Verf\195\188gung und sagt die Ziele vons Dark Glare an. Jeder au\195\159er dem 'Main Tank' (= die Person, die als erstes rein l\195\164uft) sollte Ansagen deaktivieren.";
	DBM_CTHUN_SLASHHELP1			=  "/cthun start - startet die Timer";
	DBM_CTHUN_RANGE_CHECK			= "Reichweiten Check";
	DBM_CTHUN_RANGE_CHECK_PHASE2		= "Reichweiten Check auch in Phase2"

	DBM_CTHUN_SMALL_EYE_WARNING		= "*** Augententakel in %s Sek ***";
	DBM_CTHUN_DARK_GLARE_WARNING		= "*** Dunkles Starren in %s Sek ***";
	DBM_CTHUN_DARK_GLARE_ON_GROUP		= "*** Dunkles Starren auf Gruppe ";
	DBM_CTHUN_DARK_GLARE_ON_YOU		= "Dunkles Starren auf dir!";
	DBM_CTHUN_DARK_GLARE_TIMER_FAILED	= "Dunkles Starren Timer Anpassung fehlgeschlagen.";
	DBM_CTHUN_DARK_GLARE_END_WARNING	= "*** Dunkles Starren endet in 5 Sek ***";
	DBM_CTHUN_GIANT_CLAW_WARNING		= "*** Riesiges Klauententakel in 10 Sek ***";
	DBM_CTHUN_GIANT_AND_EYES_WARNING	= "*** Riesiges %stentakel und Augententakel in 10 Sek ***";
	DBM_CTHUN_WEAKENED_WARNING			= "*** C'Thun ist geschw\195\164cht - 45 Sek ***";
	DBM_CTHUN_WEAKENED_ENDS_WARNING	= "*** Noch %s Sekunden ***";
	DBM_CTHUN_DARK_GLARE				= "Dunkles Starren";
	DBM_CTHUN_EYE_BEAM					= "Eye Beam";
	
	DBM_CTHUN_EYE_OF_CTHUN	= "Auge von C'Thun";
	DBM_CTHUN_CLAW			= "Klauen";
	DBM_CTHUN_EYE			= "Augen";
	DBM_CTHUN_DIES			= "Auge von C'Thun stirbt.";
	DBM_CTHUN_WEAKENED		= "%s ist geschw\195\164cht!";
	
	DBM_SBT["Dark Glare"]			= "Dunkles Starren";
	DBM_SBT["Dark Glare End"]		= "Dunkles Starren Ende";
	DBM_SBT["Eye Tentacles"]		= "Augententakel";
	DBM_SBT["Giant Eye Tentacle"]	= "Riesiges Augententakel";
	DBM_SBT["Giant Claw Tentacle"]	= "Riesiges Klauententakel";
	
	--Viscidus
	DBM_VISCIDUS_NAME			= "Viscidus";
	DBM_VISCIDUS_DESCRIPTION	= "Z\195\164hlt Frost und Nahkampf Treffer auf Viscidus.";
	DBM_VISCIDUS_SLASHHELP1	= "/Viscidus mt name - stellt den Main Tank ein um Spam zu vermeiden.";
	DBM_VISCIDUS_MT_SET		= "Main Tank gesetzt auf: ";
	DBM_VISCIDUS_MT_NOT_SET1	= "Main Tank nicht gesetzt! Die Toxin Warnung wird den Main Tank alle 15 Sekunden whispern!";
	DBM_VISCIDUS_MT_NOT_SET2	= "Verwende '/viscidus mt name' um den Main Tank einzustellen.";
	
	DBM_VISCIDUS_TOXIN_ON				= "*** Toxin auf ";
	DBM_VISCIDUS_TOXIN_ON_YOU			= "Toxin auf dir!";
	DBM_VISCIDUS_FREEZE_WARNING		= "*** Einfrieren %s/3 ***";
	DBM_VISCIDUS_FROZEN_WARNING		= "*** Einfrieren 3/3 - eingefroren f\195\188r 15 sek ***";
	DBM_VISCIDUS_SHATTER_WARNING		= "*** Zerspringen %s/3 ***";
	DBM_VISCIDUS_FROZEN_LEFT_WARNING	= "*** Noch %s Sekunden ***";
	DBM_VISCIDUS_FROST_HITS			= "Frost Treffer: ";
	DBM_VISCIDUS_FROST_HITS_WARNING	= "*** %s Frost Treffer ***";
	DBM_VISCIDUS_MELEE_HITS			= "Nahkampf Treffer: ";
	DBM_VISCIDUS_MELEE_HITS_WARNING	= "*** %s Nahkampf Treffer ***";
	
	DBM_VISCIDUS_SLOW_1	= "wird langsamer!";
	DBM_VISCIDUS_SLOW_2	= "friert ein!";
	DBM_VISCIDUS_SLOW_3	= "ist tiefgefroren!";
--	DBM_VISCIDUS_SHATTER_1	= ""; --emote?
	DBM_VISCIDUS_SHATTER_2	= "ist kurz davor, zu zerspringen!";
	DBM_VISCIDUS_VISCIDUS	= "Viscidus";
	
	DBM_SBT["Frozen"]	= "Eingefroren";
end
