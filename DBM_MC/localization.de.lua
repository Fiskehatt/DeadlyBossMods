if (GetLocale() == "deDE") then
	-- 1. Lucifron
	DBM_LUCIFRON_INFO			= "Sagt Lucifrons Fluch und Drohende Verdammnis an.";
	DBM_LUCIFRON_CURSE_SOON_WARNING	= "*** Fluch in %s Sek ***";
	DBM_LUCIFRON_DOOM_SOON_WARNING		= "*** Drohende Verdammnis in %s Sek ***";
	DBM_LUCIFRON_CURSE_WARNING		= "*** Fluch - n\195\164chster in 20 Sek ***";
	DBM_LUCIFRON_DOOM_WARNING		= "*** Drohende Verdammnis - n\195\164chste in 20 Sek ***";
	DBM_LUCIFRON_CURSE_REGEXP		= "(%w+) ist von Lucifrons Fluch betroffen.";
	DBM_LUCIFRON_DOOM_REGEXP		= "(%w+) ist von Drohende Verdammnis betroffen.";
	
	-- 2. Magmadar
	DBM_MAGMADAR_INFO			= "Sagt Magmadars Furcht und Raserei an.";
	DBM_MAGMADAR_ANNOUNCE_FRENZY		= "Raserei ansagen";
	DBM_MAGMADAR_FRENZY_WARNING		= "*** Raserei! ***";
	DBM_MAGMADAR_FEAR_WARNING1		= "*** Furcht - n\195\164chstes in 30 Sekunden ***";
	DBM_MAGMADAR_FEAR_WARNING2		= "*** Furcht in 5 Sek ***";
	DBM_MAGMADAR_FRENZY 			= "%s ger\195\164t in t\195\182dliche Raserei!";
	DBM_MAGMADAR_FEAR			= "(%w+) ist von Panik betroffen.";
	
	-- 3. Gehennas
	DBM_GEHENNAS_INFO			= "Sagt Gehennas Fluch an.";
	DBM_GEHENNAS_CURSE_SOON_WARN		= "*** Fluch in %s Sekunden ***";
	DBM_GEHENNAS_CURSE_WARNING		= "*** Fluch - n\195\164chster in 30 Sek ***";	
	DBM_GEHENNAS_CURSE_REGEXP		= "(%w+) ist von Gehennas Fluch betroffen.";
	
	-- 4. Garr
	-- (hmm??)
	
	-- 5. Geddon
	DBM_BARON_INFO 			= "Sagt Geddons Lebende Bombe an.";
	DBM_BARON_SEND_WHISPER			= "Spieler anfl\195\188stern";
	DBM_BARON_SET_ICON			= "Icon setzen";
	DBM_BARON_BOMB_WHISPER			= "Du bist die Bombe!";
	DBM_BARON_BOMB_WARNING    		= "*** %s ist die Bombe ***";
	DBM_BARON_BOMB_REGEXP	 		= "([^%s]+) (%w+) von Lebende Bombe betroffen.";
	
	-- 6. Shazzrah
	DBM_SHAZZRAH_INFO			= "Sagt Shazzrahs Fluch und Magie d\195\164mpfen  an.";
--	DBM_SHAZZRAH_BLINK_WARN1		= "*** Blinzeln - next in 30 sec ***";
--	DBM_SHAZZRAH_BLINK_WARN2		= "*** Blinzeln in %s sec ***";
	DBM_SHAZZRAH_DEADEN_WARN		= "*** Magie d\195\164mpfen ***";
	DBM_SHAZZRAH_CURSE_WARNING		= "*** Fluch - n\195\164chster in 20 Sek ***";
	DBM_SHAZZRAH_CURSE_SOON_WARNING	= "*** Fluch in %s Sekunden ***";
--	DBM_SHAZZRAH_BLINK		 	= "Shazzrah bekommt Blinzeln.";
	DBM_SHAZZRAH_DEADEN_MAGIC		= "Shazzrah bekommt 'Magie d\195\164mpfen'.";
	DBM_SHAZZRAH_CURSE_REGEXP		= "(%w+) ist von Shazzrahs Fluch betroffen.";
	
	-- 7. Sulfuron
	-- (hmm?)
	
	-- 8. Golemagg
	-- (hmm?)
	
	-- 9. Majordomo
	DBM_DOMO_NAME				= "Majordomus Exekutus";
	DBM_DOMO_INFO 				= "Sagt sein Schadenschild und Magiereflexion an.";
	DBM_DOMO_SHIELD_WARNING1 		= "*** %s f\195\188r 10 sec ***";
	DBM_DOMO_SHIELD_WARNING2		= "*** %s in %s Sek ***";
	DBM_DOMO_SHIELD_FADED			= "*** %s geschwunden ***";
	DBM_DOMO_DAMAGE_SHIELD			= "Schadenschild";
	DBM_DOMO_MAGIC_REFLECTION		= "Magiereflexion";
	DBM_DOMO_GAIN_MAGIC			= "Feuerschuppen(%w+) bekommt 'Magiereflexion'.";
	DBM_DOMO_GAIN_DAMAGE			= "Feuerschuppen(%w+) bekommt 'Schadenschild'.";
	DBM_DOMO_FADE_MAGIC 			= "Magiereflexion schwindet von";
	DBM_DOMO_FADE_DAMAGE	 		= "Schadenschild schwindet von";
	
	-- 10. Ragnaros
	DBM_RAGNAROS_INFO			= "Sagt Ragnaros Zorn des Ragnaros und Untertauchen an.";
	DBM_RAGNAROS_EMERGED			= "*** Ragnaros ist aufgetaucht - 3 Minuten bis zum Untertauchen ***";
	DBM_RAGNAROS_SUBMERGE_WARN		= "*** Untertauchen in %s %s ***";
	DBM_RAGNAROS_SUBMERGED			= "*** Ragnaros ist f\195\188r 90 Sekunden untergetaucht ***";
	DBM_RAGNAROS_EMERGE_WARN		= "*** Auftauchen in %s %s ***";
	DBM_RAGNAROS_WRATH_WARN1		= "*** Zorn des Ragnaros - n\195\164chster in 30 Sek ***";
	DBM_RAGNAROS_WRATH_WARN2		= "*** Zorn des Ragnaros in %s Sek ***";
	DBM_RAGNAROS_HITS			= "Ragnaros ([hitscr]+) ([^%s]+) for (%d+)";
	DBM_RAGNAROS_WRATH	 		= "SPÜRT DIE FLAMMEN VON SULFURON!";
--	DBM_RAGNAROS_SUBMERGE 			= nil;
end
