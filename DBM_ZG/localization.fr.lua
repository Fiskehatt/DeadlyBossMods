--## Vendetta boss mod zul'gurub ##
  -- ## Traduction fr by Elfik ##

if ( GetLocale() == "frFR" ) then

-- High Priestess Jeklik
DBM_JEKLIK_NAME		= "Grande pr\195\170tresse Jeklik";
DBM_JEKLIK_INFO		= "Affiche une alerte lorsque Grande Pr\195\170tresse Jeklik se soigne et appelle les chauves-souris.";
DBM_JEKLIK_BOMBBATS_EXPR	= "Qu'une pluie de feu s'abatte sur les envahisseurs !";
DBM_JEKLIK_BOMBBATS_ANNOUNCE	= "*** CHAUVES-SOURIS EN APPROCHE ***";
DBM_JEKLIK_CASTHEAL_EXPR	= "%s commence \195\160 lancer un sort de Soins exceptionnels !";
DBM_JEKLIK_CASTHEAL_ANNOUNCE	= "*** COMMENCE A SE SOIGNER ***";
DBM_JEKLIK_BATS_EXPR		= "%s \195\160met un cri perçant assourdissant!";
DBM_JEKLIK_BATS_ANNOUNCE	= "*** COMMENCE A SE SOIGNER ***";

-- High Priest Venoxis
DBM_VENOXIS_NAME		= "Grand%-pr\195\170tre Venoxis";
DBM_VENOXIS_INFO		= "Affiche une alerte lorsque Grande Pr\195\170tresse Venoxis se lance R\195\169novation.";
DBM_VENOXIS_RENEW_EXPR		= "Grand%-pr\195\170tre Venoxis gagne R\195\169novation.";
DBM_VENOXIS_RENEW_ANNOUNCE	= "*** RENOVATION - DISSIPEZ LE ***";
DBM_VENOXIS_TRANSFORM_EXPR	= "Que se d\165\160roulent les anneaux de la haine!";
DBM_VENOXIS_TRANSFORM_ANNOUNCE = "*** Phase 2 - Attention au poisson ***";

-- High Priestess Mar'li
DBM_MARLI_NAME			= "Grande pr\195\170tresse Mar'li";
DBM_MARLI_INFO			= "Affiche une alerte lorsque Grande Pr\195\170tresse Mar'li appelle les araign\195\169es.";
DBM_MARLI_SPIDER_EXPR		= "., mes enfants !$";
DBM_MARLI_SPIDER_ANNOUNCE	= "*** ARAIGNEES EN APPROCHE ***";

-- Bloodlord Mandokir
DBM_MANDOKIR_INFO		= "Affiche une alerte lorsque vous ou un joueur proche est surveill\195\169.";
DBM_MANDOKIR_WATCH_EXPR	= "([^%s]+), je vous ai \195\160 l'\197\147il";
DBM_MANDOKIR_WATCH_ANNOUNCE	= "*** %s EST SURVEILLE ***";
DBM_MANDOKIR_SETICON_INFO	= "Mettre une icone";
DBM_MANDOKIR_WHISPER_INFO	= "Envoie un messsage priv\195\169 aux joueurs qui sont surveill\195\169s";
DBM_MANDOKIR_WHISPER_TEXT	= "TU ES SURVEILLE !";
DBM_MANDOKIR_SELFWARN		= "TU ES SURVEILLE !";

-- Thekal - eg heal ability
DBM_THEKAL_NAME	= "Grand pr\195\170tre Thekal";

-- High Priestess Arlokk
DBM_ARLOKK_NAME		= "Grande pr\195\170tresse Arlokk";
DBM_ARLOKK_INFO		= "Affiche une alerte lorsque Grande Pr\195\170tresse Arlokk choisi une cible pour ses panth\195\169res.";
DBM_ARLOKK_MARK_EXPR		= "D\195\169vorez ([^%s]+), mes jolies !";
DBM_ARLOKK_MARK_ANNOUNCE	= "*** %s EST MARQUE - heal ! ***";
DBM_ARLOKK_MARK_WHISPER	= "TU ES MARQUE !";
DBM_ARLOKK_WHISPER_INFO	= "Envoie des messages priv\195\169s aux cibles";

-- Hakkar
DBM_HAKKAR_NAME		= "Hakkar";
DBM_HAKKAR_INFO		= "Affiche une alerte lorsque Hakkar utilise son drain de vie.";
DBM_HAKKAR_SUFFERLIFE_EXPR	= "^Siphon de sang .+ (.+) inflige \195\160 Hakkar (.+).";
DBM_HAKKAR_SUFFERLIFE_ANNOUNCE	= "*** %d sec avant drain de vie ***";
DBM_HAKKAR_SUFFERLIFE_NOW	= "*** DRAIN DE VIE - 90 sec avant prochain ***";
DBM_HAKKAR_COMBAT_START_YELL	= "ANNONCE LA FIN DE VOTRE MONDE";
DBM_HAKKAR_ENRAGE_WARNING		= "*** Enrager dans %s %s ***";

-- Jin'do the Hexxer
DBM_JINDO_NAME				= "Jin'do le Mal\195\160ficieur";
DBM_JINDO_INFO				= "Affiche une alerte des afflictions de Illusions de Jin'do.";
DBM_JINDO_CURSE_INFO			= "Annonce curse";
DBM_JINDO_HEAL_TOTEM_INFO		= "Annonce totems de heal";
DBM_JINDO_MC_TOTEM_INFO		= "Announce totems de control mental";
DBM_JINDO_CURSE_EXPR			= "^([^%s]+) ([^%s]+) les effets de Illusions de Jin'do";
DBM_JINDO_CURSE_SELF_ANNOUNCE		= "TU ES MAUDIT !";
DBM_JINDO_CURSE_ANNOUNCE		= "*** %s EST MAUDIT - NE PAS LE DECURSE ***";
DBM_JINDO_HEAL_TOTEM_WARNING		= "*** Totem de heal ! ***";
DBM_JINDO_MC_TOTEM_WARNING		= "*** Totem de controle mental ! ***";
DBM_JINDO_WHISPER_INFO			= "Envoie des messages priv\195\169s aux cibles";
DBM_JINDO_WHISPER_TEXT			= "TU ES MAUDIT !";
DBM_JINDO_HEAL_TOTEM			= "Jin'do le Mal\195\160ficieur lance ";
DBM_JINDO_MIND_CONTROL_TOTEM		= "Jin'do le Mal\195\160ficieur lance Totem ";

-- added 11.12.06
DBM_HAKKAR_MC_EXPR		= "([^%s]+) (%w+) afflicted by Cause Insanity%.";
DBM_HAKKAR_MC_WARNING	= "*** Controle mental - %s!";

end

