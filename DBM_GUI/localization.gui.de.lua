---------------------------------------------------
-- La Vendetta BossMods GUI Language File        --
-- GUI by LV|Nitram                              --
--                                               --
-- Translations by:                              --
--   LV|Nitram  -> EN                            --
--   LV|Tandanu -> DE                            --
--   LV|Tandanu -> fixed typos                   --
---------------------------------------------------

--------------------
-- Translation DE --
--------------------

if( GetLocale() == "deDE" ) then

-- DBM_GUI.lua for Bossmod List Frame (DBMBossModListFrame)
DBMGUI_TAB_1_TITLE_TEXT		= "Naxxramas Boss Mods";
DBMGUI_TAB_2_TITLE_TEXT		= "Temple von Ahn'Qiraj Boss Mods";
DBMGUI_TAB_3_TITLE_TEXT		= "Pechschwingenhort Boss Mods";
DBMGUI_TAB_4_TITLE_TEXT		= "Geschmolzener Kern Boss Mods";
DBMGUI_TAB_5_TITLE_TEXT		= "Zul'Gurub und Ahn'Qiraj Boss Mods";
DBMGUI_TAB_6_TITLE_TEXT		= "Sonstige Boss Mods";

-- Tooltips
DBMGUI_FRAMETAB_1_TT			= "Naxxramas Boss Mods";
DBMGUI_FRAMETAB_1_TD			= "Eine Sammlung von unseren Boss Mods f\195\188r Naxxramas. W\195\164hle einen Encounter aus um mehr Optionen zu erhalten.";
DBMGUI_FRAMETAB_2_TT			= "Tempel von Ahn'Qiraj Boss Mods";
DBMGUI_FRAMETAB_2_TD			= "Eine Sammlung von unseren Boss Mods f\195\188r den Tempel von Ahn'Qiraj. W\195\164hle einen Encounter aus um mehr Optionen zu erhalten.";
DBMGUI_FRAMETAB_3_TT			= "Pechschwingenhort Boss Mods";
DBMGUI_FRAMETAB_3_TD			= "Eine Sammlung von unseren Boss Mods f\195\188r den Pechschwingenhort. W\195\164hle einen Encounter aus um mehr Optionen zu erhalten.";
DBMGUI_FRAMETAB_4_TT			= "Geschmolzener Kern Boss Mods";
DBMGUI_FRAMETAB_4_TD			= "Eine Sammlung von unseren Boss Mods f\195\188r den Geschmolzenen Kern. W\195\164hle einen Encounter aus um mehr Optionen zu erhalten.";
DBMGUI_FRAMETAB_5_TT			= "Zul'Gurub und Ruinen von Ahn'Qiraj Boss Mods";
DBMGUI_FRAMETAB_5_TD			= "Eine Sammlung von unseren Boss Mods f\195\188r den Zul'Gurub und die Ruinen von Ahn'Qiraj. W\195\164hle einen Encounter aus um mehr Optionen zu erhalten.";

DBMGUI_DISABLE_ADDON			= "AddOn deaktivieren";
DBMGUI_ENABLE_ADDON			= "AddOn aktivieren";
DBMGUI_STOP_ADDON				= "AddOn stoppen";
DBMGUI_DISABLE_ANNOUNCE		= "Ansagen deaktivieren";
DBMGUI_ENABLE_ANNOUNCE			= "Ansagen aktivieren";
DBMGUI_SHOW_DROPDOWNMENU		= "Mehr Optionen";
DBMGUI_DROPDOWNMENU_TITLE		= "Boss Mod Men\195\188";

-- DBMBossModFrame
DBMGUI_HIDE_OPTIONS				= "<<< Optionen";
DBMGUI_SHOW_OPTIONS				= "Optionen >>>";

-- Options Frame (DBMOptionsFrame)
if( DBM.VersionBeta ) then
	DBMGUI_OPTIONS					= "DBM v"..DBM.Version.." - "..DBM.VersionBeta;
else
	DBMGUI_OPTIONS					= "Optionen (GUI v"..DBMGUI_VERSION.." / Boss Mod v"..DBM.Version..")";
end
DBMGUI_SIDEFRAME_TAB1				= "Allgemein";
DBMGUI_SIDEFRAME_TAB2				= "Bars";
DBMGUI_SIDEFRAME_TAB3				= "Warnungen";
DBMGUI_SIDEFRAME_TAB4				= "Extra";
DBMGUI_SIDEFRAME_TAB5				= "Über";

-- DBMOptionsFramePage1
DBMGUI_TITLE_SYNCSETTINGS			= "Synchronizations Setup";
DBMGUI_TITLE_MINIMAPBUTTON			= "Minimap Button Setup";
DBMGUI_TITLE_AGGROALERT			= "Aggro Alarm Einstellungen";
DBMGUI_CHECKBOX_SYNC_ENABLE			= "Synchronization aktivieren";
DBMGUI_BUTTON_VERSION_CHECK			= "Versions Check";
DBMGUI_BUTTON_VERSION_CHECK_FAILD		= "Keine anderen Vendetta Boss Mods gefunden";
DBMGUI_BUTTON_STATUSBAR_SYNCINFO		= "Status Bar Info";
DBMGUI_BUTTON_STATUSBAR_SYNCINFO_FAILD 	= "Keine Bars gefunden.";
DBMGUI_SLIDER_MINIMAP_1			= "Position";
DBMGUI_SLIDER_MINIMAP_2			= "Radius";
DBMGUI_CHECKBOX_MINIMAP			= "Minimap Button anzeigen";
DBMGUI_CHECKBOX_AGGROALERT_ENABLE		= "Aggro Alarm aktivieren";
DBMGUI_BUTTON_AGGROALERT_TEST			= "Aggro Alarm testen";
DBMGUI_BUTTON_AGGROALERT_RESET			= "Einstellungen resetten";
DBMGUI_BUTTON_AGGROALERT_RESET_DONE		= "Aggro Alarm Einstellungen erfolgreich zurückgesetzt";
DBMGUI_CHECKBOX_AGGROALERT_PLAYSOUND		= "Sound bei Aggro abspielen";
DBMGUI_CHECKBOX_AGGROALERT_FLASH		= "Flash bei Aggro";
DBMGUI_CHECKBOX_AGGROALERT_SHAKE		= "Shake bei Aggro";
DBMGUI_CHECKBOX_AGGROALERT_SPECIALTEXT		= "Special Warning anzeigen";
DBMGUI_CHECKBOX_AGGROALERT_LOCALWARNING	= "Lokale Warnung anzeigen";
DBMGUI_BUTTON_MOVEABLEBAR			= "Bewegbare Bar";
DBMGUI_BUTTON_DEFAULTS				= "Standard";

-- DBMOptionsFramePage2
DBMGUI_TITLE_STATUSBARS 			= "Status Bar Timer Setup";
DBMGUI_TITLE_PIZZATIMER			= "\"Pizza Timer\" erstellen";
DBMGUI_CHECKBOX_STATUSBAR_ENABLE		= "Status Bars aktivieren";
DBMGUI_CHECKBOX_STATUSBAR_FILLUP		= "Status Bars auffüllen";
DBMGUI_CHECKBOX_STATUSBAR_FLIPOVER		= "Status Bars nach oben aufbauen";
DBMGUI_EDITBOX_PIZZATIMER_TEXT			= "Name";
DBMGUI_EDITBOX_PIZZATIMER_MIN			= "Minuten";
DBMGUI_EDITBOX_PIZZATIMER_SEC			= "Sekunden";
DBMGUI_CHECKBOX_PIZZATIMER_BROADCAST		= "Timer zum Raid broadcasten";
DBMGUI_BUTTON_PIZZATIMER_START			= "Timer Starten";

-- DBMOptionsFramePage3
DBMGUI_TITLE_RAIDWARNING			= "Raid Warnungen";
DBMGUI_TITLE_SELFWARNING			= "Lokale Warnungen"; 
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_1		= "RaidWarning (default Sound)";
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_2		= "BellTollNightElf (CT_Raid Sound)";
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_3		= "Sound deaktivieren";
DBMGUI_DROPDOWN_RAIDWARNING_INFO_DISABLED	= "Raid Warnungs Sound deaktiviert";
DBMGUI_RAIDWARNING_EXAMPLE			= "*** Beispiels Raid Warnung ***";
DBMGUI_BUTTON_SOUND_TEST			= "Sound testen";
DBMGUI_BUTTON_SHOW_EXAMPLE			= "Beispiel anzeigen";
DBMGUI_BUTTON_RAIDWARNING_RESET		= "Frame resetten";
DBMGUI_BUTTON_RAIDWARNING_RESET_DONE		= "Einstellungen erfolgreich zurückgesetzt";

-- DBMOptionsFramePage4
DBMGUI_TITLE_SPECIALWARNING			= "Special Warnings einstellen";
DBMGUI_TITLE_SHAKESCREEN			= "Screen Shake Effekte einstellen";
DBMGUI_TITLE_FLASHEFFECT			= "Flash Effekte einstellen";
DBMGUI_CHECKBOX_SPECWARNING_ENABLE		= "Special Warnings aktivieren";
DBMGUI_BUTTON_SPECWARNING_TEST			= "Test Warnung";
DBMGUI_BUTTON_SPECWARNING_EXAMPLE		= "Test Nachricht :)";
DBMGUI_SLIDER_SPECWARNING_DURATION		= "Dauer";
DBMGUI_SLIDER_SPECWARNING_FADETIME		= "Ausblende Dauer";
DBMGUI_SLIDER_SPECWARNING_TEXTSIZE		= "Schriftgröße";
DBMGUI_CHECKBOX_SHAKESCREEN_ENABLE		= "Screen Shake Effekte aktivieren";
DBMGUI_BUTTON_SHAKESCREEN_TEST			= "Shake testen";
DBMGUI_SLIDER_SHAKESCREEN_DURATION		= "Dauer";
DBMGUI_SLIDER_SHAKESCREEN_INTENSITY		= "Stärke";
DBMGUI_CHECKBOX_FLASHEFFECT_ENABLE		= "Flash Effekte aktivieren";
DBMGUI_BUTTON_FLASHEFFECT_TEST			= "Flash testen";
DBMGUI_SLIDER_FLASHEFFECT_DURATION		= "Dauer";
DBMGUI_SLIDER_FLASHEFFECT_FLASHES		= "Anzahl";






-- Translations added v1.10
DBMGUI_SIDEFRAME_TAB5				= "Sonstiges";
DBMGUI_SIDEFRAME_TAB6				= "Über";

DBMGUI_SLIDER_STATUSBAR_COUNT			= "Anzahl an Bars";
DBMGUI_DROPDOWN_STATUSBAR_DESIGN_1		= "Klassisches Design";
DBMGUI_DROPDOWN_STATUSBAR_DESIGN_2		= "Moderner Stil";
DBMGUI_DROPDOWN_STATUSBAR_EXAMPLE_BAR		= "Beispiels Bar";

DBMGUI_TITLE_AUTORESPOND			= "Auto beantworten Einstellungen";
DBMGUI_CHECKBOX_AUTORESPOND_ENABLE		= "Whisper während Boss Fights automatisch beantworten";
DBMGUI_CHECKBOX_AUTORESPOND_SHOW_WHISPERS	= "Whisper während dem Kampf anzeigen";
DBMGUI_CHECKBOX_AUTORESPOND_INFORM_USER	= "Mich über automatisch beantwortete Whisper informieren";
DBMGUI_CHECKBOX_AUTORESPOND_HIDE_REPLY		= "Automatische Antworten verstecken";

DBMGUI_EDITBOX_AUTORESPOND_TITLE		= "Nachricht die während Boss Fights verschickt wird";
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_HEADER	= "Die folgenden Zeichen werden\nautomatisch ersetzt:";
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT1	= {"%P", "Dein Name"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT2	= {"%B", "Boss Name"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT3	= {"%HP", "Boss HP"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT4	= {"%ALIVE", "Lebende Raid Member"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT5	= {"%RAID", "Raid Member"};

-- added @ 1.12.06
DBMGUI_CHECKBOX_SHOWPULLSYNCINFO		= "Pull Sync Info anzeigen"; --USE ME

end -- Locale



