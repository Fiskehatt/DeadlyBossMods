-- -------------------------------------------- --
-- La Vendetta Boss Mods - english localization --
--          by DeadlyMinds|Tandanu              --
-- -------------------------------------------- --

--classes
DBM_MAGE		= "Mage";
DBM_PRIEST		= "Priest";
DBM_PALADIN		= "Paladin";
DBM_DRUID		= "Druid";
DBM_WARLOCK		= "Warlock";
DBM_ROGUE		= "Rogue";
DBM_HUNTER		= "Hunter";
DBM_WARRIOR		= "Warrior";
DBM_SHAMAN		= "Shaman";

--zones
DBM_NAXX			= "Naxxramas";
DBM_AQ40			= "Ahn'Qiraj";
DBM_BWL			= "Blackwing Lair";
DBM_MC				= "Molten Core";
DBM_AQ20			= "Ruins of Ahn'Qiraj";
DBM_ZG 			= "Zul'Gurub";
DBM_ONYXIAS_LAIR	= "Onyxia's Lair";
DBM_DUSKWOOD		= "Duskwood";
DBM_ASHENVALE		= "Ashenvale";
DBM_FERALAS		= "Feralas";
DBM_HINTERLANDS	= "The Hinterlands";
DBM_BLASTED_LANDS	= "Blasted Lands";
DBM_AZSHARA		= "Azshara";
DBM_ARATHI			= "Arathi Basin";
DBM_WARSONG		= "Warsong Gulch";
DBM_ALTERAC		= "Alterac Valley";
DBM_OTHER			= "Other";


--Gui Tabs
DBMGUI_TAB_NAXX				= "Naxxramas";		-- DO NOT TRANSLATE!!!
DBMGUI_TAB_AQ40				= "Ahn'Qiraj";		-- DO NOT TRANSLATE!!!
DBMGUI_TAB_BWL					= "BlackWingLair";	-- DO NOT TRANSLATE!!!
DBMGUI_TAB_MC					= "Molten Core";	-- DO NOT TRANSLATE!!!
DBMGUI_TAB_20PL				= "20 Player";		-- DO NOT TRANSLATE!!!
DBMGUI_TAB_OTHER				= "Other";			-- DO NOT TRANSLATE!!!
DBM_NO_GUI_TAB					= "No GUI"; 		-- DO NOT TRANSLATE!!!


--spells/buffs
DBM_CHARGE			= "Charge";
DBM_FERALCHARGE		= "Feral Charge";
DBM_BLOODRAGE			= "Bloodrage";
DBM_REDEMPTION 		= "Spirit of Redemption";
DBM_FEIGNDEATH			= "Feign Death";
DBM_MINDCONTROL		= "Mind Control";

--create status bar timer localization table
DBM_SBT = {};

--key bindings
BINDING_HEADER_DBM 		= "La Vendetta Boss Mods";
BINDING_NAME_DBMTOGGLE 		= "Toggle GUI";

--OnLoad messages
DBM_LOADED			= "La Vendetta Boss Mods v%s by DeadlyMinds|Tandanu @ EU-Aegwynn and La Vendetta|Nitram @ EU-Azshara loaded.";
DBM_MODS_LOADED		= "%s %s boss mods loaded."

--Slash command messages
DBM_MOD_ENABLED		= "Boss mod enabled.";
DBM_MOD_DISABLED		= "Boss mod disabled.";
DBM_ANNOUNCE_ENABLED		= "Announce enabled.";
DBM_ANNOUNCE_DISABLED		= "Announce disabled.";
DBM_MOD_STOPPED		= "Timers stopped.";
DBM_MOD_INFO			= "Boss mod v%s by %s";
DBM_SLASH_HELP1		= " on/off";
DBM_SLASH_HELP2		= " announce on/off";
DBM_SLASH_HELP3		= " stop";
DBM_SLASH_HELP4		= "You can use %s instead of /%s.";
DBM_RANGE_CHECK		= "More than 30 yards away: ";
DBM_FOUND_CLIENTS		= "Found %s players with Vendetta Boss Mods";

--Sync options
DBM_SOMEONE_SET_SYNC_CHANNEL	= "%s set the sync channel to: %s";
DBM_SET_SYNC_CHANNEL		= "Sync channel set to: %s";
DBM_CHANNEL_NOT_SET		= "Channel not set. Cannot broadcast.";
DBM_NEED_LEADER		= "You need to be promoted or leader to broadcast the channel!";
DBM_NEED_LEADER_STOP_ALL	= "You need to be promoted or leader to use this function!";
DBM_ALL_STOPPED		= "Stopped all timers.";
DBM_REC_STOP_ALL		= "Received stop all command from %s.";

--Update dialog
DBM_UPDATE_DIALOG		= "Your version of La Vendetta Boss Mods is out of date!\n%s and %s got version %s.\nPlease visit www.curse-gaming.com to get the latest version.";
DBM_YOUR_VERSION_SUCKS	= "Your version of La Vendetta Boss Mods is out of date! Please visit www.curse-gaming.com to get the latest version.";
DBM_REQ_PATCHNOTES		= "Requesting patch notes from %s...please wait.";
DBM_SHOW_PATCHNOTES		= "Show patch notes";
DBM_PATCHNOTES			= "Patch Notes";
DBM_COPY_PASTE_URL		= "Copy & paste URL";
DBM_COPY_PASTE_NOW		= "Press ctrl-c to copy the URL to the clipboard";

--Status Bar Timers
DBM_SBT_TIMELEFT				= "Time left:";
DBM_SBT_TIMEELAPSED			= "Time elapsed:";
DBM_SBT_TOTALTIME				= "Total time:";
DBM_SBT_REPETITIONS			= "Repetitions:";
DBM_SBT_INFINITE				= "infinite";
DBM_SBT_BOSSMOD				= "Boss mod:";
DBM_SBT_STARTEDBY				= "Started by:";
DBM_SBT_RIGHTCLICK				= "Right-click on the bar to hide it.";
DBM_SBT_LEFTCLICK				= "Shift + left-click on the bar to announce it";
DBM_TIMER_IS_ABOUT_TO_EXPIRE	= "Timer \"%s\" is about to expire!";
DBM_BAR_STYLE_DEFAULT			= "Default";
DBM_BAR_STYLE_MODERN			= "Modern";
DBM_BAR_STYLE_CLOUDS			= "Clouds";
DBM_BAR_STYLE_PERL				= "Perl";


--Combat messages
DBM_BOSS_ENGAGED			= "%s engaged. Good luck and have fun! :)";
DBM_BOSS_SYNCED_BY			= "(received sync command from %s)";
DBM_BOSS_DOWN				= "%s down after %s!";
DBM_COMBAT_ENDED			= "Combat ended after %s.";
DBM_DEFAULT_BUSY_MSG			= "%P is busy. (Fighting against %B - %HP - %ALIVE/%RAID people alive) You will be informed after the fight.";
DBM_RAID_STATUS_WHISPER		= "%B - %HP - %ALIVE/%RAID people alive.";
DBM_SEND_STATUS_INFO			= "Whisper \"status\" to query the raid's status.";
DBM_AUTO_RESPOND_SHORT			= "Auto-responded.";
DBM_AUTO_RESPOND_LONG			= "Auto-responded to a whisper from %s";
DBM_MISSED_WHISPERS			= "Missed whispers during combat:";
DBM_SHOW_MISSED_WHISPER		= "|Hplayer:%1\$s|h[%1\$s]|h: %2\$s";
DBM_BALCONY_PHASE			= "Balcony phase #%s";

--Misc stuff
DBM_YOU					= "You";
DBM_ARE					= "are";
DBM_IS						= "is";
DBM_OR						= "or";
DBM_AND					= "and";
DBM_UNKNOWN			 		= "unknown";
DBM_LOCAL					= "local";
DBM_DEFAULT_DESCRIPTION			= "Description not available.";
DBM_SEC					= "sec";
DBM_MIN					= "min";
DBM_SECOND					= "second";
DBM_SECONDS					= "seconds";
DBM_MINUTES					= "minutes";
DBM_MINUTE					= "minute";
DBM_HIT					= "hit";
DBM_HITS					= "hits";
DBM_CRIT					= "crit";
DBM_CRITS					= "crits";
DBM_MISS					= "miss";
DBM_DODGE					= "dodge";
DBM_PARRY					= "parry";
DBM_FROST					= "Frost";
DBM_ARCANE					= "Arcane";
DBM_FIRE					= "Fire";
DBM_HOLY					= "Holy";
DBM_NATURE					= "Nature";
DBM_SHADOW					= "Shadow";
DBM_CLOSE					= "Close";
DBM_AGGRO_FROM					= "Aggro from ";
DBM_SET_ICON					= "Set icon";
DBM_SEND_WHISPER				= "Send whisper";
DBM_DEAD					= "Dead";
DBM_OFFLINE					= "Offline";
DBM_PHASE					= "Phase %s";
DBM_WAVE					= "Wave %s";


-- Added 11.11.06
DBM_NOGUI_ERROR				= "Sorry, please activate the DBM GUI to access this function";
DBM_NOSYNCBARS					= "Currently there are no bars";




-- Added 1.12.06

DBM_LEFT	= "left";
DBM_RIGHT	= "right";

DBM_GUI_COMBATLOG_RANGE_TITLE      = "Combat log range";
DBM_GUI_COMBATLOG_MIN_RANGE        = "Combat log set to minimum range";
DBM_GUI_COMBATLOG_MAX_RANGE        = "Combat log set to maximum range";
DBM_GUI_COMBATLOG_LONG_RANGE       = "Combat log set to long range";
DBM_GUI_COMBATLOG_DEFAULT_RANGE    = "Combat log set to default range";

DBMGUI_DISTANCE_FRAME_TITLE		= "Distance";
DBMGUI_DISTANCE_FRAME_TEXT		= "Too near:";

DBMGUI_INFOFRAME_TOOLTIP_TITLE		= "Info Frame";
DBMGUI_INFOFRAME_TOOLTIP_TEXT		= "Right-click to move\nShift + right-click to hide";

DBMGUI_STATUSBAR_WIDTH_SLIDER		= "Bar width";
DBMGUI_STATUSBAR_SCALE_SLIDER		= "Bar scale";

DBMGUI_BUTTON_RANGECHECK		= "Range check";
DBMGUI_TOOLTIP_RANGECHECK_TITLE	= "Range check";
DBMGUI_TOOLTIP_RANGECHECK_TEXT		= "Starts a range check which shows you all players who stand more than 30 yards away from you.";

DBMGUI_BUTTON_DISTANCEFRAME		= "Distance frame";
DBMGUI_TOOLTIP_DISTANCEFRAME_TITLE	= "Distance frame";
DBMGUI_TOOLTIP_DISTANCEFRAME_TEXT	= "Shows or hides a distance check frame. It shows all players who stand too close to you (10 yards). This frame is useful for encounters like C'Thun or Huhuran.";


-- Added 2.12.06

DBM_NAME			= "Name";
DBM_DURABILITY		= "Durability";

DBM_LOAD_GUI_ERROR_FORMAT	= "Error while loading GUI: %s";
DBM_LOAD_GUI_ERROR_UNKNOWN	= "Unknown error while loading GUI.";

-- Added 9.12.06

DBM_ERROR_INVALID_MODID	= "ERROR: The mod's ID must be a string!";
DBM_ERROR_MODID_EXISTS		= "ERROR: A mod with ID '%s' already exists!";

-- Added 11.12.06
DBM_COMBAT_TABLE_WARNING	= "WARNING: A boss mod with this ID is already registered, updating information..."

-- Added 13.12.06
DBM_TIMER_SLASHCMD_HELP1	= "/lv timer <time> <text>  -  starts a timer";
DBM_TIMER_SLASHCMD_HELP2	= "/lv broadcast timer <time> <text>  -  broadcasts a timer";

-- Added 20.12.06
DBM_HORDE		= "Horde";
DBM_ALLIANCE	= "Alliance";

-- Added 22.12.06
DBM_ENABLED_GREEN	= GREEN_FONT_COLOR_CODE.."enabled"..FONT_COLOR_CODE_CLOSE;
DBM_DISABLED_RED	= RED_FONT_COLOR_CODE.."disabled"..FONT_COLOR_CODE_CLOSE;
DBM_ERROR			= "Error";


-- 2.1.07
DBM_UPGRADE	= "upgrade";
DBM_BAR_STYLE_GLAZE = "Glaze";
