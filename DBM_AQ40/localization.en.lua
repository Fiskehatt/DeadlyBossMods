--1. Skeram
DBM_SKERAM_NAME			= "The Prophet Skeram";
DBM_SKERAM_DESCRIPTION			= "Announces Arcane Explosion and Mind Control.";

DBM_SKERAM_AE				= "*** Arcane Explosion ***";
DBM_SKERAM_MC				= "*** %s is mind controlled ***";

DBM_SKERAM_CAST_SPELL_AE		= "The Prophet Skeram begins to cast Arcane Explosion.";
DBM_SKERAM_MIND_CONTROL_TEXTURE	= "Spell_Shadow_Charm";
DBM_SKERAM_MIND_CONTROL_DEBUFF		= "True Fulfillment";

-- 2. Three Bugs (Vem & Co)
DBM_THREEBUGS_NAME			= "Three Bugs - Vem, Yauj and Kri";
DBM_THREEBUGS_YAUJ			= "Princess Yauj";
DBM_THREEBUGS_KRI			= "Lord Kri";
DBM_THREEBUGS_VEM			= "Vem";
DBM_THREEBUGS_REAL_NAME		= "Three Bugs";
DBM_THREEBUGS_FEAR_EXPR		= "(.+) (.+) afflicted by Fear.";
DBM_THREEBUGS_FEAR_ANNOUNCE		= "*** Yauj Fear in %d sec ***";
DBM_THREEBUGS_CASTHEAL_EXPR		= "Yauj begins to cast Great Heal.";
DBM_THREEBUGS_CASTHEAL_ANNOUNCE	= "*** Yauj casting Heal, interrupt now ***";


-- 3. Battleguard Sartura
DBM_SARTURA_NAME			= "Battleguard Sartura"
DBM_SARTURA_DESCRIPTION		= "Provides a timer for Sartura's Whirlwind."

DBM_SARTURA_ANNOUNCE_WHIRLWIND		= "*** Whirlwind ***"
DBM_SARTURA_WHIRLWIND_FADED		= "*** Whirlwind faded - Stun now! ***"

DBM_SARTURA_GAIN_WHIRLWIND		= "Battleguard Sartura gains Whirlwind.";
DBM_SARTURA_WHIRLWIND_FADES		= "Whirlwind fades from Battleguard Sartura.";
DBM_SARTURA_ENRAGE			= "%s becomes enraged";
DBM_SARTURA_SARTURA			= "Battleguard Sartura";
DBM_SARTURA_WARNING            = "*** Enrage ***";


-- 4. Fankriss
DBM_FANKRISS_NAME			= "Fankriss the Unyielding"
DBM_FANKRISS_DESCRIPTION		= "Announces the spawn of the worms."

DBM_FANKRISS_SPAWN_WARNING		= "*** Worm spawned ***"

DBM_FANKRISS_WORM_SPAWNED		= "Fankriss the Unyielding casts Summon Worm.";


-- 5. Huhuran
DBM_HUHURAN_NAME			= "Princess Huhuran";
DBM_HUHURAN_DESCRIPTION		= "Provides timers for Huhuran's Wyvern Sting and announces Frenzy.";
DBM_HUHURAN_ANNOUNCE_FRENZY		= "Announce frenzy";

DBM_HUHURAN_WYVERN_WARNING		= "*** Wyvern Sting in ~5 sec ***";

DBM_HUHURAN_WYVERN_REGEXP		= "(%w+) is afflicted by Wyvern Sting.";
DBM_HUHURAN_FRENZY			= "%s goes into a frenzy!";
DBM_HUHURAN_FRENZY_ANNOUNCE		= "*** Frenzy ***";
DBM_HUHURAN_HUHURAN			= "Princess Huhuran";



-- Anubisat Defenders
DBM_DEFENDER_NAME			= "Anubisath Defenders";
DBM_DEFENDER_DESCRIPTION		= "Announces Explode and Plague.";
DBM_DEFENDER_WHISPER			= "Send whisper";
DBM_DEFENDER_PLAGUE			= "Announce plague";

DBM_DEFENDER_ANNOUNCE_EXPLODE		= "*** Explode ***";
DBM_DEFENDER_ANNOUNCE_PLAGUE		= "*** %s has the Plague ***";
DBM_DEFENDER_WHISPER_PLAGUE		= "You have the Plague!";
DBM_DEFENDER_PLAGUE_WARNING		= "Plague";

DBM_DEFENDER_GAIN_EXPLODE		= "Anubisath Defender gains Explode.";
DBM_DEFENDER_PLAGUE_REGEXP		= "([^%s]+) (%w+) afflicted by Plague.";



-- 6. Twin Emperors
DBM_TWINEMPS_NAME			= "Twin Emperors";
DBM_TWINEMPS_DESCRIPTION		= "Provides timers for the Twin Emperors encounter. The bug explode warning should not be used when the combat log range isn't set to its default value."
DBM_TWINEMPS_BUG_EXPLOE	= "Show warning when a nearby bug is about to explode";
DBM_TWINEMPS_REAL_NAME		= "Twin Emperors";

DBM_TWINEMPS_TELEPORT_WARNING		= "*** Teleport in %s sec ***";
DBM_TWINEMPS_ENRAGE_WARNING		= "*** Enrage in %s %s ***";

DBM_TWINEMPS_TELEPORT_ANNOUNCE		= "*** Teleport ***";

DBM_TWINEMPS_CAST_SPELL_1		= ".* casts Twin Teleport%.";
DBM_TWINEMPS_VEKNILASH			= "Emperor Vek'nilash";
DBM_TWINEMPS_VEKLOR			= "Emperor Vek'lor";

DBM_TWINEMPS_EXPLODE_EXPR 		= "gains Explode Bug%.";
DBM_TWINEMPS_EXPLODE_ANNOUNCE 		= "Bug explode - move away";


-- 7. Ouro
DBM_OURO_NAME				= "Ouro";
DBM_OURO_DESCRIPTION			= "Provides a timer for Ouro's submerge.";

DBM_OURO_SWEEP_SOON_WARNING		= "*** Sweep in ~5 sec ***";
DBM_OURO_BLAST_SOON_WARNING		= "*** Sand Blast in ~5 sec ***";
DBM_OURO_SWEEP_WARNING			= "*** Sweep inc - 1.5 sec ***";
DBM_OURO_BLAST_WARNING			= "*** Sand Blast inc - 2 sec ***";
DBM_OURO_SUBMERGED_WARNING		= "*** Ouro submerged for 30 sec ***";
DBM_OURO_EMERGE_SOON_WARNING		= "*** ~5 seconds until Ouro emerges ***";
DBM_OURO_EMERGED_WARNING		= "*** Ouro has emerged - 3 minutes until submerge ***";
DBM_OURO_POSSIBLE_SUBMERGE_WARNING	= "*** Possible submerge in 10 seconds ***";
DBM_OURO_SUBMERGE_WARNING		= "*** %s seconds until Ouro submerges ***";

DBM_OURO_CAST_SWEEP			= "Ouro begins to cast Sweep.";
DBM_OURO_CAST_SAND_BLAST		= "Ouro begins to perform Sand Blast.";
DBM_OURO_DIRT_MOUND_QUAKE		= "Dirt Mound's Quake";
DBM_OURO_ENRAGE			= "%s goes into a berserker rage!";
DBM_OURO_ENRAGE_ANNOUNCE		= "*** Enrage ***";
DBM_OURO_OURO				= "Ouro";



-- 8. CThun
DBM_CTHUN_NAME				= "C'Thun"
DBM_CTHUN_DESCRIPTION			= "Provides timers for tentacles and announces Dark Glare targets. Everyone except your 'main tank' (= the person who is the first to run in) should disable announce.";
DBM_CTHUN_SLASHHELP1			=  "/cthun start - starts the timers";
DBM_CTHUN_SEND_WHISPER			= "Send whisper";
DBM_CTHUN_SET_ICON			= "Set icon";
DBM_CTHUN_RANGE_CHECK			= "Range check";
DBM_CTHUN_RANGE_CHECK_PHASE2		= "Show Range Frame during phase 2";

DBM_CTHUN_SMALL_EYE_WARNING		= "*** Eye Tentacles in %s sec ***";
DBM_CTHUN_DARK_GLARE_WARNING		= "*** Dark Glare in %s sec ***";
DBM_CTHUN_DARK_GLARE_ON_GROUP		= "*** Dark Glare on group ";
DBM_CTHUN_DARK_GLARE_ON_YOU		= "Dark Glare on you!";
DBM_CTHUN_DARK_GLARE_TIMER_FAILED	= "Dark Glare timer adjustment failed.";
DBM_CTHUN_DARK_GLARE_END_WARNING	= "*** Dark Glare ends in 5 sec ***";
DBM_CTHUN_GIANT_CLAW_WARNING		= "*** Giant Claw in 10 sec ***";
DBM_CTHUN_GIANT_AND_EYES_WARNING	= "*** Giant %s and Eye Tentacles in 10 sec ***";
DBM_CTHUN_WEAKENED_WARNING		= "*** C'Thun is weakened - 45 sec ***";
DBM_CTHUN_WEAKENED_ENDS_WARNING	= "*** %s sec left ***";
DBM_CTHUN_DARK_GLARE			= "Dark Glare";
DBM_CTHUN_EYE_BEAM			= "Eye Beam";

DBM_CTHUN_EYE_OF_CTHUN			= "Eye of C'Thun";
DBM_CTHUN_CLAW				= "Claw";
DBM_CTHUN_EYE				= "Eye";
DBM_CTHUN_DIES				= "Eye of C'Thun dies.";
DBM_CTHUN_WEAKENED			= "%s is weakened!";




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
