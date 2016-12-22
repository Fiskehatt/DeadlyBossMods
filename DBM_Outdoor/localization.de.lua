-- http://www.allegro-c.de/unicode/zcodes.htm
--


if (GetLocale()=="deDE") then

	-- LVOnyxia
	DBM_ONYXIA_INFO			= "Zeigt eine Warnung f\195\188r Phase 2 und 3 und Onyxia den Tiefen Atem macht.";
	DBM_ONYXIA_BREATH_EMOTE	 	= "%s atmet tief ein...";
	DBM_ONYXIA_BREATH_ANNOUNCE		= "*** Tiefer Atem - Deep Breath ***"
	DBM_ONYXIA_PHASE2_YELL			= "Diese sinnlose Anstrengung langweilt mich. Ich werde Euch alle von oben verbrennen!";
	DBM_ONYXIA_PHASE2_ANNOUNCE		= "*** Phase 2 ***"
	DBM_ONYXIA_PHASE3_YELL			= "Mir scheint, dass Ihr noch eine Lektion braucht, sterbliche Wesen!";
	DBM_ONYXIA_PHASE3_ANNOUNCE		= "*** Phase 3 ***"

	-- LVLordKazzak		(( NEED TRANSLATIONS ))
	DBM_KAZZAK_INFO			= "Warnt vor dem Supreme Mode von Lord Kazzak und zeigt am Ende die Kampfzeit an.";
	DBM_KAZZAK_START_YELL			= "For the Legion! For Kil'Jaeden!";
	DBM_KAZZAK_NAME			= "Lord Kazzak";
	DBM_KAZZAK_BAR_TEXT			= "Supreme Mode";
	DBM_KAZZAK_DIES			= "Lord Kazzak stirbt.";
	DBM_KAZZAK_ANNOUNCE_START		= "*** 3 min bis zum Supreme Modus ***";
	DBM_KAZZAK_ANNOUNCE_TIMENEEDED 	= "*** Lord Kazzak wurde in %d Sekunden gekillt ***";
	DBM_KAZZAK_ANNOUNCE_SEC		= "*** %d Sek bis zum Supreme Modus ***";

	-- LVAzuregos
	DBM_AZUREGOS_INFO			= "Warnt bei Azuregos Teleport und Magie Reflexion F\195\164higkeiten.";
	DBM_AZUREGOS_SHIELDUP_EXPR		= "bekommt 'Reflexion'";
	DBM_AZUREGOS_SHIELDUP_ANNOUNCE		= "*** Magie Reflexion - keine Magie gegen ihn ***";
	DBM_AZUREGOS_SHIELDDOWN_EXPR 		= "^Reflexion schwindet von Azuregos";
	DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE	= "*** Magie Reflexion ende ***";
	DBM_AZUREGOS_PORT_EXPR 		= "wirkt Arkanes Vakuum";
	DBM_AZUREGOS_PORT_ANNOUNCE		= "*** Teleport ***";
end
