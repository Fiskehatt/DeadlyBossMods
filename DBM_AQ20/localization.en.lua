
-- 1. Kurinaxx
DBM_KURINAXX_NAME	= "Kurinnaxx";

-- 2. General Rajaxx
DBM_RAJAXX_NAME		= "General Rajaxx";
DBM_RAJAXX_INFO		= "Warns for incoming waves and General Rajaxx.";
DBM_RAJAXX_WAVE1_EXPR		= "They come now. Try not to get yourself killed, young blood.";
DBM_RAJAXX_WAVE3_EXPR		= "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!";
DBM_RAJAXX_WAVE4_EXPR		= "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!";
DBM_RAJAXX_WAVE5_EXPR		= "Fear is for the enemy! Fear and death!";
DBM_RAJAXX_WAVE6_EXPR		= "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!";
DBM_RAJAXX_WAVE7_EXPR		= "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!";
DBM_RAJAXX_WAVE8_EXPR		= "Impudent fool! I will kill you myself!";
DBM_RAJAXX_WAVE_ANNOUNCE 	= "*** Wave %d/8 incoming ***";
DBM_RAJAXX_WAVE_RAJAXX		= "*** General Rajaxx incoming ***";
DBM_RAJAXX_KILL_EXPR		= "^Kill ([^%s]+)!";
DBM_RAJAXX_KILL_ANNOUNCE	= "*** %s needs HEAL ***";

-- 3. Moam
DBM_MOAM_NAME			= "Moam"
DBM_MOAM_INFO			= "Provides a timer for Moam's Stone Form.";
DBM_MOAM_COMBAT_START		= "%s senses your fear.";
DBM_MOAM_STONE_ANNOUNCE_TIME	= "*** %d sec until Stone Form ***";
DBM_MOAM_STONE_GAIN		= "%s drains your mana and turns to stone.";
DBM_MOAM_STONE_ANNOUNCE_FADE	= "*** %d sec until Stone Form  ends ***";
DBM_MOAM_STONE_FADE_EXPR	= "^Energize fades from Moam%.";
DBM_MOAM_STONE_FADE_ANNOUNCE	= "*** Stone Form faded ***";

-- 4. Buru the Gorger
DBM_BURU_NAME			= "Buru the Gorger";
DBM_BURU_INFO 			= "Displays warnings when he watches someone.";
DBM_BURU_WHISPER_INFO		= "Send whisper";
DBM_BURU_WHISPER_TEXT		= "You are being watched! Run!";
DBM_BURU_SETICON_INFO		= "Set icon";
DBM_BURU_EYE_EXPR		= "sets eyes on ([^%s]+)!";
DBM_BURU_EYE_ANNOUNCE 		= "*** %s is being watched ***";
DBM_BURU_EYE_SELFWARNING	= "Your are being watched!";

-- 5. Ayamiss the Hunter
DBM_AYAMISS_NAME		= "Ayamiss the Hunter";
DBM_AYAMISS_INFO 		= "Displays a warning when somebody is being sacrificed.";
DBM_AYAMISS_SACRIFICE_EXPR 	= "([^%s]+) (%w+) afflicted by Paralyze";
DBM_AYAMISS_SACRIFICE_ANNOUNCE	= "*** %s is being sacrificed ***";

-- 6. Ossirian the Unscarred
DBM_OSSIRIAN_NAME		= "Ossirian the Unscarred";
DBM_OSSIRIAN_INFO		= "Displays warnings for Ossirian the Unscarred when he is weakened and supreme.";
DBM_OSSIRIAN_CURSE_INFO	= "Announce curse";
DBM_OSSIRIAN_CURSE_EXPR 	= "([^%s]+) is afflicted by Curse of Tongues.";
DBM_OSSIRIAN_CURSE_ANNOUNCE	= "*** Curse - next in 25 sec ***";
DBM_OSSIRIAN_CURSE_PREANNOUNCE	= "*** Next curse in ~5 sec ***";
DBM_OSSIRIAN_WEAK_ANNOUNCE	= "*** %s vulnerability for 45 sec ***";
DBM_OSSIRIAN_WEAK_EXPR		= "^Ossirian the Unscarred is afflicted by (.+) Weakness%.$";
DBM_OSSIRIAN_WEAK_RUNOUT	= "*** Supreme Mode in %d seconds ***";
DBM_OSSIRIAN_SUPREME_EXPR	= "Ossirian the Unscarred gains Strength of Ossirian.";
DBM_OSSIRIAN_SUPREME_ANNOUNCE	= "*** Supreme Mode ***";
DBM_OSSIRIAN_DEATH_EXPR	= "I...have...failed.";


-- Anubisath Guardians  (Ossirian)
DBM_GUARDIAN_NAME 			= "Anubisath Guardians";
DBM_GUARDIAN_INFO 			= "Warns for the Anubisath Guardians abilitys.";
DBM_GUARDIAN_SUMMON_INFO		= "Warn on Summon (Warrior/Swarmguard)";
DBM_GUARDIAN_THUNDERCLAP_EXPR	 	= "^Anubisath Guardian's Thunderclap hits ([^%s]+) for %d+%.";
DBM_GUARDIAN_THUNDERCLAP_ANNOUNCE	= "*** Thunderclap ***";
DBM_GUARDIAN_EXPLODE_EXPR	 	= "Anubisath Guardian gains Explode.";
DBM_GUARDIAN_EXPLODE_ANNOUNCE		= "*** Explode ***";
DBM_GUARDIAN_ENRAGE_EXPR		= "Anubisath Guardian gains Enrage.";
DBM_GUARDIAN_ENRAGE_ANNOUNCE		= "*** Enrage ***";

DBM_GUARDIAN_PLAGUE_EXPR		= "^([^%s]+) ([^%s]+) afflicted by Plague%.$";
DBM_GUARDIAN_PLAGUE_ANNOUNCE		= "*** %s has the Plague ***";
DBM_GUARDIAN_PLAGUE_WHISPER		= "You have the Plague! move away!";

DBM_GUARDIAN_SUMMONGUARD_EXPR 		= "Anubisath .* casts Summon Anubisath Swarmguard.";
DBM_GUARDIAN_SUMMONEDGUARD_ANNOUNCE	= "*** Swarmguard Summoned ***";
DBM_GUARDIAN_SUMMONWARRIOR_EXPR 	= "Anubisath .* casts Summon Anubisath Warrior.";
DBM_GUARDIAN_SUMMONEDWARRIOR_ANNOUNCE	= "*** Warrior Summoned ***";

DBM_SBT["Ossirians Curse"] = "Curse of Tongues";



