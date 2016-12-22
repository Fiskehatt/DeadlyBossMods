 --## Vendetta boss mod ruines d'ahnQiraj ##
  -- ## Traduction fr by Elfik ##


if ( GetLocale() == "frFR" ) then

--1. Skeram
DBM_SKERAM_NAME			= "Le Proph\195\168te Skeram";
DBM_SKERAM_DESCRIPTION			= "Annonces explosion des arcanes et control mentale.";

DBM_SKERAM_AE				= "** EXPLOSION DES ARCANES - COUP DE PIED **";
DBM_SKERAM_MC				= "** %s EST SOUS CONTROLE MENTAL **";

DBM_SKERAM_CAST_SPELL_AE		= "Le Proph\195\168te Skeram commence \195\160 lancer Explosion des arcanes.";
DBM_SKERAM_MIND_CONTROL_TEXTURE	= "Spell_Shadow_Charm";
DBM_SKERAM_MIND_CONTROL_DEBUFF		= "Accomplissement v\195\169ritable";

-- 2. Three Bugs (Vem & Co)
DBM_THREEBUGS_NAME			= "Three Bugs - Vem, Yauj et Kri";
DBM_THREEBUGS_VEM			= "Vem";
DBM_THREEBUGS_YAUJ			= "Princesse Yauj";
DBM_THREEBUGS_KRI			= "Seigneur Kri";
DBM_THREEBUGS_VEM			= "Vem";
DBM_THREEBUGS_REAL_NAME	      = "Three Bugs";
DBM_THREEBUGS_FEAR_EXPR		= "(.+) (.+) est Fear.";
DBM_THREEBUGS_FEAR_ANNOUNCE		= "*** Yauj Fear dans %d sec ***";
DBM_THREEBUGS_CASTHEAL_EXPR		= "Yauj va se heal.";
DBM_THREEBUGS_CASTHEAL_ANNOUNCE	= "*** Yauj se heal, coupez la ! ***";


-- 3. Battleguard Sartura
DBM_SARTURA_NAME			= "Garde de guerre Sartura"
DBM_SARTURA_DESCRIPTION		= "Vous alerte lorsque Garde de guerre Sartura gagne Tourbillon.";

DBM_SARTURA_ANNOUNCE_WHIRLWIND		= "*** TOURBILLON - 25 sec avant prochain ***";
DBM_SARTURA_WHIRLWIND_FADED		= "*** TOURBILLON FINI - ASSOMMEZ-LE ! ***";

DBM_SARTURA_GAIN_WHIRLWIND		= "Garde de guerre Sartura gagne Tourbillon.";
DBM_SARTURA_WHIRLWIND_FADES		= "Tourbillon sur Garde de guerre Sartura vient de se dissiper.";
DBM_SARTURA_ENRAGE			= "%s devient fou furieux !";
DBM_SARTURA_SARTURA			= "Garde de guerre Sartura";
DBM_SARTURA_WARNING                = "*** Enrager !! ***";


-- 4. Fankriss
DBM_FANKRISS_NAME			= "Fankriss l'Inflexible"
DBM_FANKRISS_DESCRIPTION		= "Alerte lorsque Frankriss invoque un ver";

DBM_FANKRISS_SPAWN_WARNING		= "*** INVOCATION D'UN VER ***";

DBM_FANKRISS_WORM_SPAWNED		= "Fankriss l'Inflexible lance Invocation d'un ver.";


-- 5. Huhuran
DBM_HUHURAN_NAME			= "Princesse Huhuran";
DBM_HUHURAN_DESCRIPTION		= "Alerte lorsque Princesse Huhuran est pris de fr\195\169n\195\169sie et Piq\195\187re de wyverne";
DBM_HUHURAN_ANNOUNCE_FRENZY		= "Alerte de fr\195\169n\195\169sie";

DBM_HUHURAN_WYVERN_WARNING		= "** Piq\195\187re de wyverne dans moins de 5 sec **";

DBM_HUHURAN_WYVERN_REGEXP		= "(%w+) subbit les effets de Piq\195\187re de wyverne%.";
DBM_HUHURAN_FRENZY			= "%s entre dans une rage d\195\169mente !";
DBM_HUHURAN_FRENZY_ANNOUNCE		= "*** fr\195\169n\195\169sie !! ***";
DBM_HUHURAN_HUHURAN			= "Princesse Huhuran";


-- Anubisat Defenders
DBM_DEFENDER_NAME			= "D\195\169fenseur Anubisath";
DBM_DEFENDER_DESCRIPTION		= "Annonce de l'explosion et de la peste";
DBM_DEFENDER_WHISPER			= "Envoie un message aux joueurs qui ont la Peste.";
DBM_DEFENDER_PLAGUE			= "Annoncer la peste";

DBM_DEFENDER_ANNOUNCE_EXPLODE		= "*** EXPLOSION IMMINENTE ***";
DBM_DEFENDER_ANNOUNCE_PLAGUE		= "*** %s LA PESTE ***";
DBM_DEFENDER_WHISPER_PLAGUE		= "TU AS LA PESTE !";
DBM_DEFENDER_PLAGUE_WARNING		= "Peste";

DBM_DEFENDER_GAIN_EXPLODE		= "D\195\169fenseur Anubisath gagne Exploser.";
DBM_DEFENDER_PLAGUE_REGEXP		= "([^%s]+) (%w+) les effets de Peste%.$";



-- 6. Twin Emperors
DBM_TWINEMPS_NAME			= "Empereurs jumeaux";
DBM_TWINEMPS_DESCRIPTION		= "Afficher les annonces pour le combat contre les Empereurs jumeaux";
DBM_TWINEMPS_REAL_NAME		= "Empereurs jumeaux";

DBM_TWINEMPS_TELEPORT_WARNING		= "*** Teleportation dans %s sec ***";
DBM_TWINEMPS_ENRAGE_WARNING		= "*** Enrager dans %s %s ***";

DBM_TWINEMPS_TELEPORT_ANNOUNCE		= "T\195\169l\195\169portation";

DBM_TWINEMPS_CAST_SPELL_1		= ".* lance T\195\169l\195\169portation des jumeaux%.";
DBM_TWINEMPS_VEKNILASH			= "Empereur Vek'nilash";
DBM_TWINEMPS_VEKLOR			= "Empereur Vek'lor";

DBM_TWINEMPS_EXPLODE_EXPR 		= "gagne Explosion de l'insecte";
DBM_TWINEMPS_EXPLODE_ANNOUNCE 		= "Un insecte va exploser - BOUGEZ !";


-- 7. Ouro
DBM_OURO_NAME				= "Ouro";
DBM_OURO_DESCRIPTION			= "Provides a timer for Ouro's submerge.";

DBM_OURO_SWEEP_SOON_WARNING		= "*** BALAYAGE dans 5 sec ***";
DBM_OURO_BLAST_SOON_WARNING		= "*** EXPLOSION DE SABLE dans 5 sec ***";
DBM_OURO_SWEEP_WARNING			= "*** balayage dans 1.5sec ***";
DBM_OURO_BLAST_WARNING			= "*** EXPLOSION DE SABLE dans 2 sec ***";
DBM_OURO_SUBMERGED_WARNING		= "*** OURO DISPARAIT pour 30 sec ***";
DBM_OURO_EMERGE_SOON_WARNING		= "*** OURO REAPPARAIT DANS 5SEC ***";
DBM_OURO_EMERGED_WARNING		= "*** OURO APPARAIT ***";
DBM_OURO_POSSIBLE_SUBMERGE_WARNING	= "*** Possible disparition de ouro dans 10 sec ***";
DBM_OURO_SUBMERGE_WARNING		= "*** %s secondes avant que Ouro n'apparaisse ***";

DBM_OURO_CAST_SWEEP			= "Ouro commence \195\160 lancer Balayer.";
DBM_OURO_CAST_SAND_BLAST		= "Ouro commence \195\160 ex\195\169cuter Explosion de sable.";
DBM_OURO_DIRT_MOUND_QUAKE		= "Ouro lance Invocation de Monticules d'Ouro.";
DBM_OURO_ENRAGE			      = "%s entre dans une rage d\195\169mente !";
DBM_OURO_OURO				= "Ouro";



-- 8. CThun
DBM_CTHUN_NAME				= "C'Thun"
DBM_CTHUN_DESCRIPTION			= "Alertes de pop des Tentacules oculaires et de son \195\169tat affaibli en phase 2."
DBM_CTHUN_SLASHHELP1			=  "/cthun start - Lancer les timers";
DBM_CTHUN_SEND_WHISPER			= "Send whisper";
DBM_CTHUN_SET_ICON			= "Set icon";
DBM_CTHUN_RANGE_CHECK			= "Range check";
DBM_CTHUN_RANGE_CHECK_PHASE2		= "Show Range Frame during phase 2";

DBM_CTHUN_SMALL_EYE_WARNING		= "*** Tentacules oculaires dans %s sec ***";
DBM_CTHUN_DARK_GLARE_WARNING		= "*** Regard noir dans %s sec ***";
DBM_CTHUN_DARK_GLARE_ON_GROUP	= "*** Regard noir sur le groupe ";
DBM_CTHUN_DARK_GLARE_ON_YOU		= "Regard noir sur toi !";
DBM_CTHUN_DARK_GLARE_TIMER_FAILED	= "Ajustement du timer Regard noir \195\169chou\195\169.";
DBM_CTHUN_DARK_GLARE_END_WARNING	= "*** 5 sec avant fin du Regard noir ***";
DBM_CTHUN_GIANT_CLAW_WARNING		= "*** Geante Oculaire dans 10 sec ***";
DBM_CTHUN_GIANT_AND_EYES_WARNING	= "*** Geante %s et Tentacules Oculaires dans 10 sec ***";
DBM_CTHUN_WEAKENED_WARNING		= "*** C'THUN EST AFFAIBLI POUR 45 SEC ***";
DBM_CTHUN_WEAKENED_ENDS_WARNING	= "*** %s sec restant ***";
DBM_CTHUN_DARK_GLARE			= "Regard noir";
DBM_CTHUN_EYE_BEAM			= "Tentacule oculaire";

DBM_CTHUN_EYE_OF_CTHUN			= "Œil de C'thun";
DBM_CTHUN_CLAW				= "Occulaire";
DBM_CTHUN_EYE				= "Oeil";
DBM_CTHUN_DIES				= "Eye of C'Thun dies.";
DBM_CTHUN_WEAKENED			= "%s est afaibli !";



--Traduction fr incoming
--Viscidus
DBM_VISCIDUS_NAME			= "Viscidus";
DBM_VISCIDUS_DESCRIPTION		= "Counts frost and melee hits on Viscidus.";
DBM_VISCIDUS_SEND_WHISPER		= "Send whisper";
DBM_VISCIDUS_SLASHHELP1		= "/Viscidus mt name - sets a main tank to prevent toxin warning spam";
DBM_VISCIDUS_MT_SET			= "Main tank set to: ";
DBM_VISCIDUS_MT_NOT_SET1 		= "Main tank not set! Toxin warning will whisper your main tank every 15 seconds!";
DBM_VISCIDUS_MT_NOT_SET2		= "Type '/vis mt name' to set your main tank.";

DBM_VISCIDUS_TOXIN_ON			= "*** Toxin on ";
DBM_VISCIDUS_TOXIN_ON_YOU		= "Toxin on you!";
DBM_VISCIDUS_FREEZE_WARNING		= "*** Freeze %s/3 ***";
DBM_VISCIDUS_FROZEN_WARNING		= "*** Freeze 3/3 - frozen for 15 sec ***";
DBM_VISCIDUS_SHATTER_WARNING		= "*** Shatter %s/3 ***";
DBM_VISCIDUS_FROZEN_LEFT_WARNING	= "*** %s seconds left ***";
DBM_VISCIDUS_FROST_HITS		= "Frost hits: ";
DBM_VISCIDUS_FROST_HITS_WARNING	= "*** %s frost hits ***";
DBM_VISCIDUS_MELEE_HITS		= "Melee hits: ";
DBM_VISCIDUS_MELEE_HITS_WARNING	= "*** %s melee hits ***";

DBM_VISCIDUS_SLOW_1			= "begins to slow!";
DBM_VISCIDUS_SLOW_2			= "is freezing up!";
DBM_VISCIDUS_SLOW_3			= "is frozen solid!";
DBM_VISCIDUS_SHATTER_1			= "begins to crack!";
DBM_VISCIDUS_SHATTER_2			= "looks ready to shatter!";
DBM_VISCIDUS_VISCIDUS			= "Viscidus";

end
