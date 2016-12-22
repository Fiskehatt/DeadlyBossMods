--## Vendetta boss mod naxxaramas ##
 -- ## Traduction fr by Elfik ##

if ( GetLocale() == "frFR" ) then
--Patchwerk
DBM_PW_NAME			= "Le Recousu";
DBM_PW_DESCRIPTION		= "Pr\195\169viens quand Le Recousu devient enrag\195\169.";
DBM_PW_OPTION1			= "Annoncer les Frappe haineuse";
DBM_PW_OPTION2			= "Voir les stats";
DBM_PW_OPTION3			= "Voir info frame";

DBM_PW_ENRAGE_WARNING		= "*** Enrager dans %s %s ***";
DBM_PW_HS_ANNOUNCE		= "Frappe haineuse --> %s [%s]";

DBM_PW_YELL_1 			= "R'cousu veut jouer !";
DBM_PW_YELL_2 			= "R'cousu avatar de guerre pour Kel'Thuzad !";

DBM_PW_HS_YOU_HIT		= "Frappe haineuse DE Le Recoursu vous inflige (%d+).(.*)";
DBM_PW_HS_YOU_MISS		= "Frappe haineuse de Le Recoursu vous rate.";
DBM_PW_HS_YOU_DODGE		= "Vous esquivez Frappe haineuse de Le Recousu.";
DBM_PW_HS_YOU_PARRY		= "Frappe haineuse DE Le Recoursu : Par\195\169.";
DBM_PW_HS_PARTY_HIT		= "Frappe haineuse DE Le Recoursu touche ([^%s]+) pour (%d+).(.*)";
DBM_PW_HS_PARTY_MISS		= "Le Recousu voit son Frappe haineuse manquer ([^%s]+)."; 
DBM_PW_HS_PARTY_DODGE		= "([^%s]+) esquive Frappe haineuse de Le Recoursu.";
DBM_PW_HS_PARTY_PARRY		= "Le Recoursu attaque et ([^%s]+) pare son attaque.";

DBM_PWSTATS_STATS		= "*** Le Recousu Stats ***";
DBM_PWSTATS_STRIKES		= "Frappe haineuse: %s (%.0f%%)";
DBM_PWSTATS_HITS		      = "Touch\195\169: %s (%.0f%%)";
DBM_PWSTATS_DODGES		= "Esquiv\195\169: %s (%.0f%%)";
DBM_PWSTATS_PARRIES		= "Par\195\169: %s (%.0f%%)";
DBM_PWSTATS_MISSES		= "Rat\195\169: %s (%.0f%%)";
DBM_PWSTATS_AVG_DMG		= "Average damage per hit: %.0f";
DBM_PWSTATS_MAX_HIT		= "Coup Maximum: %s sur %s";
DBM_PWSTATS_PER_PLAYER		= "%s Frappe haineuse sur %s (%s hits)";
DBM_PWSTATS_NOT_AVAILABLE	= "Stats non disponible";


--Grobbulus
DBM_GROBB_NAME				= "Grobbulus";
DBM_GROBB_DESCRIPTION			= "Mettre une icone sur la personne subissant Injection mutante.";
DBM_GROBB_SEND_WHISPER			= "whisper";
DBM_GROBB_SET_ICON			= "Mettre icone";

DBM_GROBB_YOU_ARE_INJECTED		= "Tu es inject\195\169 !";
DBM_GROBB_INJECTED_WARNING		= "*** %s est inject\195\169 ***";
DBM_GROBB_INJECTED			= "Injection mutante";

DBM_GROBB_INJECTION_REGEXP		= "([^%s]+) (%w+) les effets de Injection mutante.";
DBM_GROBB_INJECTION_FADES_REGEXP	= "Injection mutante disparait de ([^%s]+)%.";

DBM_GROBB_CLOUD_POISON			= "Grobbulus lance Nuage de poison.";



--Gluth
DBM_GLUTH_NAME				= "Gluth";
DBM_GLUTH_DESCRIPTION			= "Annonce le fear, la fr\195\169n\195\169sie et le d\195\169cimer de gluth .";
DBM_GLUTH_ANNOUNCE_FRENZY		= "Annoncer fr\195\169n\195\169sie";

DBM_GLUTH_DECIMATE_WARN1		= "*** D\195\169cimer dans 2 min ***";
DBM_GLUTH_DECIMATE_WARN2		= "*** D\195\169cimer - prochain dans 2 minutes ***";
DBM_GLUTH_DECIMATE_1MIN_WARNING	= "*** D\195\169cimer dans 1 minute ***";
DBM_GLUTH_DECIMATE_SOON_WARNING	= "*** D\195\169cimer imminent ***";
DBM_GLUTH_DECIMATE_WARNING		= "*** D\195\169cimer dans ~%s sec ***"
DBM_GLUTH_FEAR_WARNING			= "*** Fear - prochain dans 20 sec ***";
DBM_GLUTH_FEAR_5SEC_WARNING		= "*** Fear dans 5 sec ***";

DBM_GLUTH_DECIMATE_REGEXP		= "D\195\169cimer DE gluth touche ([^%s]+) pour (%d+).";
DBM_GLUTH_FEAR_REGEXP			= "(%w+) subit les effets de Rugissement terrifiant.";
DBM_GLUTH_FRENZY			      = "%s est pris de fr\195\169n\195\169sie !"
DBM_GLUTH_FRENZY_ANNOUNCE		= "*** fr\195\169n\195\169sie ***";
DBM_GLUTH_GLUTH			      = "Gluth";

DBM_SBT["Fear"]			      = "Rugissement terrifiant";
DBM_SBT["Decimate"]			= "D\195\169cimer";


--Razuvious
DBM_IR_NAME				= "Instructeur Razuvious";
DBM_IR_DESCRIPTION			= "Affiche des alertes lorsque l'Instructeur Razuvious utilise son Cri perturbant";
DBM_IR_SHOW_10SEC_WARNING		= "Show 10 sec warning";

DBM_IR_TIMER_UPDATED			= "Timer updated";
DBM_IR_SHOUT_WARNING			= "*** CRI PERTURBANT DANS %s SEC ***";

DBM_IR_SPELL_1				= "Cri perturbant";
--removed in patch 2.0
DBM_IR_YELL_1				= "Les cours sont termin\195\169s ! Montrez%-moi ce que vous avez appris !";
DBM_IR_YELL_2				= "Frappe%-le \195\160 la jambe";
DBM_IR_YELL_3				= "Faites ce que vous ai appris !";
DBM_IR_YELL_4				= "Pas de quartier !";

DBM_SBT["Disruption Shout"]		= "Cri perturbant";


--Noth the Plaguebringer
DBM_NTP_NAME				= "Noth le Porte-peste";
DBM_NTP_DESCRIPTION			= "Affiche des alertes pour la Mal\195\169diction, le Transfert et la T\195\169l\195\169portation de Noth.";
DBM_NTP_OPTION_WARN_SPAWN 		= "Annonce des adds";
DBM_NTP_OPTION_WARN_CURSE 		= "Annonce du curse";

DBM_NTP_BACK_WARNING			= "*** Noth est de retour (%s sec) - Frappez le ***";
DBM_NTP_TELEPORT_WARNING		= "*** %s sec avant teleportation ***";
DBM_NTP_NOTH_GAINS_BLINK		= "*** Transfert ***";
DBM_NTP_BLINK_5SEC_WARNING		= "*** Transfert dans ~5 sec ***";
DBM_NTP_BLINK_0SEC_WARNING		= "*** NOTH GAGNE TRANSFERT - STOP DPS ***";
DBM_NTP_TELEPORT_10SEC_WARNING	= "*** Teleportation dans 10 sec ***"
DBM_NTP_BACK_10SEC_WARNING		= "*** 10 sec avant Retour de Noth ***";
DBM_NTP_ADD_WARNING			= "*** Adds dans 5 secondes ***";
DBM_NTP_CURSE_WARNING			= "*** Curse ***";
DBM_NTP_NEXT_WAVE_SOON			= "*** 10 sec avant prochaine vague ***";

DBM_NTP_SPELL_1 			      = "Noth le Porte-peste gagne Transfert";
DBM_NTP_CURSE_AFFLICT 			= "Noth le Porte-peste gagne Transfert"; -- AOE curse
DBM_NTP_ADDS_SPAWN 			= "Je servirai le ma\195\174tre... dans la mort !"; -- Adds spawn
DBM_NTP_YELL_START1 			= "Mourez, intrus !";
DBM_NTP_YELL_START2 			= "Gloire au ma\195\174tre !";
DBM_NTP_YELL_START3 			= "Vos vies ne valent plus rien !";

DBM_SBT["Teleport to Balcony"]	= "T\195\169l\195\169portation sur le balcon";
DBM_SBT["Teleport back"]		= "Teleport back";
DBM_SBT["Blink"]			      = "Transfert";

--Heigan the Unclean
DBM_HTU_NAME			= "Heigan l'Impur";
DBM_HTU_DESCRIPTION		= "Affiche des alertes pour la T\195\169l\195\169portation de Heigan.";

DBM_HTU_TELEPORT_WARNING	= "*** T\195\169l\195\169portation dans %s sec ***";
DBM_HTU_TELEPORT_BACK_WARNING	= "*** Retour de Heigan dans %s sec ***";

DBM_HTU_YELL_START1 		= "Tu es... le suivant.";
DBM_HTU_YELL_START2 		= "Je vous vois...";
DBM_HTU_YELL_START3 		= "Vous \195\170tes \195\160 moi, maintenant.";

DBM_SBT["Teleport"]		= "T\195\169l\195\169portation";
DBM_SBT["Teleport Back"]	= "Teleport Back";


--Anub'Rekhan
DBM_AR_NAME			= "Anub'Rekhan";
DBM_AR_DESCRIPTION		= "Affiches des alertes pour pr\195\169venir de la Nu\195\169e de sauterelles d'Anub'Rekhan";

DBM_AR_LOCUST_WARNING		= "*** Nu\195\169e de sauterelles dans ~%s sec ***";
DBM_AR_LOCUST_SOON_WARNING	= "*** NUEE DE SAUTERELLES IMMINENTE ***";
DBM_AR_LOCUST_INC_WARNING	= "*** Nu\195\169e de sauterelles est lancé - 3 sec ***";
DBM_AR_GAIN_LOCUST_WARNING	= "*** Nu\195\169e de sauterelles pendant 20 sec ***";
DBM_AR_LOCUST_END_WARNING	= "*** Fin de la Nu\195\169e de sauterelles dans %s sec ***";

DBM_AR_YELL_1 			= "Nulle part pour s'enfuir.";
DBM_AR_YELL_2 			= "Rien qu'une petite bouch\195\169e";	
DBM_AR_YELL_3 			= "Oui, courez ! Faites circulez le sang !";
DBM_AR_CAST_LOCUST_SWARM 	= "Anub'Rekhan commence \195\160 lancer Nu\195\169e de sauterelles.";
DBM_AR_GAIN_LOCUST_SWARM 	= "Anub'Rekhan gagne Nu\195\169e de sauterelles.";

DBM_SBT["Locust Swarm"]	= "Nu\195\169e de sauterelles";
DBM_SBT["Locust Swarm Cast"]	= "lancer Nu\195\169e de sauterelles";


--Grand Widow Faerlina
DBM_GWF_NAME			= "Grande veuve Faerlina";
DBM_GWF_DESCRIPTION		= "Affiche des alertes pour l'Enrager de Faerlina.";

DBM_GWF_ENRAGE_WARNING1	= "*** Enrager - prochain dans 60 sec ***";
DBM_GWF_ENRAGE_WARNING2	= "*** Enrager dans ~%s sec ***";
DBM_GWF_ENRAGE_CD_READY	= "*** Enrager cooldown pret ***";
DBM_GWF_EMBRACE_WARNING	= "*** Etreinte de la veuve fini dans %s sec ***";
DBM_GWF_NEXT_ENRAGE_IN		= "*** Prochain enrager dans %s sec ***";

DBM_GWF_YELL_1			= "Vous ne pouvez pas m'\195\169chapper !";
DBM_GWF_YELL_2			= "Tuez-les au nom du ma\195\174tre !";
DBM_GWF_YELL_3			= "Fuyez tant que vous le pouvez !";
DBM_GWF_YELL_4			= " genoux, vermisseau !";
DBM_GWF_DEBUFF			= "Grande veuve Faerlina subit les effets de Etreinte de la veuve.";
DBM_GWF_GAIN_ENRAGE		= "Grande veuve Faerlina gagne Enrager.";

DBM_SBT["Enrage"]		= "Enrager";
DBM_SBT["Widow's Embrace"]	= "Etreinte de la veuve";

--Maexxna
DBM_MAEXXNA_NAME			= "Maexxna";
DBM_MAEXXNA_DESCRIPTION		= "Affiche des alertes pour le Jet de rets et l'Entoilage de Maexxna.";
DBM_MAEXXNA_YELL_ON_WRAP		= "Annoncer quand quelqu'un est entoil\195\137";

DBM_MAEXXNA_WEB_WRAP_YELL		= "%s est Entoil\195\137 . Groupe %s.";
DBM_MAEXXNA_WRAP_WARNING		= "*** %s est Entoil\195\169 ***";
DBM_MAEXXNA_SPRAY_WARNING		= "*** Entoilage dans %s sec ***";
DBM_MAEXXNA_SPIDER_WARNING		= "*** Pop des araign\195\137es dans %s sec ***";
DBM_MAEXXNA_SPIDERS_SPAWNED		= "*** POP DES ARAIGN\195\137ES ***";

DBM_MAEXXNA_WEB_SPRAY			= "Jet de rets";
DBM_MAEXXNA_MAEXXNA			= "Maexxna";
DBM_MAEXXNA_WEB_WRAP_REGEXP		= "([^%s]+) (%w+) les effets de Entoilage.";

DBM_SBT["Web Spray"]			= "Jet de rets";
DBM_SBT["Spider Spawn"]		= "Pop des araign\195\137es";
	

--Gothik the Harvester
DBM_GOTH_NAME				= "Gothik the Harvester";
DBM_GOTH_DESCRIPTION			= "Provides timers for his adds and announces their death.";

DBM_GOTH_PHASE2_WARNING		= "*** Gothik inc ***";
DBM_GOTH_PHASE2_INC_WARNING		= "*** Phase 2 in %s %s ***";
DBM_GOTH_DEAD_WARNING			= "*** %s dead ***";
DBM_GOTH_INC_WARNING			= "*** %s in %s sec ***";
DBM_GOTH_WAVE_INC_WARNING1		= "*** Wave %s/18 in 3 sec - %s %s  ***";
DBM_GOTH_WAVE_INC_WARNING2		= "*** Wave %s/18 in 3 sec - %s %s and %s %s ***";
DBM_GOTH_WAVE_INC_WARNING3		= "*** Wave %s/18 in 3 sec - %s %s, %s %s and %s %s ***";

DBM_GOTH_YELL_START1			= "Foolishly you have sought your own demise."
DBM_GOTH_PHASE2_YELL			= "I have waited long enough. Now you face the harvester of souls.";

DBM_GOTH_RIDER				= "Unrelenting Rider";
DBM_GOTH_RIDER_SHORT			= "Rider";
DBM_GOTH_KNIGHT			= "Unrelenting Deathknight";
DBM_GOTH_KNIGHT_SHORT			= "Deathknight";
DBM_GOTH_KNIGHTS_SHORT			= "Deathknights";
DBM_GOTH_TRAINEE			= "Unrelenting Trainee";
DBM_GOTH_TRAINEE_SHORT			= "Trainees";

-- FourHorsemen
DBM_FOURHORSEMEN_NAME				= "Four Horsemen";
DBM_FOURHORSEMEN_INFO				= "Provides timers for the Four Horsemen fight";
DBM_FOURHORSEMEN_SHOW_5SEC_MARK_WARNING	= "Show 5 sec warning for marks";

DBM_FOURHORSEMEN_THANE				= "Thane Korth'azz";
DBM_FOURHORSEMEN_LADY				= "Lady Blaumeux";
DBM_FOURHORSEMEN_MOGRAINE			= "Highlord Mograine";
DBM_FOURHORSEMEN_ZELIEK			= "Sir Zeliek";

DBM_FOURHORSEMEN_REAL_NAME			= "Four Horsemen";

DBM_FOURHORSEMEN_WHISPER_INFO			= "Whisper players in Void Zones";
DBM_FOURHORSEMEN_SYNC_INFO			= "Sync mark with other clients";
DBM_FOURHORSEMEN_INFOFRAME_INFO		= "Show InfoFrame for boss HP during combat";

DBM_FOURHORSEMEN_INFOFRAME_TITLE		= "Four Horsemen";
DBM_FOURHORSEMEN_INFOFRAME_TEXT		= "Shows HP of the Horsemen";

DBM_FOURHORSEMEN_MARK_EXPR			= "afflicted by Mark of"; 	-- Is afflicted .. hmm You are affl...
DBM_FOURHORSEMEN_MARK_ANNOUNCE			= "*** Mark #%d ***";
DBM_FOURHORSEMEN_MARK_WARNING			= "*** Mark #%d in 5 sec ***";

DBM_FOURHORSEMEN_METEOR_EXPR			= "Thane Korth'azz's Meteor hits ([^%s]+) for (%d+) Fire damage%.";
DBM_FOURHORSEMEN_METEOR_ANNOUNCE		= "*** Meteor ***";

DBM_FOURHORSEMEN_VOID_EXPR			= "Lady Blaumeux casts Void Zone.";
DBM_FOURHORSEMEN_VOID_ANNOUNCE			= "Void Zone";
DBM_FOURHORSEMEN_VOID_WHISPER			= "Void Zone on you!";
DBM_FOURHORSEMEN_VOID_ALLWAYS_INFO		= "Always use Special Warning on Void Zone";

DBM_FOURHORSEMEN_SHIELDWALL_EXPR		= "(.*) gains Shield Wall.";
DBM_FOURHORSEMEN_SHIELDWALL_ANNOUNCE		= "*** %s: Shield Wall for 20 sec ***";
DBM_FOURHORSEMEN_SHIELDWALL_FADE		= "*** Shield Wall fades from %s ***";

DBM_FOURHORSEMEN_TAUNTRESIST_INFO		= "Inform about taunt resists";
DBM_FOURHORSEMEN_TAUNTRESIST_TAUNT		= "Taunt";
DBM_FOURHORSEMEN_TAUNTRESIST_MOKING		= "Mocking Blow";
DBM_FOURHORSEMEN_TAUNTRESIST_CSHOUT		= "Challenging Shout";
DBM_FOURHORSEMEN_TAUNTRESIST_RESIST		= "resist";
DBM_FOURHORSEMEN_TAUNTRESIST_PARRY		= "parry";
DBM_FOURHORSEMEN_TAUNTRESIST_DODGE		= "dodge";
DBM_FOURHORSEMEN_TAUNTRESIST_MISS		= "miss";
DBM_FOURHORSEMEN_TAUNTRESIST_BLOCK		= "block";
DBM_FOURHORSEMEN_TAUNTRESIST_SELFWARN		= "TAUNT FAILED";
DBM_FOURHORSEMEN_TAUNTRESIST_MESSAGE		= "--> Taunt failed! <--";

--Thaddius
DBM_THADDIUS_NAME				= "Thaddius";
DBM_THADDIUS_DESCRIPTION		= "Provides timers for his Enrage and Polarity Shift.";
DBM_THADDIUS_WARN_NOT_CHANGED	= "Warn when your polarity did not change";
DBM_THADDIUS_ALT_STRATEGY		= "Alternative strategy (show left/right warnings)";
DBM_THADDIUS_WARN_POWERSURGE	= "Warn for Stalagg's Power Surge (200% attack speed)";
DBM_THADDIUS_FIX_LAG           = "Reduce combat log range to prevent lags"
DBM_THADDIUS_ALT_STRAT_STAT1	= "Showing '%s' message when polarity changes";
DBM_THADDIUS_ALT_STRAT_STAT2	= "Showing '%s' message when polarity does not change";

DBM_THADDIUS_ENRAGE_WARNING		= "*** Enrage in %s %s ***";
DBM_THADDIUS_POL_SHIFT				= "*** Polarity Shift ***";
DBM_THADDIUS_SURGE_WARNING			= "*** Power Surge ***";
DBM_THADDIUS_POL_WARNING			= "*** Polarity Shift in %s sec ***";
DBM_THADDIUS_PHASE_2_SOON			= "*** Phase 2 in 4 seconds ***";
DBM_THADDIUS_CHARGE_CHANGED		= "Charge changed to %s!";
DBM_THADDIUS_CHARGE_NOT_CHANGED	= "Charge not changed";
DBM_THADDIUS_RIGHT					= "Right!";
DBM_THADDIUS_LEFT					= "Left!";

DBM_THADDIUS_GAINS_SURGE		= "Stalagg gains Power Surge.";
DBM_THADDIUS_CAST_POL			= "Thaddius begins to cast Polarity Shift.";
DBM_THADDIUS_POL_REGEXP		= "Vous subissez les effets de Charge (%w+).";
DBM_THADDIUS_YELL_START1		= "Tuer...";
DBM_THADDIUS_YELL_START2		= "Manger... tes... os..."; 
DBM_THADDIUS_YELL_START3		= "Casser... toi !";
DBM_THADDIUS_YELL_POL			= "Maintenant toi sentir douleur...";
DBM_THADDIUS_ENRAGE			= "goes into a berserker rage!";
DBM_THADDIUS_TESLA_EMOTE		= "%s overloads!";
DBM_THADDIUS_TESLA_COIL		= "Bobine de tesla";
DBM_THADDIUS_THADDIUS			= "Thaddius";
DBM_THADDIUS_POSITIVE			= "Positif";
DBM_THADDIUS_NEGATIVE			= "Negatif";

-- Phase1
DBM_THADDIUS_PHASE1_YELL1 		= "Stalagg \195\169craser toi !";
DBM_THADDIUS_PHASE1_YELL2 		= "A manger pour maitre !";
DBM_THADDIUS_PHASE1_ANNOUNCE		= "*** Phase 1 ***";
DBM_THADDIUS_SURGE_EXPR		= "Stalagg gagne Vague de puissance.";
DBM_THADDIUS_SURGE_ANNOUNCE		= "*** Power Surge pour 10 sec ***";
DBM_THADDIUS_THROW_ANNOUNCE		= "*** T\195\169l\195\169portation MT ***";
DBM_THADDIUS_THROW_ANNOUNCE_SOON	= "*** T\195\169l\195\169portation MT dans %s sec ***";
DBM_THADDIUS_PLATFORM_EXPR		= "perd son lien !";
DBM_THADDIUS_PLATFORM_ANNOUNCE	= "*** Attention - Les add partent de la plateforme ***";


--Loatheb
DBM_LOATHEB_NAME				= "Loatheb";
DBM_LOATHEB_DESCRIPTION			= "Announces Loatheb's Inevitable Doom and shows heal cooldowns. Use /loatheb setup or /loatheb config to setup your heal rotation, announcing healers does not work if you did not setup a heal rotation. Setting a healer's sort ID to 0 will remove him from the list. To re-add him use /loa undelete.";
DBM_LOATHEB_ANNOUNCE_SPORES			= "Announce spores";
--DBM_LOATHEB_ANNOUNCE_SPORES_BACKWARDS		= "Announce spores to Groups Backwards";
DBM_LOATHEB_HEAL_RAID				= "Announce heals to raid chat";
DBM_LOATHEB_HEAL_RAID_WARN			= "Announce heals to raid warning chat";
DBM_LOATHEB_HEAL_WHISPER			= "Send whisper to next healer";
DBM_LOATHEB_ANNOUNCE_POT_OPTION		= "Announce consumables";
DBM_LOATHEB_SPECIALWARN_POT_OPTION		= "Show special warning when you have to use consumables";
DBM_LOATHEB_HEAL_SHOW_AUTO			= "Show heal info frame when Loatheb is pulled";
DBM_LOATHEB_HEAL_SHOW_NOW			= "Show heal info frame";
DBM_LOATHEB_HEAL_SETUP				= "Setup heal rotation";
DBM_LOATHEB_NO_BC_INFO				= "You are not raid leader or promoted. Your changes will not be broadcasted to the raid and broadcasted settings will overwrite yours.";
DBM_LOATHEB_NO_CD				= "No cooldown";
DBM_LOATHEB_SET_HEAL_ROTATION			= "Save & sync";
DBM_LOATHEB_SET_HEAL_ROTATION_NO_BC		= "Save";
DBM_LOATHEB_SHADOW_PROT_POT			= "Shadow Protection Potion"
DBM_LOATHEB_BANDAGE				= "Bandage";
DBM_LOATHEB_HEALTHSTONE			= "Healthstone";

DBM_LOATHEB_DOOM_WARNING		= "*** Inevitable Doom #%s in %s sec ***";
DBM_LOATHEB_DOOM_NOW			= "*** Inevitable Doom #%s - next in %s sec ***";
DBM_LOATHEB_DECURSE_NOW		= "*** Curses removed - next in 30 sec ***";
DBM_LOATHEB_DECURSE_WARNING		= "*** Remove Curse in %s sec ***";
DBM_LOATHEB_SPORE_SPAWNED		= "*** Spore %d spawned ***";
DBM_LOATHEB_POT_ANNOUNCE		= "*** %s now! ***";
DBM_LOATHEB_POT_WARNING		= "Use %s now!";
DBM_LOATHEB_HEAL_WARNING		= "Heal #%s done - next: %s";
DBM_LOATHEB_YOU_ARE_NEXT		= "You are next!";
DBM_LOATHEB_YOU_ARE_SOON		= "Get ready to heal!";

DBM_LOATHEB_DOOM_REGEXP		= "([^%s]+) (%w+) afflicted by Inevitable Doom.";
DBM_LOATHEB_REMOVE_CURSE		= "Loatheb casts Remove Curse on Loatheb.";
DBM_LOATHEB_HEAL_REGEXP		= "([^%s]+) (%w+) afflicted by Corrupted Mind.";
--DBM_LOATHEB_HEAL_REGEXP		= "([^%s]+) (%w+) afflicted by Weakened Soul.";
DBM_LOATHEB_SUMMON_SPORE		= "Loatheb casts Summon Spore.";
DBM_LOATHEB_LOATHEB			= "Loatheb";

DBM_SBT["Inevitable Doom"]		= "Inevitable Doom";


-- Sapphiron
DBM_SAPPHIRON_NAME 			= "Sapphiron";
DBM_SAPPHIRON_INFO			= "Warns for Ice Bomb, Life Drain and Enrage.";

DBM_SAPPHIRON_YELL_INFO		= "Yell when afflicted by Ice Block";
DBM_SAPPHIRON_PING_INFO		= "Show minimap pings";
DBM_SAPPHIRON_SHOW_DISTANCE_FRAME	= "Show distance frame during air phase";
DBM_SAPPHIRON_YELL_ANNOUNCE		= "I'm an Ice Block, stay behind me!";

DBM_SAPPHIRON_LIFEDRAIN_EXPR1		= "afflicted by Life Drain";
DBM_SAPPHIRON_LIFEDRAIN_EXPR2		= "Life Drain was resisted by";
DBM_SAPPHIRON_LIFEDRAIN_ANNOUNCE	= "*** Life Drain - next in ~24 sec ***";
DBM_SAPPHIRON_LIFEDRAIN_WARN		= "*** Life Drain in %d sec ***";

DBM_SAPPHIRON_DEEPBREATH_EXPR		= "takes in a deep breath...";
DBM_SAPPHIRON_DEEPBREATH_ANNOUNCE	= "*** Ice Bomb Incoming ***";

DBM_SAPPHIRON_FROSTBOLT_GAIN_EXPR	= "You are afflicted by Icebolt";
DBM_SAPPHIRON_FROSTBOLT_FADE_EXPR	= "Icebolt fades from you";

DBM_SAPPHIRON_ENRAGE_ANNOUNCE		= "*** Enrage in %d sec ***";


-- Kel'Thuzad
DBM_KELTHUZAD_NAME			= "Kel'Thuzad";
DBM_KELTHUZAD_INFO			= "Announces phases and abilities of the Kel'Thuzad boss fight.";

DBM_KELTHUZAD_RANGECHECK		= "Show distance frame during phase 2 and 3";

DBM_KELTHUZAD_PHASE1_EXPR		= "Minions, servants, soldiers of the cold dark! Obey the call of Kel'Thuzad!";
DBM_KELTHUZAD_PHASE1_ANNOUNCE		= "*** Phase 1 ***";

DBM_KELTHUZAD_PHASE2_EXPR1		= "Pray for mercy!";
DBM_KELTHUZAD_PHASE2_EXPR2		= "Scream your dying breath!";
DBM_KELTHUZAD_PHASE2_EXPR3		= "The end is upon you!";
DBM_KELTHUZAD_PHASE2_ANNOUNCE		= "*** Phase 2 - Kel'Thuzad engaged ***";

DBM_KELTHUZAD_PHASE3_EXPR		= "Master, I require aid!";
DBM_KELTHUZAD_PHASE3_ANNOUNCE		= "*** Phase 3 - Guardians in ~15 sec ***";

DBM_KELTHUZAD_MC_EXPR1			= "Your soul is bound to me, now!";
DBM_KELTHUZAD_MC_EXPR2			= "There will be no escape!";

DBM_KELTHUZAD_MC_ANNOUNCE		= "*** Mind Control ***";
DBM_KELTHUZAD_GUARDIAN_EXPR		= "Very well. Warriors of the frozen wastes, rise up! I command you to fight, kill and die for your master! Let none survive!";
DBM_KELTHUZAD_GUARDIAN_ANNOUNCE	= "*** Guardians in ~10 sec ***";
DBM_KELTHUZAD_FISSURE_EXPR		= "Kel'Thuzad casts Shadow Fissure.";
DBM_KELTHUZAD_FISSURE_ANNOUNCE		= "*** Shadow Fissure ***";
DBM_KELTHUZAD_FROSTBLAST_EXPR		= "^(.+) (.+) afflicted by Frost Blast";
DBM_KELTHUZAD_FROSTBLAST_ANNOUNCE	= "*** Frost Blast ***";
DBM_KELTHUZAD_DETONATE_EXPR		= "^([^%s]+) ([^%s]+) afflicted by Detonate Mana.";
DBM_KELTHUZAD_DETONATE_ANNOUNCE	= "*** Detonate Mana - %s ***";
DBM_KELTHUZAD_DETONATE_SELFWARN	= "You are the Bomb!";
DBM_KELTHUZAD_DETONATE_WHISPER		= "You are the Bomb!";

end
