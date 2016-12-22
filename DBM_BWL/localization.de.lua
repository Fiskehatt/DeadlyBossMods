if GetLocale() == "deDE" then
	--Razorgore
	DBM_RG_NAME				= "Razorgore der Ungez\195\164hmte";
	DBM_RG_DESCRIPTION			= "Stellt einen Timer f\195\188r den Anfang des Spawns zur Verf\195\188gung.";
	
	DBM_RG_CONTROLLER			= "Grethok der Aufseher";
	
	
	--Vaelastrasz
	DBM_VAEL_NAME				= "Vaelastrasz der Verdorbene";
	DBM_VAEL_DESCRIPTION			= "Sagt sein Brennendes Adrenalin an.";
	DBM_VAEL_SEND_WHISPER			= "Spieler anfl\195\188stern";
	DBM_VAEL_SET_ICON			= "Icon setzen";
	
	DBM_VAEL_BA_WARNING			= "*** %s brennt ***";
	DBM_VAEL_BA_WHISPER			= "Du brennst!";
	DBM_VAEL_BA				= "Brennendes Adrenalin";
	
	DBM_VAEL_BA_REGEXP			= "([^%s]+) (%w+) von Brennendes Adrenalin betroffen";
	DBM_VAEL_BA_FADES_REGEXP		= "Brennendes Adrenalin schwindet von ([^%s]+)%.";
	
	
	--Firemaw/Ebonroc/Flamegor
	DBM_FIREMAW_NAME			= "Feuerschwinge";
	DBM_FIREMAW_DESCRIPTION		= "Stellt einen Timer f\195\188r Fl\195\188gelsto\195\159 zur Verf\195\188gung.";
	DBM_EBONROC_NAME			= "Schattenschwinge";
	DBM_EBONROC_DESCRIPTION		= "Stellt einen Timer f\195\188r Fl\195\188gelsto\195\159 zur Verf\195\188gung und sagt Schattenschwinges Schatten an.";
	DBM_EBONROC_SET_ICON			= "Icon setzen"
	DBM_FLAMEGOR_NAME			= "Flammenmaul";
	DBM_FLAMEGOR_DESCRIPTION		= "Stellt einen Timer f\195\188r Fl\195\188gelsto\195\159 zur Verf\195\188gung und sagt Frenzy an.";
	DBM_FLAMEGOR_ANNOUNCE_FRENZY		= "Raserei ansagen";
	
	DBM_FIREMAW_FIREMAW			= "Feuerschwinge";
	DBM_EBONROC_EBONROC			= "Schattenschwinge";
	DBM_EBONROC_FLAMEGOR			= "Flammenmaul";
	
	DBM_FIREMAW_WING_BUFFET		= "Feuerschwinge beginnt Fl\195\188gelsto\195\159 zu wirken.";
	DBM_EBONROC_WING_BUFFET		= "Schattenschwinge beginnt Fl\195\188gelsto\195\159 zu wirken.";
	DBM_FLAMEGOR_WING_BUFFET		= "Flammenmaul beginnt Fl\195\188gelsto\195\159 zu wirken.";
	
	DBM_FIREMAW_SHADOW_FLAME		= "Feuerschwinge beginnt Schattenflamme zu wirken.";
	DBM_EBONROC_SHADOW_FLAME		= "Schattenschwinge beginnt Schattenflamme zu wirken.";
	DBM_FLAMEGOR_SHADOW_FLAME		= "Flammenmaul beginnt Schattenflamme zu wirken.";
	
	DBM_SHADOW_FLAME_WARNING		= "*** Schattenflamme in 2 Sek ***";
	DBM_WING_BUFFET_WARNING		= "*** Fl\195\188gelsto\195\159 in %s Sek ***";
	DBM_EBONROC_SHADOW_WARNING		= "*** %s hat Schattenschwinges Schatten ***";
	DBM_FLAMEGOR_FRENZY			= "%s ger\195\164t in Raserei!";
	DBM_FLAMEGOR_FRENZY_ANNOUNCE   	= "*** Raserei! ***";
	
	DBM_EBONROC_SHADOW_REGEXP		= "([^%s]+) (%w+) von Schattenschwinges Schatten betroffen.";
	DBM_EBONROC_SHADOW_REGEXP2		= "Schattenschwinges Schatten schwindet von ([^%s]+)%.";
	
	DBM_SBT["Wing Buffet"]			= "Fl\195\188gelsto\195\159";
	DBM_SBT["Wing Buffet Cast"]		= "Fl\195\188gelsto\195\159 Cast";
	DBM_SBT["Shadow Flame Cast"]		= "Schattenflamme Cast";
	
	
	--Chromaggus
	DBM_CHROMAGGUS_NAME			= "Chromaggus";
	DBM_CHROMAGGUS_DESCRIPTION		= "Stellt einen Timer f\195\188r seinen Atem zur Verf\195\188gung und sagt die Verwundbarkeit an.";
	DBM_CHROMAGGUS_ANNOUNCE_FRENZY		= "Raserei ansagen";
	DBM_CHROMAGGUS_ANNOUNCE_VULNERABILITY	= "Verwundbarkeiten ansagen";
	
	DBM_CHROMAGGUS_BREATH_1		= "Atem 1";
	DBM_CHROMAGGUS_BREATH_2		= "Atem 2";
	
	DBM_CHROMAGGUS_BREATH_CAST_WARNING	= "*** %s kommt! ***"
	DBM_CHROMAGGUS_BREATH_WARNING		= "*** %s in 10 Sekunden ***"
	
	DBM_CHROMAGGUS_BREATH_REGEXP		= "Chromaggus beginnt (.+) zu wirken%."; --do not translate this!
	DBM_CHROMAGGUS_VULNERABILITY_REGEXP	= "[^%s]+ [^%s]+ (%w+) Chromaggus for (%d+) ([^%s]+) damage";
	DBM_CHROMAGGUS_CHROMAGGUS		= "Chromaggus";

	DBM_CHROMAGGUS_FRENZY_ANNOUNCE		= "*** Raserei ***";
	DBM_CHROMAGGUS_FRENZY_EXPR		= "%s ger\195\164t in t\195\182dliche Raserei!";
	
	DBM_SBT["Breath 1"]			= "Atem 1";
	DBM_SBT["Breath 2"]			= "Atem 2";
	DBM_SBT["Time Lapse"]			= "Zeitraffer";
	DBM_SBT["Time Lapse cast"]		= "Zeitraffer Cast";
	DBM_SBT["Ignite Flesh"]		= "Fleisch entz\195\188nden";
	DBM_SBT["Ignite Flesh cast"]		= "Fleisch entz\195\188nden Cast";
	DBM_SBT["Incinerate"]			= "Verbrennen";
	DBM_SBT["Incinerate cast"]		= "Verbrennen Cast";
	DBM_SBT["Frost Burn"]			= "Frostbeulen";
	DBM_SBT["Frost Burn cast"]		= "Frostbeulen Cast";
	DBM_SBT["Corrosive Acid"]		= "\195\132tzende S\195\164ure";
	DBM_SBT["Corrosive Acid cast"]		= "\195\132tzende S\195\164ure Cast";
	
	--Nefarian
	DBM_NEFARIAN_NAME			= "Nefarian";
	DBM_NEFARIAN_DESCRIPTION		= "Stellt Timer f\195\188r Class Calls zur Verf\195\188gung.";
--	DBM_NEFARIAN_BLOCK_HEALS		= "Heilung w\195\164hrend Priester Calls blockieren";
	DBM_NEFARIAN_UNEQUIP_BOW		= "Bogen/Gewehr vor Class Calls ausziehen";
	
	DBM_NEFARIAN_SYNCKILLS_INFO		= "Syncronisiere Kills in Phase 1";

	DBM_NEFARIAN_FEAR_WARNING		= "*** Fear in 1.5 Sek ***";
	DBM_NEFARIAN_PHASE2_WARNING		= "*** Nefarian inc - 15 Sek ***";
	DBM_NEFARIAN_CLASS_CALL_WARNING	= "*** Class Call bald ***";
	DBM_NEFARIAN_SHAMAN_WARNING		= "*** Schamanen Call - Totems ***";
	DBM_NEFARIAN_PALA_WARNING		= "*** Paladin Call - Segen des Schutzes ***";
	DBM_NEFARIAN_DRUID_WARNING		= "*** Druiden Call - Katzengestalt ***";
	DBM_NEFARIAN_PRIEST_WARNING		= "*** Priester Call - Nicht heilen! ***";
	DBM_NEFARIAN_WARRIOR_WARNING		= "*** Krieger Call - Berserkerhaltung ***";
	DBM_NEFARIAN_ROGUE_WARNING		= "*** Schurken Call - Teleportiert und festgewurzelt ***";
	DBM_NEFARIAN_WARLOCK_WARNING		= "*** Hexenmeister Call - H\195\182llenbestien ***";
	DBM_NEFARIAN_HUNTER_WARNING		= "*** J\195\164ger Call - B\195\182gen/Gewehre kaputt ***";
	DBM_NEFARIAN_MAGE_WARNING		= "*** Magier Call - Polymorph ***";
	DBM_NEFARIAN_HEAL_BLOCKED		= "Du darfst %s nicht w\195\164hrend einem Priester Call wirken!";
	DBM_NEFARIAN_UNEQUIP_ERROR		= "Fehler bei dem Versuch die Waffe auszuziehen."
	DBM_NEFARIAN_EQUIP_ERROR		= "Fehler bei dem Versuch die Waffe anzuziehen."

	DBM_NEFARIAN_DRAKONID_DOWN = {};
	DBM_NEFARIAN_DRAKONID_DOWN[1] = "Schwarzer Drakonid stirbt.";
	DBM_NEFARIAN_DRAKONID_DOWN[2] = "Blauer Drakonid stirbt.";
	DBM_NEFARIAN_DRAKONID_DOWN[3] = "Grüner Drakonid stirbt.";
	DBM_NEFARIAN_DRAKONID_DOWN[4] = "Bronzener Drakonid stirbt.";
	DBM_NEFARIAN_DRAKONID_DOWN[5] = "Roter Drakonid stirbt.";
	DBM_NEFARIAN_DRAKONID_DOWN[6] = "Prismatischer Drakonid stirbt.";

	DBM_NEFARIAN_KILLCOUNT			= "Aktuell getötet: %d";

--[[DBM_NEFARIAN_BLOCKED_SPELLS	= {
		["Blitzheilung"]		= 1.5,
		["Große Heilung"]		= 2.5,
		["Gebet der Heilung"]		= 3,
		["Heilen"]			= 2.5,
		["Geringes Heilen"]		= 1.5,
	}]]
	
	DBM_NEFARIAN_CAST_SHADOW_FLAME		= "Nefarian beginnt Schattenflamme zu wirken.";
	DBM_NEFARIAN_CAST_FEAR			= "Nefarian beginnt Dr\195\182hnendes Gebr\195\188ll zu wirken.";
	DBM_NEFARIAN_YELL_PHASE2		= "Sehr gut, meine Diener. Der Mut der Sterblichen scheint zu schwinden! Nun lasst uns sehen, wie sie sich gegen den wahren Herrscher des Blackrock behaupten werden!";
	DBM_NEFARIAN_YELL_PHASE3		= "Impossible! Rise my minions!  Serve your master once more!";
	--thx 2 leidenschafft
	DBM_NEFARIAN_YELL_SHAMANS		= "Schamanen";
	DBM_NEFARIAN_YELL_PALAS		= "Paladine... ich habe geh\195\182rt, dass Ihr viele Leben habt. Zeigt es mir.";
	DBM_NEFARIAN_YELL_DRUIDS		= "Druiden und ihre l\195\164cherliche Gestaltwandlung. Zeigt mal was Ihr k\195\182nnt!";
	DBM_NEFARIAN_YELL_PRIESTS		= "Priester! Wenn Ihr weiterhin so heilt, k\195\182nnen wir es auch gerne etwas interessanter gestalten!";
	DBM_NEFARIAN_YELL_WARRIORS		= "Krieger, Ich bin mir sicher, dass ihr kr\195\164ftiger als das zuschlagen k\195\182nnt!";
	DBM_NEFARIAN_YELL_ROGUES		= "Schurken? Kommt aus den Schatten und zeigt Euch!";
	DBM_NEFARIAN_YELL_WARLOCKS		= "Hexenmeister, Ihr solltet nicht mit Magie spielen, die Ihr nicht versteht. Seht Ihr was ich meine?";
	DBM_NEFARIAN_YELL_HUNTERS		= "Jäger und ihre lästigen Knallbüchsen!"
	DBM_NEFARIAN_YELL_MAGES		= "Auch Magier? Ihr solltet vorsichtiger sein, wenn Ihr mit Magie spielt...";
	
	DBM_SBT["Class call CD"] 		= "Class Call CD";
	DBM_SBT["Druid call"] 			= "Druiden Call";
	DBM_SBT["Priest call"] 		= "Priester Call";
	DBM_SBT["Warrior call"] 		= "Krieger Call";
	DBM_SBT["Rogue call"] 			= "Schurken Call";
	DBM_SBT["Mage call"] 			= "Magier Call";
end
