if (GetLocale() == "deDE") then
	
	-- 1. High Priestess Jeklik
	DBM_JEKLIK_NAME		= "Hohepriesterin Jeklik";
	DBM_JEKLIK_INFO		= "Zeigt Warnung f\195\188r Hohepriesterin Jeklik an, wenn sie Flederm\195\164use herbeiruft oder Heilung wirkt.";
	DBM_JEKLIK_BOMBBATS_EXPR	= "Ich befehle Euch Feuer!$";
	DBM_JEKLIK_BOMBBATS_ANNOUNCE	= "*** Bomben Flederm\195\164use ***";
	DBM_JEKLIK_CASTHEAL_EXPR	= "%s beginnt Gro\195\159es Heilen zu wirken!";
	DBM_JEKLIK_CASTHEAL_ANNOUNCE	= "*** Heilung ***";
	DBM_JEKLIK_BATS_EXPR		= "%s emits a deafening shriek!";
	DBM_JEKLIK_BATS_ANNOUNCE	= "*** Flederm\195\164use ***";
	
	-- 2. High Priest Venoxis
	DBM_VENOXIS_NAME		= "Hohepriester Venoxis";
	DBM_VENOXIS_INFO		= "Sagt seinen Erneuern Buff an.";
	DBM_VENOXIS_RENEW_EXPR		= "Hohepriester Venoxis bekommt 'Erneuerung'.";
	DBM_VENOXIS_RENEW_ANNOUNCE	= "*** Erneuern ***";
	DBM_VENOXIS_TRANSFORM_EXPR	= "M\195\182ge das Schlachten beginnen!";
	DBM_VENOXIS_TRANSFORM_ANNOUNCE = "*** Phase 2 - auf das Gift aufpassen! ***";
	
	-- 3. High Priestess Mar'li
	DBM_MARLI_NAME			= "Hohepriesterin Mar'li";
	DBM_MARLI_INFO			= "Zeigt Warnungen f\195\188r Hohepriesterin Mar'lis Spinnen.";
	DBM_MARLI_SPIDER_EXPR		= "Helft mir, meine Brut!";
	DBM_MARLI_SPIDER_ANNOUNCE	= "*** Spinnen erscheinen! ***";
	
	-- Bloodlord Mandokir
	DBM_MANDOKIR_NAME   		= "Blutf\195\188rst Mandokir";
	DBM_MANDOKIR_INFO		= "Warnt Spieler, die von Blutf\195\188rst Mandokir beobachtet werden.";
	DBM_MANDOKIR_WATCH_EXPR	= "([^%s]+)! Ich behalte Euch im Auge!";
	DBM_MANDOKIR_WATCH_ANNOUNCE	= "*** %s wird beobachtet ***";
	DBM_MANDOKIR_SETICON_INFO	= "Icon setzen";
	DBM_MANDOKIR_WHISPER_INFO	= "Whisper verschicken";
	DBM_MANDOKIR_WHISPER_TEXT	= "Du wirst beobachtet!";
	DBM_MANDOKIR_SELFWARN		= "Du wirst beobachtet!";
	
	-- Thekal - eg heal ability
	DBM_THEKAL_NAME		= "Hohepriester Thekal";
	
	-- High Priestess Arlokk
	DBM_ARLOKK_NAME		= "Hoheriesterin Arlokk";
	DBM_ARLOKK_INFO		= "Zeigt Warnungen an wenn Hohepriesterin Arlokk einen Spieler markiert.";
	DBM_ARLOKK_MARK_EXPR		= "Labt euch an ([^%s]+), meine ([^%s]+)!";
	DBM_ARLOKK_MARK_ANNOUNCE	= "*** %s ist markiert - heilt ihn ***";
	DBM_ARLOKK_MARK_WHISPER	= "Du bist markiert!";
	DBM_ARLOKK_WHISPER_INFO	= "Fl\195\188ster markierte Spieler an";
	
	-- Hakkar
	DBM_HAKKAR_NAME		= "Hakkar";
	DBM_HAKKAR_INFO		= "Zeigt Warnungen f\195\188r Hakkars Lebensentzug an.";
	DBM_HAKKAR_SUFFERLIFE_EXPR	= "Hakkar erleidet (%d+) Naturschaden von ([^%s]+) %(durch Bluttrinker%)";
	DBM_HAKKAR_SUFFERLIFE_ANNOUNCE	= "*** %d Sek bis Lebensentzug ***";
	DBM_HAKKAR_SUFFERLIFE_NOW	= "*** Lebensentzug - n\195\164chster in 90 Sekunden ***";
	DBM_HAKKAR_COMBAT_START_YELL	= "EURE \195\156BERHEBLICHKEIT K\195\156NDET BEREITS VOM ENDE DIESER WELT! KOMMT STERBLICHE - STELLT EUCH DEM ZORN DES SEELENSCHINDERS!";
	DBM_HAKKAR_MC_EXPR		= "([^%s]+) (%w+) von Wahnsinn verursachen betroffen%.";
	
	-- Jin'do the Hexxer
	DBM_JINDO_NAME				= "Jin'do der Verhexer";
	DBM_JINDO_INFO				= "Zeigt Warnungen f\195\188r Jin'do der Verhexers Fluch und Totems an.";
	DBM_JINDO_CURSE_INFO			= "Fluch ansagen";
	DBM_JINDO_HEAL_TOTEM_INFO		= "Heilungs Totems ansagen";
	DBM_JINDO_MC_TOTEM_INFO		= "Gehirnw\195\164sche Totems ansagen";
	DBM_JINDO_CURSE_EXPR			= "([^%s]+) (%w+) von Irrbilder von Jin'do betroffen.";
	DBM_JINDO_CURSE_SELF_ANNOUNCE		= "Du bist verflucht!";
	DBM_JINDO_CURSE_ANNOUNCE		= "*** %s ist verflucht - nicht dispellen! ***";
	DBM_JINDO_HEAL_TOTEM_WARNING		= "*** Heilungs Totem ***";
	DBM_JINDO_MC_TOTEM_WARNING		= "*** Gehirnw\195\164sche Totem ***";
	DBM_JINDO_WHISPER_INFO			= "Whisper verschicken";
	DBM_JINDO_WHISPER_TEXT			= "Du bist verflucht! T\195\182te die Schatten!";
	DBM_JINDO_HEAL_TOTEM			= "Jin'do der Verhexer wirkt M\195\164chtiger Heilungszauberschutz.";
	DBM_JINDO_MIND_CONTROL_TOTEM		= "Jin'do der Verhexer wirkt Totem der Gehirnw\195\164sche beschw\195\182ren.";

end
