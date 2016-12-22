---------------------------------------------------
-- La Vendetta BossMods GUI Language File        --
-- GUI by LV|Nitram                              --
--                                               --
-- Translations by:                              --
--   LV|Nitram  -> EN                            --
--   LV|Tandanu -> DE                            --
--   LV|Tandanu -> fixed typos                   --
---------------------------------------------------

----------------------------------
-- Translation by Default -> EN --
----------------------------------

-- DBM_GUI.lua for Bossmod List Frame (DBMBossModListFrame)
DBMGUI_TAB_1_TITLE_TEXT		= "Naxxramas Boss Mods";
DBMGUI_TAB_2_TITLE_TEXT		= "Temple of Ahn'Qiraj Boss Mods";
DBMGUI_TAB_3_TITLE_TEXT		= "Blackwing Lair Boss Mods";
DBMGUI_TAB_4_TITLE_TEXT		= "Molten Core Boss Mods";
DBMGUI_TAB_5_TITLE_TEXT		= "Zul'Gurub and Ahn'Qiraj Boss Mods";
DBMGUI_TAB_6_TITLE_TEXT		= "Other Boss Mods";

-- Tooltips
DBMGUI_FRAMETAB_1_TT			= "Naxxramas Boss Mods";
DBMGUI_FRAMETAB_1_TD			= "A collection of our boss mods for Naxxramas. Select an encounter to get additional options.";
DBMGUI_FRAMETAB_2_TT			= "Temple of Ahn'Qiraj Boss Mods";
DBMGUI_FRAMETAB_2_TD			= "A collection of our boss mods for the Temple of Ahn'Qiraj. Select an encounter to get additional options.";
DBMGUI_FRAMETAB_3_TT			= "Blackwing Lair Boss Mods";
DBMGUI_FRAMETAB_3_TD			= "A collection of our boss mods for Blackwing Lair. Select an encounter to get additional options.";
DBMGUI_FRAMETAB_4_TT			= "Molten Core Boss Mods";
DBMGUI_FRAMETAB_4_TD			= "A collection of our boss mods for Molten Core. Select an encounter to get additional options.";
DBMGUI_FRAMETAB_5_TT			= "Zul'Gurub and Ahn'Qiraj Boss Mods";
DBMGUI_FRAMETAB_5_TD			= "A collection of our boss mods for Zul'Gurub and Ahn'Qiraj 20. Select an encounter to get additional options.";

DBMGUI_DISABLE_ADDON			= "Disable AddOn";
DBMGUI_ENABLE_ADDON			= "Enable AddOn";
DBMGUI_STOP_ADDON				= "Stop AddOn";
DBMGUI_DISABLE_ANNOUNCE		= "Disable Announce";
DBMGUI_ENABLE_ANNOUNCE			= "Enable Announce";
DBMGUI_SHOW_DROPDOWNMENU		= "Additional Options";
DBMGUI_DROPDOWNMENU_TITLE		= "Boss Mod Menu";

-- DBMBossModFrame
DBMGUI_HIDE_OPTIONS				= "<<< Options";
DBMGUI_SHOW_OPTIONS				= "Options >>>";

-- Options Frame (DBMOptionsFrame)
if( DBM.VersionBeta ) then
	DBMGUI_OPTIONS					= "DBM v"..DBM.Version.." - "..DBM.VersionBeta;
else
	DBMGUI_OPTIONS					= "Options (GUI v"..DBMGUI_VERSION.." / Boss Mod v"..DBM.Version..")";
end
DBMGUI_SIDEFRAME_TAB1				= "General";
DBMGUI_SIDEFRAME_TAB2				= "Bars";
DBMGUI_SIDEFRAME_TAB3				= "Warnings";
DBMGUI_SIDEFRAME_TAB4				= "Specials";

-- DBMOptionsFramePage1
DBMGUI_TITLE_SYNCSETTINGS			= "Synchronization Setup";
DBMGUI_TITLE_MINIMAPBUTTON			= "Minimap Button Setup";
DBMGUI_TITLE_AGGROALERT			= "Aggro Alert Settings";
DBMGUI_CHECKBOX_SYNC_ENABLE			= "Enable synchronization";
DBMGUI_BUTTON_VERSION_CHECK			= "Version check";
DBMGUI_BUTTON_VERSION_CHECK_FAILD		= "No other Vendetta Boss Mod AddOns found";
DBMGUI_BUTTON_STATUSBAR_SYNCINFO		= "Status bar sync info";
DBMGUI_BUTTON_STATUSBAR_SYNCINFO_FAILD 	= "There are no bars.";
DBMGUI_SLIDER_MINIMAP_1			= "Position";
DBMGUI_SLIDER_MINIMAP_2			= "Radius";
DBMGUI_CHECKBOX_MINIMAP			= "Show minimap button";
DBMGUI_CHECKBOX_AGGROALERT_ENABLE		= "Enable aggro alert";
DBMGUI_BUTTON_AGGROALERT_TEST			= "Test aggro alert";
DBMGUI_BUTTON_AGGROALERT_RESET			= "Reset settings";
DBMGUI_BUTTON_AGGROALERT_RESET_DONE		= "Aggro alert has been resetted";
DBMGUI_CHECKBOX_AGGROALERT_PLAYSOUND		= "Play sound on aggro gain";
DBMGUI_CHECKBOX_AGGROALERT_FLASH		= "Flash on aggro gain";
DBMGUI_CHECKBOX_AGGROALERT_SHAKE		= "Shake on aggro gain";
DBMGUI_CHECKBOX_AGGROALERT_SPECIALTEXT		= "Show special warning";
DBMGUI_CHECKBOX_AGGROALERT_LOCALWARNING	= "Show warning as local warning";
DBMGUI_BUTTON_MOVEABLEBAR			= "Movable bar";
DBMGUI_BUTTON_DEFAULTS				= "Defaults";

-- DBMOptionsFramePage2
DBMGUI_TITLE_STATUSBARS 			= "Status Bar Timer Setup";
DBMGUI_TITLE_PIZZATIMER			= "Create \"Pizza Timer\"";
DBMGUI_CHECKBOX_STATUSBAR_ENABLE		= "Enable status bars";
DBMGUI_CHECKBOX_STATUSBAR_FILLUP		= "Fill up status bars";
DBMGUI_CHECKBOX_STATUSBAR_FLIPOVER		= "Expand status bars upwards";
DBMGUI_EDITBOX_PIZZATIMER_TEXT			= "Name";
DBMGUI_EDITBOX_PIZZATIMER_MIN			= "Minutes";
DBMGUI_EDITBOX_PIZZATIMER_SEC			= "Seconds";
DBMGUI_CHECKBOX_PIZZATIMER_BROADCAST		= "Broadcast timer to raid";
DBMGUI_BUTTON_PIZZATIMER_START			= "Start timer";

-- DBMOptionsFramePage3
DBMGUI_TITLE_RAIDWARNING			= "Raid Warnings";
DBMGUI_TITLE_SELFWARNING			= "Local Warnings"; 
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_1		= "RaidWarning (default Sound)";
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_2		= "BellTollNightElf (CT_Raid Sound)";
DBMGUI_DROPDOWN_RAIDWARNING_OPTION_3		= "Disable sound warning";
DBMGUI_DROPDOWN_RAIDWARNING_INFO_DISABLED	= "Raid Warning sound disabled";
DBMGUI_RAIDWARNING_EXAMPLE			= "*** Example Raid Warning ***";
DBMGUI_BUTTON_SOUND_TEST			= "Test sound";
DBMGUI_BUTTON_SHOW_EXAMPLE			= "Show example";
DBMGUI_BUTTON_RAIDWARNING_RESET		= "Reset frame";
DBMGUI_BUTTON_RAIDWARNING_RESET_DONE		= "Settings successfully resetted to defaults";

-- DBMOptionsFramePage4
DBMGUI_TITLE_SPECIALWARNING			= "Setup Special Warnings";
DBMGUI_TITLE_SHAKESCREEN			= "Setup Screen Shake Effects";
DBMGUI_TITLE_FLASHEFFECT			= "Setup Flash Effects";
DBMGUI_CHECKBOX_SPECWARNING_ENABLE		= "Enable special warnings";
DBMGUI_BUTTON_SPECWARNING_TEST			= "Test warning";
DBMGUI_BUTTON_SPECWARNING_EXAMPLE		= "Test message :)";
DBMGUI_SLIDER_SPECWARNING_DURATION		= "Duration";
DBMGUI_SLIDER_SPECWARNING_FADETIME		= "Fade time";
DBMGUI_SLIDER_SPECWARNING_TEXTSIZE		= "Text size";
DBMGUI_CHECKBOX_SHAKESCREEN_ENABLE		= "Enable screen shake effects";
DBMGUI_BUTTON_SHAKESCREEN_TEST			= "Test shake";
DBMGUI_SLIDER_SHAKESCREEN_DURATION		= "Duration";
DBMGUI_SLIDER_SHAKESCREEN_INTENSITY		= "Intensity";
DBMGUI_CHECKBOX_FLASHEFFECT_ENABLE		= "Enable flash effects";
DBMGUI_BUTTON_FLASHEFFECT_TEST			= "Test flash";
DBMGUI_SLIDER_FLASHEFFECT_DURATION		= "Duration";
DBMGUI_SLIDER_FLASHEFFECT_FLASHES		= "Flashes";

-- DBMOptionsFramePage5
DBMGUI_ABOUTTITLE	= "About";
DBMGUI_ABOUTTEXT	= {
	"LV Bossmods API (c) by DeadlyMinds Tandanu",
	"LV Bossmods GUI (c) by La Vendetta Nitram",
	" ",
	"Thanks for using our AddOn.",
	" ",
	"                                  Visit",
	" ",
	"                   www.deadlyminds.net",
	" ",
	"                                   and",
	" ",
	"                 www.curse-gaming.com",
	" ",
	"If you have a suggestion or a bug report, leave a comment at www.curse-gaming.com or post in our forums at www.deadlyminds.net",

};


-- Translations added v1.10
DBMGUI_SIDEFRAME_TAB5				= "Misc";
DBMGUI_SIDEFRAME_TAB6				= "About";

DBMGUI_SLIDER_STATUSBAR_COUNT			= "Bar count";
DBMGUI_DROPDOWN_STATUSBAR_DESIGN_1		= "Classic Design"; --wird überflüssig mit dem Verwenden des Namens aus der Tabelle
DBMGUI_DROPDOWN_STATUSBAR_DESIGN_2		= "Modern Style"; 
DBMGUI_DROPDOWN_STATUSBAR_EXAMPLE_BAR		= "Example Bar";

DBMGUI_TITLE_AUTORESPOND			= "Auto Respond Settings";
DBMGUI_CHECKBOX_AUTORESPOND_ENABLE		= "Auto respond to whispers during boss fights";
DBMGUI_CHECKBOX_AUTORESPOND_SHOW_WHISPERS	= "Show whispers during combat";
DBMGUI_CHECKBOX_AUTORESPOND_INFORM_USER	= "Inform me about auto-responded whispers";
DBMGUI_CHECKBOX_AUTORESPOND_HIDE_REPLY		= "Hide auto responses";

DBMGUI_EDITBOX_AUTORESPOND_TITLE		= "Message to send during boss fights";
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_HEADER	= "The following strings will\nbe automatically replaced:";
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT1	= {"%P", "your name"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT2	= {"%B", "boss name"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT3	= {"%HP", "boss hp"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT4	= {"%ALIVE", "raid members alive"};
DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT5	= {"%RAID", "raid members"};

-- Translations added v1.15
DBMGUI_CHECKBOX_ALLOW_STATUS_COMMAND		= "Allow users to request the fight status (whisper \"status\")";
DBMGUI_CHECKBOX_SHOWCOMBATINFO			= "Show combat information like fight length";

DBMGUI_TITLE_COMBATSYSTEM			= "Combat Detection System";
DBMGUI_BUTTON_STATUSBAR_FLASHONEND		= "Flash bar on timer end";
DBMGUI_BUTTON_STATUSBAR_AUTOCOLORBARS		= "Dynamic bar color";

-- Translations added v1.20
DBMGUI_TITLE_RAIDOPTIONS			= "Raid Options";
DBMGUI_CHECKBOX_HIDEPLAYERNAMESINRAIDS		= "Hide player names when joining a raid group";
DBMGUI_CHECKBOX_ALLOWSYNCFROMOLDCLIENT		= "Accept sync from old clients";

-- Translation added v1.25
DBMGUI_CHECKBOX_ENABLE_RAIDWARNINGFRAME	= "Enable RaidWarning Frame";
DBMGUI_CHECKBOX_ENABLE_SELFWARNINGFRAME	= "Enable SelfWarning Frame";
DBMGUI_TAB_NAXX_TEXT				= "Naxx";
DBMGUI_TAB_AQ40_TEXT				= "AQ40";
DBMGUI_TAB_BWL_TEXT				= "BWL";
DBMGUI_TAB_MC_TEXT				= "MC";
DBMGUI_TAB_20PL_TEXT				= "ZG/AQ20";
DBMGUI_TAB_OTHER_TEXT				= "Other";
DBMGUI_BUTTON_LOADADDON			= "Load AddOn";
DBMGUI_FRAME_LOADADDON_DESCRIPTION		= {
	"Please enter the zone to load the AddOns",
	"automatically. If you want to load the AddOns",
	"manually, click on \"Load AddOns\".",
	"After this the AddOns are loaded and working,",
	"but using memory and CPU. This feature is",
	"only a performance tweak because we don't",
	"want to load AddOns for instances we never do.",
};



-- added @ 1.12.06
DBMGUI_CHECKBOX_SHOWPULLSYNCINFO	= "Show pull sync info";

DBMGUI_TITLE_LOAD_ON_DEMAND		= "Load on Demand Options";
DBMGUI_CHECKBOX_LOAD_GUI_ONLOAD	= "Load GUI on login";	

-- added @ 13.12.06
DBMGUI_BUTTON_STATUSBAR_SHOW_ICON	= "Enable status bar icons";
DBMGUI_BUTTON_STATUSBAR_ICON_SIDE	= "Show icon on the right side";
