--## Vendetta boss mod ruines d'ahnQiraj ##
  -- ## Traduction fr by Elfik ##

if ( GetLocale() == "frFR" ) then
-- 1. Kurinaxx
DBM_KURINAXX_NAME	= "Kurinaxx";

-- 2. General Rajaxx
DBM_RAJAXX_NAME		= "General Rajaxx";
DBM_RAJAXX_INFO		= "Alertes des arriv\195\169es des vagues.";
DBM_RAJAXX_WAVE1_EXPR		= "Ils arrivent. Essayez de ne pas vous faire tuer, bleusaille.";
DBM_RAJAXX_WAVE3_EXPR		= "L'heure de notre vengeance sonne enfin !";
DBM_RAJAXX_WAVE4_EXPR		= "C'en est fini d'attendre derri\195\168re des portes ferm\195\169es et des murs de pierre !";
DBM_RAJAXX_WAVE5_EXPR		= "La peur est pour l'ennemi ! La peur et la mort !";
DBM_RAJAXX_WAVE6_EXPR		= "Staghelm pleurnichera pour avoir la vie sauve, comme l'a fait son morveux de fils !";
DBM_RAJAXX_WAVE7_EXPR		= "Fandral ! Ton heure est venue !";
DBM_RAJAXX_WAVE8_EXPR		= "Imb\195\169cile imprudent !";
DBM_RAJAXX_WAVE_ANNOUNCE 	= "*** ARRIV\195\137E DE LA VAGUE %d/8 ***";
DBM_RAJAXX_WAVE_RAJAXX		= "*** ARRIV\195\137E DU G\195\137N\195\137RAL RAJAXX ***";
DBM_RAJAXX_KILL_EXPR		= "^Tuez ([^%s]+) !$";
DBM_RAJAXX_KILL_ANNOUNCE	= "*** SOIGNEZ %s ***";

-- 3. Moam
DBM_MOAM_NAME			= "Moam"
DBM_MOAM_INFO			= "Pr\195\169-alertes de la Forme de pierre";
DBM_MOAM_COMBAT_START		= "%s sent votre peur.";
DBM_MOAM_STONE_ANNOUNCE_TIME	= "** %s sec avant Forme de pierre **";
DBM_MOAM_STONE_GAIN		= "%s absorbe votre mana et se change en pierre.";
DBM_MOAM_STONE_ANNOUNCE_FADE	= "** %s sec avant Forme normale **";
DBM_MOAM_STONE_FADE_EXPR	= "Dynamiser sur Moam vient de se dissiper.";
DBM_MOAM_STONE_FADE_ANNOUNCE	= "*** FIN DE LA FORME DE PIERRE ***";

-- 4. Buru the Gorger
DBM_BURU_NAME			= "Buru Grandgosier";
DBM_BURU_INFO 			= "Affiche une alerte lorsque Buru pose ses yeux sur quelqu'un.";
DBM_BURU_WHISPER_INFO		= "Envoie un message aux cibles";
DBM_BURU_WHISPER_TEXT		= "You are being watched! Run!";
DBM_BURU_SETICON_INFO		= "Mettre une icone";
DBM_BURU_EYE_EXPR		= "pose ses yeux sur (.+) !";
DBM_BURU_EYE_ANNOUNCE 		= "*** %s EST SURVEILL\195\137 ***";
DBM_BURU_EYE_SELFWARNING	= "*** TU ES SURVEILL\195\137 ***";

-- 5. Ayamiss the Hunter
DBM_AYAMISS_NAME		= "Ayamiss le Chasseur";
DBM_AYAMISS_INFO 		= "Affiche une alerte lorsqu'une personne va \195\170tre sacrifi\195\169e.";
DBM_AYAMISS_SACRIFICE_EXPR 	= "^([^%s]+) ([^%s]+) les effets de Paralysie%.$";
DBM_AYAMISS_SACRIFICE_ANNOUNCE	= "*** %s EST SACRIFI\195\137 ***";

-- 6. Ossirian the Unscarred
DBM_OSSIRIAN_NAME		= "Ossirian l'Intouch\195\137";
DBM_OSSIRIAN_INFO		= "Affiche des alertes sur les caract\195\169ristiques d'Ossirian l'Intouch\195\169";
DBM_OSSIRIAN_CURSE_INFO	= "Announce curse";
DBM_OSSIRIAN_CURSE_EXPR 	= "([^%s]+) subit mal\195\169diction des languages.";
DBM_OSSIRIAN_CURSE_ANNOUNCE	= "** MALEDICTION - 25 sec avant prochaine **";
DBM_OSSIRIAN_CURSE_PREANNOUNCE	= "** Mal\195\169diction dans moins de 5 sec **";
DBM_OSSIRIAN_WEAK_ANNOUNCE	= "*** %s vulnerabilit\195\169 pour 45 sec ***";
DBM_OSSIRIAN_WEAK_EXPR		= "^Ossirian l'Intouch\195\169 subit les effets de Sensibilit\195\169 .* l?'?(.+)%.$";
DBM_OSSIRIAN_WEAK_RUNOUT	= "*** MODE SUPREME DANS %d SECONDES ***";
DBM_OSSIRIAN_SUPREME_EXPR	= "Ossirian l'Intouch\195\169 gagne Force d'Ossirian.";
DBM_OSSIRIAN_SUPREME_ANNOUNCE	= "*** OSSIRIAN EST EN MODE SUPREME ***";
DBM_OSSIRIAN_DEATH_EXPR	= "J'ai... \195\169chou\195\169.";


-- Anubisath Guardians  (Ossirian)
DBM_GUARDIAN_INFO 			= "Alerte des caract\195\169ristiques des Gardiens Anubisath";
DBM_GUARDIAN_SUMMON_INFO		= "Affiche une alerte lorsque l'Anubisath invoque un add.";
DBM_GUARDIAN_THUNDERCLAP_EXPR	 	= "^Gardien Anubisath lance Coup de tonnerre et vous inflige %d+ .";
DBM_GUARDIAN_THUNDERCLAP_ANNOUNCE	= "*** COUP DE TONNERRE ***";
DBM_GUARDIAN_EXPLODE_EXPR	 	= "Gardien Anubisath gagne Exploser.";
DBM_GUARDIAN_EXPLODE_ANNOUNCE		= "*** EXPLOSION IMMINENTE ***";
DBM_GUARDIAN_ENRAGE_EXPR		= "Gardien Anubisath gagne Enrager.";
DBM_GUARDIAN_ENRAGE_ANNOUNCE		= "*** ENRAGER ***";

DBM_GUARDIAN_PLAGUE_EXPR		= "^([^%s]+) ([^%s]+) les effets de Peste%.$";
DBM_GUARDIAN_PLAGUE_ANNOUNCE		= "*** %s A LA PESTE ***";
DBM_GUARDIAN_PLAGUE_WHISPER		= "TU AS LA PESTE !";

DBM_GUARDIAN_SUMMONGUARD_EXPR 		= "Gardien Anubisath lance Invocation d'un Garde-essaim Anubisath.";
DBM_GUARDIAN_SUMMONEDGUARD_ANNOUNCE	= "*** INVOCATION D'UN GARDE-ESSAIM ***";
DBM_GUARDIAN_SUMMONWARRIOR_EXPR 	= "Gardien Anubisath lance Invocation d'un Guerrier Anubisath.";
DBM_GUARDIAN_SUMMONEDWARRIOR_ANNOUNCE	= "*** INVOCATION D'UN GUERRIER ***";

end

