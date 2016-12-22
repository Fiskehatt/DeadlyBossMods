


DRT_SLASHHELP			= {
	"Welcome to Deadly Raid Tools /drt",
	"list of slash commands:",
	" ",
	"/drt logout <name> - this logs a player out of the game after 20 sec",
	"/drt pull <x> - Announces a pull in X sec (alias: /pull <x>)",
	"/drt enable <addon> <player> - Enables an AddOn for the specific player (player can be 'all')",
	"/drt disable <addon> <player> - Disables an AddOn for the specific player (player can be 'all')",
	"/drt announce <addon> <player> <on|off> - Disables/enables announce for an AddOn for the specific player (player can be 'all')",
	"/drt bosslist - shows a list of correct AddOn names",
	"/drt emote <emote> [target] - Forces a raid member to do an emote on 'target' (optional)",
	"/drt invite <level 1-60> - Starts a guild mass invite",
	"/drt remote <option> <on|off> - Enables/Disables remote commands",
	"/drt ver - Checks for other versions of Deadly Raid Tools",
	"/drt dura - Shows the durability check frame (alias: /drt dur)",
	"/drt spamblock - Shows spamblock options",
	" ",
	"Thanks for using Deadly Raid Tools",
};

DRT_SPAMBLOCK_SLASHHELP	= {
	"/drt spamblock Raid on||off (%s)",
	"/drt spamblock RaidWarning on||off (%s)",
	"/drt spamblock RaidWarningFrame on||off (%s)",
	"/drt spamblock CTRaid on||off (%s)",
	"/drt spamblock Battleground on||off (%s)",
};

DRT_CHAT_PREFIX		= "<Deadly RaidTools> ";
DRT_SENDLOGOUT			= "Sending logout command to: %s";
DRT_SENDLOGOUT_RAID_NOTICE	= DRT_CHAT_PREFIX.."received logout command from %s - logging out...";
DRT_SENDLOGOUT_NEED_NAME	= "Incorrect name or unknown problem, can't send logout command";

DRT_PULLCOMMAND_ANNOUNCE	= "*** Incoming Pull ***";
DRT_PULLCOMMAND_SELFWARN	= "PULL NOW";
DRT_PULLCOMMAND_PREWARN	= "*** Pull in %d sec ***";
DRT_PULLCOMMAND_FAILED		= "Please use /pull 10 or /drt pull 10";

DRT_VERSION_WHISPER		= "Deadly RaidTools v%s";
DRT_VERSION_MESSAGE		= "Checking for other Deadly RaidTools versions";

DRT_COMMAND_FAILD		= "Please check the '/drt help' command, your command is unknown";

DRT_ENABLEADDON_MESSAGE	= "Sending 'Enable' AddOn command to '%s'";
DRT_DISANABLEADDON_MESSAGE	= "Sending 'Disable' AddOn command to '%s'";

DRT_ANNOUNCEON_MESSAGE		= "Sending 'Announce ON' AddOn command to '%s'";
DRT_ANNOUNCEOFF_MESSAGE	= "Sending 'Announce OFF' AddOn command to '%s'";

DRT_REMOTE_ON			= "Remote commands for '%s' enabled";
DRT_REMOTE_OFF			= "Remote commands for '%s' disabled";
DRT_REMOTE_INFO		= "Available option: %s";
DRT_REMOTE_INFO_ON		= "%s: "..GREEN_FONT_COLOR_CODE.."Enabled"..FONT_COLOR_CODE_CLOSE;
DRT_REMOTE_INFO_OFF	= "%s: "..RED_FONT_COLOR_CODE.."Disabled"..FONT_COLOR_CODE_CLOSE;

DRT_EMOTE_MESSAGE		= "Sending raid emote '%s'";
DRT_EMOTE_RECIVE		= "Received emote command from '%s'";

DRT_DURABILITY_MESSAGE		= "Sending durability response for CT_RaidAssist";
DRT_TOOLTIP_DURABILITY		= "^Durability (%d+) / (%d+)$";

DRT_INVITE_SYNTAX		= "Syntax: /drt invite <level 1-60>";
DRT_INVITE_NOGUILD		= "Sorry, you have to be in a guild to start a guild invite";
DRT_INVITE_NOPERMISSION	= "Sorry, you need to be promoted or leader to use this function.";
DRT_INVITE_GUILD_MESSAGE	= "<DRT> Raid invite in 10 sec! Please leave your groups!";


-- Added 2.12.06
DRT_BROKEN_ITEMS	= "(%s broken items)";

-- Added 23.12.06
DRT_SPAMBLOCK_OPTION_SET	= "Set spamblock option \"%s\" to \"%s\"";