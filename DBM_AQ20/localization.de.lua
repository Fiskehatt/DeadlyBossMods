-- http://www.allegro-c.de/unicode/zcodes.htm
--
-- ä = \195\164
-- Ä = \195\132
-- ö = \195\182
-- Ö = \195\150
-- ü = \195\188
-- Ü = \195\156
-- ß = \195\159



if (GetLocale() == "deDE") then
	-- 1. Kurinaxx (hmm?)

	-- 2. General Rajaxx
	DBM_RAJAXX_NAME		= "General Rajaxx";
	DBM_RAJAXX_INFO		= "Zeigt Warnungen f\195\188r die Gegner Wellen des General Rajaxx.";
	DBM_RAJAXX_WAVE1_EXPR		= "Hier kommen sie. Bleibt am Leben, Welpen.";
	DBM_RAJAXX_WAVE3_EXPR		= "Die Zeit der Vergeltung ist gekommen";
	DBM_RAJAXX_WAVE4_EXPR		= "Wir werden nicht l\195\164nger";
	DBM_RAJAXX_WAVE5_EXPR		= "Wir kennen keine Furcht";
	DBM_RAJAXX_WAVE6_EXPR		= "Staghelm wird winseln und um sein Leben betteln";
	DBM_RAJAXX_WAVE7_EXPR		= "Fandral! Deine Zeit ist gekommen";
	DBM_RAJAXX_WAVE8_EXPR		= "Unversch\195\164mter Narr! Ich werde Euch";
	DBM_RAJAXX_WAVE_ANNOUNCE 	= "*** Welle %d/8 kommt nun ***";
	DBM_RAJAXX_WAVE_RAJAXX		= "*** General Rajaxx kommt nun ***";
	DBM_RAJAXX_KILL_EXPR		= "T\195\182te ([^%s]+)!";
	DBM_RAJAXX_KILL_ANNOUNCE	= "*** %s braucht heilung ***";

	-- 3. Moam
	DBM_MOAM_NAME			= "Moam"
	DBM_MOAM_INFO			= "Zeigt Warnungen f\195\188r die Phasen von Moam an.";
	DBM_MOAM_COMBAT_START		= "%s sp\195\188rt Eure Angst.";
	DBM_MOAM_STONE_ANNOUNCE_TIME	= "*** %d Sek bis zur Steinform ***";
	DBM_MOAM_STONE_GAIN		= "%s entzieht Euch Euer Mana und versteinert Euch.";
	DBM_MOAM_STONE_ANNOUNCE_FADE	= "*** %d Sek bis zum Steinform ende ***";
	DBM_MOAM_STONE_FADE_EXPR	= "Energiezufuhr schwindet von Moam.";
	DBM_MOAM_STONE_FADE_ANNOUNCE	= "*** Steinform schwindet ***";

	-- 4. Buru der Verschlinger
	DBM_BURU_NAME			= "Buru der Verschlinger";
	DBM_BURU_INFO 			= "Zeigt Warnungen wenn Buru der Verschlinger jemanden beobachtet.";
	DBM_BURU_WHISPER_INFO		= "Fl\195\188stere dem Spieler";
	DBM_BURU_WHISPER_TEXT		= "Du wirst beobachtet! Lauf!";
	DBM_BURU_SETICON_INFO		= "Setze Schlachtzug Symbol";
	DBM_BURU_EYE_EXPR		= "beh\195\164lt (.+) im Blickfeld!";
	DBM_BURU_EYE_ANNOUNCE 		= "*** %s wird beobachtet ***";
	DBM_BURU_EYE_SELFWARNING	= "Du wirst beobachtet!";
	
	-- 5. Ayamiss der J\195\164ger
	DBM_AYAMISS_NAME		= "Ayamiss der J\195\164ger";
	DBM_AYAMISS_INFO 		= "Zeigt Warnungen wenn jemand von Ayamiss der J\195\164ger geopfert wird.";
	DBM_AYAMISS_SACRIFICE_EXPR 	= "([^%s]+) (%w+) von Paralisieren betroffen.";
	DBM_AYAMISS_SACRIFICE_ANNOUNCE	= "*** %s wird geopfert ***";

	-- 6. Ossirian der Narbenlose
	DBM_OSSIRIAN_NAME		= "Ossirian der Narbenlose";
	DBM_OSSIRIAN_INFO		= "Zeigt Warnungen wenn Ossiran geschw\195\164cht oder gest\195\164rkt wird.";
	DBM_OSSIRIAN_CURSE_INFO	= "Fluch der Zungen ank\195\188ndigen";
	DBM_OSSIRIAN_CURSE_EXPR 	= "([^%s]+) is von Fluch der Zungen betroffen.";
	DBM_OSSIRIAN_CURSE_ANNOUNCE	= "*** Fluch - n\195\164chster in 25 sek ***";
	DBM_OSSIRIAN_CURSE_PREANNOUNCE	= "*** Fluch in etwa 5 sec ***";
	DBM_OSSIRIAN_WEAK_ANNOUNCE	= "*** %s verwundbarkeit f\195\188r 45 sek ***";
	DBM_OSSIRIAN_WEAK_EXPR		= "Ossirian der Narbenlose ist von (.*)schw\195\164che betroffen.";
	DBM_OSSIRIAN_WEAK_RUNOUT	= "*** St\195\164rke des Ossirian in %d Sekunden ***";
	DBM_OSSIRIAN_SUPREME_EXPR	= "Ossirian der Narbenlose bekommt 'St\195\164rke des Ossirian'.";
	DBM_OSSIRIAN_SUPREME_ANNOUNCE	= "*** St\195\164rke des Ossirian ***";
	DBM_OSSIRIAN_DEATH_EXPR	= "Ich... habe... versagt.";


	-- Besch\195\188tzer des Anubisath  (Ossirian)
	DBM_GUARDIAN_NAME 			= "Besch\195\188tzer der Anubisath";
	DBM_GUARDIAN_INFO 			= "Zeigt Warnungen f\195\188r die F\195\164higkeiten der Besch\195\188tzer der Anubisath.";
	DBM_GUARDIAN_SUMMON_INFO		= "Warnung wenn Krieger/Schwarmwachen beschworen werden";
	DBM_GUARDIAN_THUNDERCLAP_EXPR	 	= "Besch\195\188tzer der Anubisath's Donnerknall trifft (.*) f\195\188r (%d) .*";
	DBM_GUARDIAN_THUNDERCLAP_ANNOUNCE	= "*** Donnerknall ***";
	DBM_GUARDIAN_EXPLODE_EXPR	 	= "Besch\195\188tzer der Anubisath bekommt 'Explodieren'.";
	DBM_GUARDIAN_EXPLODE_ANNOUNCE		= "*** Explodieren ***";
	DBM_GUARDIAN_ENRAGE_EXPR		= "Besch\195\188tzer der Anubisath bekommt 'Wutanfall'.";
	DBM_GUARDIAN_ENRAGE_ANNOUNCE		= "*** Wutanfall ***";

	DBM_GUARDIAN_PLAGUE_EXPR		= "^([^%s]+) ([^%s]+) von Seuche betroffen%.";
	DBM_GUARDIAN_PLAGUE_ANNOUNCE		= "*** %s hat die Seuche ***";
	DBM_GUARDIAN_PLAGUE_WHISPER		= "Du hast die Seuche! Lauf weg!";

	DBM_GUARDIAN_SUMMONGUARD_EXPR 		= "Besch\195\188tzer des Anubisath wirkt Schwarmwache des Anubisath beschw\195\182ren.";
	DBM_GUARDIAN_SUMMONEDGUARD_ANNOUNCE	= "*** Schwarmwache wird herbeigerufen ***";
	DBM_GUARDIAN_SUMMONWARRIOR_EXPR 	= "Besch\195\188tzer des Anubisath wirkt Krieger des Anubisath beschw\195\182ren.";
	DBM_GUARDIAN_SUMMONEDWARRIOR_ANNOUNCE	= "*** Krieger wird herbeigerufen ***";

end

