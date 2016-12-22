--## Vendetta boss mod other ##
  -- ## Traduction fr by Elfik ##

if ( GetLocale() == "frFR" ) then
-- LVOnyxia
DBM_ONYXIA_NAME			= "Onyxia";
DBM_ONYXIA_INFO			= "Affiche les alertes des phases d'Onyxia et lorsqu'elle utilise son souffle en phase 2.";
DBM_ONYXIA_BREATH_EMOTE 		= "prend une grande inspiration...";
DBM_ONYXIA_BREATH_ANNOUNCE		= "*** ONYXIA VA SOUFFLER, ECARTEZ VOUS SUR LES COTES ***";
DBM_ONYXIA_PHASE2_YELL			= "un seul coup !";
DBM_ONYXIA_PHASE2_ANNOUNCE		= "*** ONYXIA RENTRE EN PHASE 2 ***";
DBM_ONYXIA_PHASE3_YELL			= "Il semble que vous ayez besoin d'une autre le\195\167on, mortels !";
DBM_ONYXIA_PHASE3_ANNOUNCE		= "*** ONYXIA RENTRE EN PHASE 3 ***";

-- LVLordKazzak
DBM_KAZZAK_NAME			= "Seigneur Kazzak";
DBM_KAZZAK_INFO			= "Announces Lord Kazzak's Supreme Mode and returns the time needed to kill him";
DBM_KAZZAK_START_YELL			= "For the Legion! For Kil'Jaeden!";
DBM_KAZZAK_NAME			= "Seigneur Kazzak";
DBM_KAZZAK_BAR_TEXT			= "Supreme Mode";
DBM_KAZZAK_DIES			= "Seigneur Kazzak meurt.";
DBM_KAZZAK_ANNOUNCE_START		= "*** 3 min avant Supreme Mode ***";
DBM_KAZZAK_ANNOUNCE_TIMENEEDED 	= "*** Killed Lord Kazzak in %d seconds ***";
DBM_KAZZAK_ANNOUNCE_SEC		= "*** %d sec until Supreme Mode ***";

-- LVAzuregos
DBM_AZUREGOS_NAME			= "Azuregos";
DBM_AZUREGOS_INFO			= "Announces Azuregos' Teleport and Magic Shield abilities.";
DBM_AZUREGOS_SHIELDUP_EXPR		= "^Azuregos gagne Renvoi.";
DBM_AZUREGOS_SHIELDUP_ANNOUNCE		= "*** BOUCLIER ACTIF - PAS DE SORTS ***";
DBM_AZUREGOS_SHIELDDOWN_EXPR 		= "^Renvoi sur Azuregos vient de se dissiper.";
DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE	= "*** BOUCLIER INACTIF ***";
DBM_AZUREGOS_PORT_EXPR 		= "^Venez m'affronter, mes petits !";
DBM_AZUREGOS_PORT_ANNOUNCE		= "*** TELEPORTATION ***";


--Outdoor Dragons
DBM_OUTDOOR_NAME		= "Lethon, Taerar, Emeriss and Ysondre";
DBM_OUTDOOR_DESCRIPTION	= "Affiche une alerte lorsque vous ou un joueur proche subit les effets de Infection volatile.";
DBM_OUTDOOR_YSONDRE		= "Ysondre";
DBM_OUTDOOR_EMERISS		= "Emeriss";
DBM_OUTDOOR_TAERAR		= "Taerar";
DBM_OUTDOOR_LETHON		= "Lethon";

DBM_OUTDOOR_BREATH_NOW		= "*** Souffle naus\195\169abond - prochain 30 sec ***";
DBM_OUTDOOR_BREATH_WARNING	= "*** Souffle naus\195\169abond dans %s sec ***";
DBM_OUTDOOR_INFECT_WARN	= "*** %s EST AFFLIGE PAR INFECTION VOLATILE ***";
DBM_OUTDOOR_INFECT_SPECIAL	= "TU ES AFFLIGE PAR INFECTION VOLATILE !";

DBM_OUTDOOR_NOX_BREATH		= "([^%s]+) (%w+) les effets de Souffle naus\195\169abond";
DBM_OUTDOOR_NOX_RESIST		= "([^%s]+) Souffle naus\195\169abond est r\195\160sist\195\160 par ([^%s]+)";
DBM_OUTDOOR_INFECTION		= "^([^%s]+) ([^%s]+) les effets de Infection volatile";

DBM_OUTDOOR_LOCATION_1		= DBM_DUSKWOOD;
DBM_OUTDOOR_LOCATION_2		= DBM_ASHENVALE;
DBM_OUTDOOR_LOCATION_3		= DBM_FERALAS;
DBM_OUTDOOR_LOCATION_4		= DBM_HINTERLANDS;


end

