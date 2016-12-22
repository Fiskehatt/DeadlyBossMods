-- -------------------------------------------------------------------------------------------------- --
-- Deadly Boss Mods - AddOn by DeadlyMinds|Tandanu @ EU-Aegwynn and DeadlyMinds|Nitram @ EU-Azshara   --
--                                      http://www.deadlyminds.net                                    --
-- -------------------------------------------------------------------------------------------------- --
-- ------- --
-- Changes --
-- ------- --
--
--  v2.30
--  please delete all LVBM folders before installing this version
--  LVBM will be renamed to DBM (Deadly Boss Mods)
--  fixed SendHiddenWhisper(), whispers containing a "%" will now be hidden
--
--  redesigned the flag carrier frame
--  the AV auto turn-in function will now select "upgrade troops" automatically
--  the Battleground and Outdoor boss mods are now load on demand
--
--  added icons for battleground mod
--  added a new estimated points frame for Arathi Basin
--  added Gluth enrage timer
--  added some Kel'thuzad cooldowns (cooldowns! they are _not_ exact)
--
--  v2.21
--  fixed "stack overflow" bug
--  fixed a possible bug in the ChatFrame_AddMessage function
--  fixed bad variable name for key bindings
--  fixed some minor bugs in the battleground addon

--  v2.20
--  fixed some patch 2.0 issues
--  fixed some ZG combat detections
--  fixed a bug that could produce an error message while looting
--  fixed possible bug in the function that executes scheduled functions
--  fixed a possible Heigan sync issue
--  fixed some sync issues in Battlegrounds
--  fixed some minor bugs in the combat detection code
--  fixed some bugs in some boss mods
--  fixed a bug that could cause strange errors
--  fixed the Nefarian kill counter
--  
--  removed Alliance:/Horde: prefix from BG bars, because its useless since the bars are red/blue
--  updated C'Thun mod (thanks to Tsew@EU-Kirin-Tor)
--  removed C'Thun Dark Glare target announce because it's very unreliable since patch 2.0
--  updated Sapphiron mod :)
--  updated some localizations (thanks to Navarra, Sadie, Miawen)
--
--  added a Twin Emp teleport timer that works without events! (the teleport event has been removed in patch 2.0)
--  added timers with icons
--  added some new functions to the API and moved the documentation to http://www.wowwiki.com/La_Vendetta_Boss_Mods
--  added slash commands to start timers: /lv timer <time> <name> and /lv broadcast timer <time> <name>
--  added Hakkar Mind Control announce & timer
--  added "Game starts in..." timer for Arenas
--  added a spam block feature, use /lvrt spamblock for more information
--
--
--  v2.11
--  fixed some patch 2.0 issues
--  fixed Loatheb and Thaddius
--  fixed some combat detection stuff
--  removed Warsong Gulch target function
--
--
--  v2.10
--  updated for patch 2.0
--  updated .toc file
--  the GUI is now load on demand
--  added a 100% CTRA compatible durability check frame (/lvrt dur or /lvrt dura)
--
--  the Thaddius boss mod now supports the inverted rotate strategy (see boss mod description or slash command)
--  updated some old code and removed code that is no longer used
--  the pull sync info is now hidden by default and can be enabled in the option frame
--
--  fixed some missing strings (thx 2 Thurraz)
--  fixed some bugs in the LVRT slash command code
--  LVRT will no longer respond to CTRA durability requests if oRA2 is loaded
--  the Kel'Thuzad boss mod will now respond to status requests during phase 1
--
--
--  v2.00
--
-- *** delete your old La_Vendetta_Boss_Mods and restart WoW after installing v2.00 ***
-- all boss mods are now load on demand addons
-- updated Four Horsemen boss mod
-- updated Sapphiron mod
-- updated Hakkar boss mod (pull detection)
-- updated Nefarian boss mod (kill counter)
-- updated zhTW translations (thanks to CuteMiyu, hmj1026)
-- updated zhCN translations (thanks to DiabloHu)
-- updated frFR translations (thanks to cr0k and Proreborn)
-- updated deDE translations
-- added more options to some boss mods
--
-- fixed Battleground statusbar color bug
-- fixed Gui bug with disabled sync
-- fixed Patchwork boss mod error message
-- fixed API bug on filtering outdated client syncs
-- fixed debugstack bug
-- fixed some localization bugs
-- fixed many minor bugs
-- fixed range check frame toggle function bug
-- fixed a positioning bug in the InfoFrame code
-- 
-- added LV_RaidTools v0.3
-- added LVRT slash command "/lvrt" with help messages
-- added LVRT slash command "/lvrt ver" 
-- added LVRT slash command "/lvrt emote <emote> [target]"
-- added LVRT slash command "/lvrt enable <AddOn> <Player>"
-- added LVRT slash command "/lvrt disable <AddOn> <Player>"
-- added LVRT slash command "/lvrt announce <AddOn> <Player> <on|off>"
-- added LVRT slash command "/lvrt bosslist"
-- added LVRT slash command "/lvrt remote <option> <on|off>"
-- added LVRT slash command "/lvrt logout <name>" (needs promoted or leader)
-- added LVRT slash command "/lvrt pull <x>"
-- added LVRT slash command "/lvrt ui" to reload you UI
-- moved slash command "/pull <x>" to LVRT
-- added new boss translation system for statusbars with dynamic content (DBM_SBT[addon][x]={"search, "replace"})
-- added GUI option to change the combat log range
-- added Thaddius lag fix by reducing the combat log range during phase 2
-- added Four Horsemen InfoFrame to see the current boss hitpoints
-- added new sync filter system for bars (filters out wrong/old AB and 4H Bars)
--
-- removed some old debug code
-- separated API, GUI, BossMods and RaidTools for performance tweaks
-- optimized loading times
-- optimized memory usage
--
--
--  v1.92
--
-- optimized BossTemplate API with field "MinVersionToSync" to prevent old Version Syncs
--
-- fixed some bar problems
-- fixed Four Horsemen AddOn (Mark problem with Bars)
-- fixed Grand Widow Faerlina out of Range Problem (now sync Enrage)
-- fixed some missing Localization Strings
-- fixed GUI first time scroll bug
-- 
-- updated Grand Widow Faerlina for deDE Client (enrage Detection timers)
-- updated Four Horsemen AddOn Meteor Code
-- updated AQ20 Anubisath Mod
-- updated Localizations
-- 
-- added Gui Option to disable Sync with old Clients
-- added Gui Option to Hide Playernames in Raidgroups
-- added API Option in BossTemplate to handle old Version Syncs
-- added Slashcommand \"/lv ver2\" which informs users with outdated versions
-- added Slashcommand \"/pull <x>\" (x = sec)
--
--
--  v1.91
--
-- creating new bars no longer sets the status bars color to default
-- fixed some minor bugs in the combat detection system
-- fixed a bug in the Loatheb healer rotation sync system with /loatheb undelete
-- fixed Sapphiron emote, Blizzard forgot %s in their emote string
-- fixed Kel'Thuzad combat detection bug
-- 
-- optimized status bar code -> reduced bar memory usage by ~30%, fixed memory leak bug in PullBarsTogether function
-- optimized Loatheb sync code -> reduced channel spam
-- players without (A) or (L) can now set a healer rotation for Loatheb, but their settings can't be broadcasted
-- you can now disable the "status" whisper command
-- changed default bar design
-- improved Sapphiron mod
-- improved Kel'Thuzad mod
-- updated BG mod, it now uses colored bars
-- updated chinese localization (thanks 2 DiabloHu)
--
-- added support for Lua 5.1 (Burning Crusade)
-- status bars will now flash when they are about to expire
-- status bars will now change their color over time
-- added french translation (only GUI and Blackwing Lair, more coming soon) (thanks 2 Proreborn)
--
--
--  v1.90
-- 
-- fixed Buru %s bug
-- fixed Huhuran %s Frenzy bug
-- fuxed Moam stone form detection
-- fixed Ossirian curse
-- fixed battleground 5vs0 timer
-- fixed InfoFrame UI scale positioning bug
-- fixed InfoFrame:Delete(), it now removes script handlers
-- fixed some minor InfoFrame bugs
-- fixed compatibility issues with chat addons, whispers will now be properly hidden
-- the Yauj fear timer can no longer be started by other mobs in AQ40
-- fixed some sync issues
--
-- InfoFrames now save their positions by their title
-- Pizzatimers will now show a warning 10 seconds before they expire
-- slightly adjusted Anub'Rekhan timers, changed messages for first Locust Swarm
-- adjusted Gluth's Decimate timer
-- changed Razuvious timers to use repeating status bars, this will fix issues after a wipe
--
-- Warsong Gulch InfoFrame added
-- added Four Horseman support
-- added Thaddius phase 1 support (Kick and Power Surge)
-- added Azuregos support (beta)
-- added Sapphiron support (beta)
-- added Kel'Thuzad support (beta)
-- added Geddon Inferno warning
-- added Loatheb Spore spawn timers
-- added bug explode warning to the Twin Emperor mod
-- added stats for Patchwerk fights (Hateful Strikes: x Hits: y Misses: z Dodges: blah...etc)
-- added option to remove healers from the Loatheb heal rotation frame by setting their sort ID to 0, use /loa undelete to undelete them
-- added OnStop handlers for boss mods, they will be called if the boss mod is stopped by a "stop all" sync command or by the "stop AddOn" button/slash command
-- added function DBM.SendHiddenWhisper(msg, target) do send hidden whisper messages
-- added option to announce timers to your raid group by shift + left-clicking on the status bar
-- added combat detection system, this allows many combat related features, like the auto respond function. You will also see how long you were in combat in the chat frame :)
-- added "auto respond to whisper" function while fighting bosses (only enabled for whispers from players who are not in your raid group)
-- added OnCombatStart and OnCombatEnd handlers to all boss mods. Since they will be synced, they will allow more accurate and dependable timers for the first use of some abilities
-- added function DBM.StartColoredStatusBarTimer() to create colored status bars, this color will overwrite the color set be the user, see API documentation for details
-- added more designs for status bars, see options menu and screenshots :)
--
--
--
--  v1.80
--  *** you need to restart your game after installing Vendetta Boss Mods 1.80 ***
--  fixed DBM.Rank bug
--  fixed ZG/AQ20 bugs
--  fixed Onyxia
--  fixed Thaddius phase 2
--  fixed Gothik timer repetitions
--  fixed some minor bugs
--
--  updated Patchwerk boss mod
--  updated Thaddius boss mod
--  updated Noth boss mod
--  updated Anub boss mod
--  updated Faerlina boss mod
--  updated battleground mod
--  changed battleground timer sync channel from "RAID" to "BATTLEGROUND"
--  adjusted frenzy timers
--
--  added "C'Thun pulled" and C'Thun phase 2 sync commands, this will fix "timer adjustment failed" and missing special warnings for dark glare
--  added a range check frame to the C'Thun boss mod
--  added cool Loatheb boss mod (see screenshot!)
--  added Kri/Yauj/Vem mod
--  added Lethon/Taerar/Ysondre/Emeriss boss mod
--  added option to resize the status bars
--  added option to resize the special warnings
--  added german localization
--  added chinese localization (simplified chinese by Killerking, traditional chinese by hmj1026)
--  added function DBM.UpdateStatusBarTimer(name[, elapsed, timer, newName, noBroadcast])
--  added functions to create frames, see "Information for AddOn Developers"
--
--
--  v1.71
--  fixed Ahn'Qiraj 20 mods
--  fixed Zul'Gurub mods
--  fixed 1.12 emote strings
--  fixed C'Thun phase 2 detection
--  
--  added option to copy and paste the URL when a newer version is available
--  added option to unequip bows and guns before Nefarian's class call
--  added auto turn-in function for Alterac Valley
--  added option to hide the local and/or raid warning frame
--  changed shake default setting to disabled
--
--
--  v1.70
--  *** german localization for options and mc, zg and aq20 is missing...coming soon! ***
--  fixed Viscidus mod
--  fixed hunter feign death bug, PLAYER_REGEN_DISABLED will now be ignored if player is a hunter and has feigned death in the last 20 seconds
--  fixed CastSpellByName() bug
--  fixed many minor bugs
--
--  changed "special warning" default color to blue
--  adjusted Nefarian phase 2 timer
--  adjusted Anub'Rekhan timers
--  reduced sync channel spam
--  optimized code
--  redesigned options frame
--
--  added support for SendAddonMessage/CHAT_MSG_ADDON, removed sync channel!
--  added Molten Core boss mods
--  added AQ20 boss mods (beta!)
--  added Zul'Gurub boss mods (beta!)
--  added Fankriss boss mod
--  added Options to customize the local warning frame
--  added variable DBM.Rank which always contains your current rank (0 = nothing, 1 = promoted, 2 = leader). This variable is updated on RAID_ROSTER_UPDATE
--  added aggro alert
--  added a range check...use /range to see who is more than 30 yards away
--  added frenzy timers
--  added special warning for Faerlina's enrage if the player is currently mind controlling one the Worshippers
--  added function DBM_Gui_AddTab(instance, text) to add a new tab, removed old hardcoded tabs
--  added support for battlegrounds (by LeoLeal - thank you!)
--  added option to block healing spells while Nefarian's priest call is active
--
--
--  v1.60
--  fixed Huhuran mod
--  fixed C'Thun whisper spam, whispers will only be sent if announce is enabled
--  fixed Ouros emerge timer when standing too far away from the Dirt Mounds
--  fixed Chromaggus Fenzy bug xD
--  fixed a bug that stopped status bars while the UI was hidden or the map was shown
--  fixed math.round function
--
--  changed Gothik mod to use the new repeating timers, this will fix bars that restarted in the first 0.5 seconds
--  changed Grobbulus addon to use other raid target icons if the skull set on another player with Mutating Injection
--  changed status bar tooltip to display the name of the boss mod instead of the internal used abbreviation
--  /lv stop will no longer kill "Pizza Timers" :)
--
--  added options to change the raid warning frame's position, font size and font color
--  added "special warnings"
--  added screen shake effect (default setting: enabled, you can disable it in the options tab)
--  added flash effect
--  added DBM.AddSpecialWarning() to add a special warning, see "Information for AddOn developers" for details
--  added DBM.StartRepeatingStatusBarTimer(timer, name[, repetitions, noBroadcast]) to start repeating bars, see "Information for AddOn developers" for details
--  added DBM.EndRepeatingStatusBarTimer(name[, noBroadcast]) to end a repeating bar, see "Information for AddOn developers" for details.
--  added more options to some boss mods
--  added Thaddius boss mod
--
--
--  v1.50
--  fixed charge bug
--  fixed bloodrage bug
--  fixed spirit of redemption bug
--  fixed auto attack bug. If you still experience this bug, please try to disable other boss mods that use automatic combat start detection. I tested my new combat detection code for hours and this bug is definitely fixed.
--  fixed Sarturas Whirlwind timers
--  fixed Twin Emps enrage timer when player died in combat
--  fixed status bars with long names
--
--  re-enabled PLAYER_REGEN_DISABLED for Rogues and Warriors.
--  rewrote combat detection code
--  added functions DBM.UnitExists and DBM.DetectCombat, see "Information for AddOn developers" below
--  changed synchronization commands...so this version will not be able to sync with older clients!
--  status bars that belong to disabled boss mods are now longer shown, even if the bar is synced by another player
--
--  added DBM.GetBuff() and DBM.GetDebuff(), see "Information for AddOn developers" below
--  added german translation for GUI and most boss mods
--  added subtabs in the options tab
--  added a dialog (see options tab) to start your own timers
--  added a option to change the raid warning sound
--  added tooltips to the status bars
--  added Heigan the Unclean mod
--  added Gothik the Harvester mod
--  added Huhuran mod
--  added Anubisath Defender mod
--  added /lv stop, this stops all timers, status bars, scheduled tasks. You need to be the raid leader or promoted to use this command.
--  added option to download the patch notes from another player who got a newer version than you






-- ----------------- --
-- API Documentation --
-- ----------------- --
--

-- -------------- --
-- Buff Functions --
-- -------------- --
--  buffIndex = DBM.GetBuff("unitID", "buff");
--  Returns the buff index of a buff on a unit. If the unit does not exist or doesn't have the buff this function will return nil.
--
--  buffIndex = DBM.GetDebuff("unitID", "debuff");
--  Same as DBM.GetBuff...just for debuffs

-- -------------- --
-- Icon Functions --
-- -------------- --
--  DBM.SetIconByName(name, icon);
--  Sets a raid target icon an a player in your raid group
--
--  DBM.ClearIconByName(name);
--  Removes a raid target icon an a player in your raid group


-- ------------- --
-- GUI functions --
-- ------------- --
--	myInfoFrame = DBMGui:CreateInfoFrame(title, text);
--	myInfoFrame:SetTitle(title);
--	myInfoFrame:SetText(text);
--
--  myInfoFrameStatusBar = myInfoFrame:CreateStatusBar(min, max, value, title, leftText, rightText);
--  myInfoFrameStatusBar:SetValue(value);
--  myInfoFrameStatusBar:SetTitle(title);
--
--  myInfoFrameTextField = myInfoFrame:CreateTextField(text);
--  myInfoFrameTextField:SetText(text);
--
--	these methods are also available for status bars and text fields
--	myInfoFrame:Show();
--	myInfoFrame:Hide();
--  myInfoFrame:GetObject(); - returns the frame object
--  myInfoFrame:Delete(); - you can not delete frames, but this function hides the frame and moves it to a "trash can"...the frame will be re-used next time you create a frame of this type


--compatibility stuff --> will be removed in the next version --REMOVE ME
if not math.mod and math.fmod then
	math.mod = math.fmod;
end

if not string.gmatch and string.gfind then
	string.gmatch = string.gfind;
end

DBM_SavedVars = {
	["AddOns"] = {
	},
	["DBM"] = {
	},
}

DBM = {}

DBM.Version = "2.30";
DBMGUI_VERSION = "1.29";

DBM.Bosses = {
}

DBM.ScheduleData = {
}

DBM.TimerData = {
}

DBM.StatusBarData = {
}

DBM.Hooks = {
}

DBM.SpamProtection = {
}

DBM.HideDNDAFKMessages = {
};

DBM.HideLoadInfo = false;

DBM.InRaid = false;

DBM.SyncInfo = {
	["Clients"] = {},
};

DBM.LongMsg = "";

DBM.AddOns = {	
};

DBM.MsgQueue = {
};

DBM.AggroUpdate = 0;

DBM.MsgQueueElapsed = 0;

DBM.SortedAddOns = { --table.sort sucks...
};

DBM.HiddenWhisperMessages = {
};

DBM.CombatUpdate = 0;

DBM.Rank = 0;

DBM.CombatStartTime = GetTime();

DBM.HideWhispers = false;

DBM.StatusBarCount = 0;

DBM.LastWarningTime = GetTime();

DBM.Raid = {
};

DBM.WhispersDuringCombat = {
};

DBM.WhisperSpamProtection = {
};

DBM.StatusSpamProtection = {
};

DBM.NoWhisperSound = {
	timer = false,
	frame = nil,
};

DBM.FilteredBars = {
    "Mark #%d+",
	"^Mark$",
    "First Mark",
    "ABWINALLY",
    "ABWINHORDE",
	"Cloud Poison",
	"Possible next Detonate",
	"^Frost Breath$",
};

DBM.LastCharge = GetTime();
DBM.LastBloodrage = GetTime();
DBM.LastFeignDeath = GetTime();
DBM.AutoAttack = false;

DBMInfoFramePositions = {};

DBM.Options = {
	["StatusBarColor"] = {
		["r"] = 1.0,
		["g"] = 0.7,
		["b"] = 0.0,
		["a"] = 0.8,
	},
	["StatusBarDesign"] = 2,
	["MaxStatusBars"] = 10,
	["StatusBarsFlippedOver"] = false,
	["FillUpStatusBars"] = true,
	["EnableStatusBars"] = true,
	["EnableSync"] = true,
	["AllowSyncFromOldVersions"] = true,
	["MinimapButton"] = {
		["Position"] = 225,
		["Radius"] = 78.1,
		["Enabled"] = true,
	},
	["SpecialWarningsEnabled"] = true,
	["ShakeIntensity"] = 30,
	["ShakeDuration"] = 0.5,
	["SpecialWarningTextDuration"] = 5,
	["SpecialWarningTextFadeTime"] = 3,
	["SpecialWarningTextSize"]	= 40,
	["FlashDuration"] = 2,
	["NumFlashes"] = 1,
	["ShakeEnabled"] = false,
	["FlashEnabled"] = true,
	["FlashColor"] = "red",
	["SpecialWarningTextColor"] = {
		["r"] = 0.0,
		["g"] = 0.0,
		["b"] = 1.0,
		["a"] = 1.0,
	},
	["StatusBarSize"] = {
		["Scale"] = 1,
		["Width"] = 205,
	},
	["FlashBars"] = true,
	["BusyMessage"] = DBM_DEFAULT_BUSY_MSG.." "..DBM_SEND_STATUS_INFO,
	["AutoRespond"] = true,
	["ShowAutoRespondInfo"] = true,
	["ShowWhispersDuringCombat"] = true,
	["HideOutgoingInfoWhisper"] = true,
	["EnableStatusCommand"] = true,
	["ShowCombatInformations"] = true,
	["AutoColorBars"] = true,
	["LoadGUIOnLoad"] = false,
	["ShowPullSyncInfo"] = false,
	["IconRight"] = false,
	["ShowIcon"] = true,
	["Gui"] = {
		["Version"]			= DBMGUI_VERSION,
		["RaidWarnSound"] 		= 1,

		["PizzaTimerText"] 		= "Pizza",
		["PizzaTimerMin"] 		= 15,
		["PizzaTimerSec"] 		= 0,
		["PizzaTimerBroadcast"]		= true,
		
		["RaidWarning_Enable"]		= true,
		["RaidWarning_R"] 		= 1.000000,
		["RaidWarning_G"] 		= 0.858823,
		["RaidWarning_B"] 		= 0.717647,
		["RaidWarning_Delay"]	 	= 1,
		["RaidWarning_Font"] 		= STANDARD_TEXT_FONT,
		["RaidWarning_Height"] 		= 18,
		["RaidWarning_PosX"] 		= 0,
		["RaidWarning_PosY"] 		= -235,

		["SelfWarning_Enable"]		= true,
		["SelfWarning_R"] 		= 1.000000,
		["SelfWarning_G"] 		= 0.858823,
		["SelfWarning_B"] 		= 0.717647,
		["SelfWarning_Delay"] 		= 5,
		["SelfWarning_Font"] 		= STANDARD_TEXT_FONT,
		["SelfWarning_Height"] 		= 16,
		["SelfWarning_PosX"] 		= 0,
		["SelfWarning_PosY"] 		= 235,
		["HidePlayerNamesInRaid"]	= false,
		["CombatLogValue"] 		= 1,
	},
	["SpamBlock"] = {
		["CTRaidFrame"] = true,
		["RaidChat"] = true,
		["RaidWarningChat"] = false,
		["RaidWarningFrame"] = false,
		["Battleground"] = true,
	},
};




DBM.Options.CharSettings = {
};

DBM.Options.CharSettings[UnitName("player")] = {
};

if UnitClass("player") == DBM_WARRIOR then
	DBM.Options.CharSettings[UnitName("player")].AggroAlert = false;
	DBM.Options.CharSettings[UnitName("player")].AggroSound = false;
	DBM.Options.CharSettings[UnitName("player")].AggroFlash = false;
	DBM.Options.CharSettings[UnitName("player")].AggroShake = false;
	DBM.Options.CharSettings[UnitName("player")].AggroSpecialWarning = false;
	DBM.Options.CharSettings[UnitName("player")].AggroLocalWarning = false;
else
	DBM.Options.CharSettings[UnitName("player")].AggroAlert = true;
	DBM.Options.CharSettings[UnitName("player")].AggroSound = false;
	DBM.Options.CharSettings[UnitName("player")].AggroFlash = true;
	DBM.Options.CharSettings[UnitName("player")].AggroShake = true;
	DBM.Options.CharSettings[UnitName("player")].AggroSpecialWarning = true;
	DBM.Options.CharSettings[UnitName("player")].AggroLocalWarning = false;
end

---------------------
--OnEvent Functions--
---------------------
function DBM.OnLoad()
	SLASH_LVNAXXRAMASBOSSMODS1 = "/dm";
	SLASH_LVNAXXRAMASBOSSMODS2 = "/lv";
	SLASH_LVNAXXRAMASBOSSMODS3 = "/bossmods";
	SLASH_LVNAXXRAMASBOSSMODS4 = "/dbm";
	SLASH_LVNAXXRAMASBOSSMODS5 = "/deadlybossmods";
	SLASH_LVNAXXRAMASBOSSMODS6 = "/deadlyboss";
	SLASH_LVNAXXRAMASBOSSMODS7 = "/deadly";
	SlashCmdList["LVNAXXRAMASBOSSMODS"] = function(msg)
		if string.lower(msg) == "unlock" then
			DBM_StatusBarTimerDrag:Show();
		elseif string.lower(msg) == "lock" then
			DBM_StatusBarTimerDrag:Hide();
		elseif string.lower(msg) == "ver" or string.lower(msg) == "version" then
			local syncInfo = {};
			for i = 1, GetNumRaidMembers() do
				if (tonumber(DBM.SyncInfo.Clients[UnitName("raid"..i)])) then	
					table.insert(syncInfo, {["Name"] = UnitName("raid"..i), ["Version"] = DBM.SyncInfo.Clients[UnitName("raid"..i)]});
				end
			end
			
			table.sort(syncInfo, function(v1, v2) return tonumber(v1.Version) > tonumber(v2.Version); end);
			for index, value in pairs(syncInfo) do
				DBM.AddMsg(value.Name..": "..value.Version);
			end
			DBM.AddMsg(string.format(DBM_FOUND_CLIENTS, table.getn(syncInfo)));

		elseif string.lower(msg) == "ver2" then
			local syncInfo = {};
			local msg = "";
			for i = 1, GetNumRaidMembers() do
				msg = "raid"..i.." - ";
				msg = msg.."Name: "..UnitName("raid"..i).." - ";
				if (DBM.SyncInfo.Clients[UnitName("raid"..i)] and DBM.SyncInfo.Clients[UnitName("raid"..i)] == DBM.Version) then
					msg = msg.."Version: "..DBM.SyncInfo.Clients[UnitName("raid"..i)];
				elseif (DBM.SyncInfo.Clients[UnitName("raid"..i)]) then
					msg = msg.."Version: "..DBM.SyncInfo.Clients[UnitName("raid"..i)].." OLD";
					DBM.SendHiddenWhisper("<Deadly Boss Mods> "..DBM_YOUR_VERSION_SUCKS, UnitName("raid"..i));
				else
					msg = msg.."Version: -none-";
				end

				DBM.AddMsg(msg);
			end

			DBM.AddMsg(string.format(DBM_FOUND_CLIENTS, i));

		elseif string.lower(msg) == "bars" or string.lower(msg) == "barinfo" or string.lower(msg) == "syncedby" or string.lower(msg) == "syncinfo" then
			local syncedBars = false;
			for index, value in pairs(DBM.StatusBarData) do
				if value.syncedBy then
					DBM.AddMsg(index..": "..value.syncedBy);
					syncedBars = true;
				end
			end
			if( syncedBars == false ) then
				DBM.AddMsg(DBM_NOSYNCBARS);
			end
		elseif string.lower(msg) == "stop" then
			if DBM.Rank >= 1 then
				DBM.AddSyncMessage("ENDALL", true);
				DBM.AddMsg(DBM_ALL_STOPPED);
			else
				DBM.AddMsg(DBM_NEED_LEADER_STOP_ALL);
			end
		elseif string.sub(msg, 0, 5) == "timer" then
			local _, _, _, timer, name = string.find(msg, "(%w+) (%d+) (.+)");
			if timer and name then
				DBM.StartStatusBarTimer(tonumber(timer), name, nil, true);
			else
				DBM.AddMsg(DBM_TIMER_SLASHCMD_HELP1);
				DBM.AddMsg(DBM_TIMER_SLASHCMD_HELP2);
			end
		elseif string.sub(msg, 0, 15) == "broadcast timer" then
			local _, _, _, _, timer, name = string.find(msg, "(%w+) (%w+) (%d+) (.+)");
			if timer and name then				
				if DBM.Rank >= 1 then
					DBM.StartStatusBarTimer(tonumber(timer), name);
				else
					DBM.StartStatusBarTimer(tonumber(timer), name, nil, true);
				end
			else
				DBM.AddMsg(DBM_TIMER_SLASHCMD_HELP1);
				DBM.AddMsg(DBM_TIMER_SLASHCMD_HELP2);
			end
		else
			DBMMinimapButton:GetScript("OnClick")();
		end
	end

	SLASH_LVRANGECHECK1 = "/range";
	SLASH_LVRANGECHECK2 = "/rangecheck";
	SLASH_LVRANGECHECK3 = "/checkrange";
	SlashCmdList["LVRANGECHECK"] = DBM.RangeCheck;

	SLASH_LVCLEANUP1 = "/cleanup";
	SlashCmdList["LVCLEANUP"] = DBM.CleanUp;
	
	DBM_API:RegisterEvent("VARIABLES_LOADED");
	DBM_API:RegisterEvent("PLAYER_LOGIN");
	DBM_API:RegisterEvent("PLAYER_ENTERING_WORLD");
	DBM_API:RegisterEvent("PLAYER_LEAVING_WORLD");
	DBM_API:RegisterEvent("CHAT_MSG_WHISPER");
	DBM_API:RegisterEvent("RAID_ROSTER_UPDATE");
	DBM_API:RegisterEvent("PLAYER_ENTER_COMBAT");
	DBM_API:RegisterEvent("PLAYER_LEAVE_COMBAT");
	DBM_API:RegisterEvent("CHAT_MSG_ADDON");
	DBM_API:RegisterEvent("PLAYER_REGEN_DISABLED");
	DBM_API:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	DBM_API:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH");
	DBM_API:RegisterEvent("PLAYER_DEAD");
end

function DBM.RangeCheck()
	local name, playersOutOfRange;
	playersOutOfRange = "";
	for i = 1, GetNumRaidMembers() do
		name = GetRaidRosterInfo(i)
		if name and (not CheckInteractDistance("raid"..i, 4)) then
			playersOutOfRange = playersOutOfRange..UnitName("raid"..i)..", ";
		end						
	end
	DBM.AddMsg(DBM_RANGE_CHECK..string.sub(playersOutOfRange, 1, (string.len(playersOutOfRange) - 2)));
end
	
function DBM.CleanUp()
	if DBM.Rank >= 1 then
		for i = 1, GetNumRaidMembers() do
			SetRaidTargetIcon("raid"..i, 0);
		end
		DBM.AddMsg("Cleaned up raid icons!");
	end
end

function DBM.LoadAddOns()
	local loadedAddOns = {};
	DBM.SortedAddOns = {};

	for index, value in pairs(DBM.AddOns) do	--load AddOn's saved variables/add new addons to the DBM_SavedVars table/set default values for missing fields		
		if not value.Name then
			DBM.AddOns[index].Name = index;
		end
		if not value.Version then
			DBM.AddOns[index].Version = "1.0";
		end
		if not value.Author then
			DBM.AddOns[index].Author = DBM.Capitalize(DBM_UNKNOWN);
		end
		if not value.Description then
			DBM.AddOns[index].Description = DBM_DEFAULT_DESCRIPTION;
		end
		if not value.Instance then
			DBM.AddOns[index].Instance = DBM_OTHER;
		end
		if not value.Instance then
			DBM.AddOns[index].Instance = DBM_OTHER;
		end
		if not value.GUITab then
			DBM.AddOns[index].GUITab = (DBMGUI_TAB_OTHER or "Other");
		end
		if not value.Sort then
			value.Sort = 9999;
		end
		if not value.Options then
			DBM.AddOns[index].Options = {
				["Enabled"] = true,
				["Announce"] = false,
			}
		end		
		if value.Options.Enabled == nil then --not value.Options.Enabled would return true if the AddOn is disabled....and the next line would enable the addon
			DBM.AddOns[index].Options.Enabled = true;
		end
		if value.Options.Announce == nil then
			DBM.AddOns[index].Options.Announce = true;
		end
		if not value.Events then
			DBM.AddOns[index].Events = {};
		end
		if type(value.OnLoad) ~= "function" then
			DBM.AddOns[index].OnLoad = function() end;
		end
		if type(value.OnEvent) ~= "function" then
			DBM.AddOns[index].OnEvent = function() end;
		end
		if not value.UpdateInterval then
			DBM.AddOns[index].UpdateInterval = 0;
		end
		if not value.elapsed then
			DBM.AddOns[index].elapsed = 0;
		end
		
		if not value.Events then
			value.Events = {};
		end			
		
		if DBM_SavedVars.AddOns[index] == nil then --load saved vars
			DBM_SavedVars.AddOns[index] = value.Options
		else
			for index2, value2 in pairs(value.Options) do				
				if DBM_SavedVars.AddOns[index][index2] == nil then					
					DBM_SavedVars.AddOns[index][index2] = value2;
				else
					DBM.AddOns[index].Options[index2] = DBM_SavedVars.AddOns[index][index2];
				end
			end
		end
				
		setglobal("SLASH_"..index.."1", "/"..string.gsub(value.Name, " ", "")); --register slash commands
		for i = 1, 10 do
			if value["Abbreviation"..i] then
				setglobal("SLASH_"..index..(i+1), "/"..value["Abbreviation"..i]);
			else
				break;
			end
		end

		loadstring("SlashCmdList["..string.format('%q', index).."] = function(msg)\n"..
			"local abbrString = '';\n"..
			"if string.lower(msg) == 'on' then\n"..
				"DBM.AddOns["..string.format('%q', index).."].Options.Enabled = true;\n"..
				"DBM.AddMsg(DBM_MOD_ENABLED, "..string.format('%q', value.Name)..");\n"..				
			"elseif string.lower(msg) == 'off' then\n"..
				"DBM.AddOns["..string.format('%q', index).."].Options.Enabled = false;\n"..
				"DBM.UnSchedule('DBM.AddOns."..index..".OnEvent');\n"..
				"DBM.UnSchedule('DBM.AddOns."..index..":OnEvent');\n"..
				"DBM.UnSchedule('DBM.AddOns[\""..index.."\"]:OnEvent');\n"..
				"DBM.AddMsg(DBM_MOD_DISABLED, "..string.format('%q', value.Name)..");\n"..
			"elseif string.lower(msg) == 'announce on' then\n"..
				"DBM.AddOns["..string.format('%q', index).."].Options.Announce = true;\n"..
				"DBM.AddMsg(DBM_ANNOUNCE_ENABLED, "..string.format('%q', value.Name)..");\n"..
			"elseif string.lower(msg) == 'announce off' then\n"..
				"DBM.AddOns["..string.format('%q', index).."].Options.Announce = false;\n"..
				"DBM.AddMsg(DBM_ANNOUNCE_DISABLED, "..string.format('%q', value.Name)..");\n"..
			"elseif string.lower(msg) == 'stop' then\n"..
				"if type(DBM.AddOns["..string.format('%q', index).."].OnStop) == 'function' then\n"..
					"if DBM.AddOns["..string.format('%q', index).."].APIVersion and DBM.AddOns["..string.format('%q', index).."].APIVersion >= 2.11 then\n"..					
						"DBM.AddOns["..string.format('%q', index).."]:OnStop()\n"..
					"else\n"..
						"DBM.AddOns["..string.format('%q', index).."].OnStop()\n"..
					"end\n"..
				"end\n"..
				"DBM.UnSchedule('DBM.AddOns."..index..".OnEvent');\n"..
				"DBM.UnSchedule('DBM.AddOns."..index..":OnEvent');\n"..
				"DBM.UnSchedule('DBM.AddOns[\""..index.."\"]:OnEvent');\n"..
				"for index2, value2 in pairs(DBM.StatusBarData) do\n"..
					"if index2 then\n"..
						"if DBM.AddOns["..string.format('%q', index).."].Name == value2.startedBy then\n"..
							"DBM.EndRepeatingStatusBarTimer(index2, true)\n"..
						"end\n"..
					"end\n"..
				"end\n"..
				"DBM.AddMsg(DBM_MOD_STOPPED, "..string.format('%q', value.Name)..");\n"..
			"else\n"..			
				"if type(DBM.AddOns["..string.format('%q', index).."].OnSlashCommand) == 'function' then\n"..
					"if DBM.AddOns["..string.format('%q', index).."].APIVersion and DBM.AddOns["..string.format('%q', index).."].APIVersion >= 2.11 then\n"..
						"if DBM.AddOns["..string.format('%q', index).."]:OnSlashCommand(msg) then\n"..
							"return;\n"..
						"end\n"..
					"else\n"..
						"if DBM.AddOns["..string.format('%q', index).."].OnSlashCommand(msg) then\n"..
							"return;\n"..
						"end\n"..
					"end\n"..
				"end\n"..
			
				"DBM.AddMsg(string.format(DBM_MOD_INFO, DBM.AddOns["..string.format('%q', index).."].Version, DBM.AddOns["..string.format('%q', index).."].Author), "..string.format('%q', value.Name)..");\n"..
				"DBM.AddMsg('/'..string.gsub(DBM.AddOns["..string.format('%q', index).."].Name, ' ', '')..DBM_SLASH_HELP1, "..string.format('%q', value.Name)..");\n"..
				"DBM.AddMsg('/'..string.gsub(DBM.AddOns["..string.format('%q', index).."].Name, ' ', '')..DBM_SLASH_HELP2, "..string.format('%q', value.Name)..");\n"..
				"DBM.AddMsg('/'..string.gsub(DBM.AddOns["..string.format('%q', index).."].Name, ' ', '')..DBM_SLASH_HELP3, "..string.format('%q', value.Name)..");\n"..
				"if type(DBM.AddOns["..string.format('%q', index).."].SlashCmdHelpText) == 'table' then\n"..
					"for index, value in pairs(DBM.AddOns["..string.format('%q', index).."].SlashCmdHelpText) do\n"..
						"if type(value) == 'string' then\n"..
							"DBM.AddMsg(value, "..string.format('%q', value.Name)..");\n"..
						"end\n"..
					"end\n"..
				"end\n"..
					
				"if type(DBM.AddOns["..string.format('%q', index).."].Abbreviation1) == 'string' then\n"..
					"abbrString = '/'..DBM.AddOns["..string.format('%q', index).."].Abbreviation1;\n"..
				"end\n"..
				"if type(DBM.AddOns["..string.format('%q', index).."].Abbreviation2) == 'string' and (not type(DBM.AddOns["..string.format('%q', index).."].Abbreviation3) == 'string') then\n"..
					"abbrString = abbrString..' '..DBM_OR..' /'..DBM.AddOns["..string.format('%q', index).."].Abbreviation2;\n"..
				"elseif type(DBM.AddOns["..string.format('%q', index).."].Abbreviation3) == 'string' then\n"..
					"abbrString = abbrString..', /'..DBM.AddOns["..string.format('%q', index).."].Abbreviation2..' '..DBM_OR..' /'..DBM.AddOns["..string.format('%q', index).."].Abbreviation3;\n"..
				"end\n"..
					
				"if abbrString ~= '' then\n"..
					"DBM.AddMsg(string.format(DBM_SLASH_HELP4, abbrString, string.gsub(DBM.AddOns["..string.format('%q', index).."].Name, ' ', '')), "..string.format('%q', value.Name)..");\n"..
				"end\n"..
			"end\n"..
		"end")();			

		if not loadedAddOns[value.Instance] then
			loadedAddOns[value.Instance] = 1;
		else
			loadedAddOns[value.Instance] = loadedAddOns[value.Instance] + 1;
		end
		
		if value.APIVersion and value.APIVersion >= 2.11 then
			DBM.AddOns[index]:OnLoad();
		else
			DBM.AddOns[index].OnLoad();
		end
		
		table.insert(DBM.SortedAddOns, index);		
	end
--	if( not DBM.HideLoadInfo ) then
--		for index, value in pairs(loadedAddOns) do
--			DBM.AddMsg(string.format(DBM_MODS_LOADED, value, index));
--		end
--		DBM.HideLoadInfo = true;
--	end
	table.sort(DBM.SortedAddOns, function(v1, v2) return DBM.AddOns[v1].Sort < DBM.AddOns[v2].Sort; end);
	DBM.Register();
end


function DBM.OnVarsLoaded()
	local loadedAddOns = {};
	DBM.Register();
	
	
	DBM.AddMsg(string.format(DBM_LOADED, DBM.Version));
	
	if DBM_SavedVars == nil then
		DBM_SavedVars = {}
	end
	
	if not DBM_SavedVars.DBM then --if we update from v0.5 or lower, we dont have this field...
		DBM_SavedVars.DBM = {} --...so we have to create it
	end
	
	for index, value in pairs(DBM.Options) do --load saved vars
		if DBM_SavedVars.DBM[index] == nil then
			DBM_SavedVars.DBM[index] = value;
		elseif type(DBM_SavedVars.DBM[index]) == "table" and type(DBM.Options[index]) == "table" and index ~= "CharSettings" then
			for index2, value2 in pairs(DBM.Options[index]) do
				if DBM_SavedVars.DBM[index][index2] == nil then
					DBM_SavedVars.DBM[index][index2] = value;
				elseif type(DBM_SavedVars.DBM[index][index2]) == "table" and type(DBM.Options[index][index2]) == "table" then
					for index3, value3 in pairs(DBM.Options[index][index2]) do
						if DBM_SavedVars.DBM[index][index2][index3] == nil then
							DBM_SavedVars.DBM[index][index2][index3] = value;
						else
							DBM.Options[index][index2][index3] = DBM_SavedVars.DBM[index][index2][index3];
						end				
					end
				else
					DBM.Options[index][index2] = DBM_SavedVars.DBM[index][index2];
				end				
			end
		elseif index == "CharSettings" then
			for index2, value2 in pairs(DBM.Options[index]) do
				if DBM_SavedVars.DBM[index][index2] == nil then
					DBM_SavedVars.DBM[index][index2] = DBM.Options[index][index2];
				else
					DBM.Options[index][index2] = DBM_SavedVars.DBM[index][index2];
				end
			end
			for index2, value2 in pairs(DBM_SavedVars.DBM[index]) do
				if DBM.Options[index][index2] == nil then
					DBM.Options[index][index2] = DBM_SavedVars.DBM[index][index2];
				else
					DBM_SavedVars.DBM[index][index2] = DBM.Options[index][index2];
				end
			end
		else
			DBM.Options[index] = DBM_SavedVars.DBM[index];
		end
	end	

	DBMSpecialWarningFrameText:SetFont(STANDARD_TEXT_FONT, DBM.Options.SpecialWarningTextSize, "THICKOUTLINE");
	DBMStatusBars_ChangeDesign(DBM.Options.StatusBarDesign, true);
	
	DBMMinimapButton_Move();	

	if not DBM.Options.MinimapButton.Enabled then
		DBMMinimapButton:Hide();
	else
		DBMMinimapButton:Show();
	end
	
	if DBM.Options.LoadGUIOnLoad then
		if LoadAddOn("DBM_GUI") then
			DBMBossModFrame_OnEvent("PLAYER_LOGIN");
		end
	end
	
	if GetNumRaidMembers() > 1 then
		DBM.AddSyncMessage("REQ VER "..DBM.Version, true);
		DBM.InRaid = true;
		local name, rank;
		for i = 1, GetNumRaidMembers() do
			name, rank = GetRaidRosterInfo(i);
			if UnitName("player") == name then
				DBM.Rank = rank;
			end
			DBM.Raid[name] = rank;
		end
	end
	
	DBM.LoadAddOns();
	
	if type(ForgottenChat_Blacklist) == "table" then
		local foundLVBM, foundLVPN;
		for index, value in pairs(ForgottenChat_Blacklist) do
			if value == "LVBM" then
				foundLVBM = true;
			elseif value == "LVPN" then
				foundLVPN = true;
			end
		end
		if not foundLVBM then
			table.insert(ForgottenChat_Blacklist, "LVBM")
		end
		if not foundLVPN then
			table.insert(ForgottenChat_Blacklist, "LVPN");
		end
	end
	if type(WIM_Filters) == "table" then
		WIM_Filters["^LVBM"] = "Ignore";
		WIM_Filters["^LVPN"] = "Ignore";
	end
		
	--sort me --FIX ME
	SLASH_LVDISTANCE1 = "/distance";	-- EN
	SLASH_LVDISTANCE2 = "/abstand";		-- DE
	SlashCmdList["LVDISTANCE"] = DBM_Gui_DistanceFrame;
	RaidWarningFrame:ClearAllPoints();
	RaidWarningFrame:SetPoint("CENTER", "UIParent", "TOP", DBM.Options.Gui["RaidWarning_PosX"], DBM.Options.Gui["RaidWarning_PosY"]);
	RaidWarningFrame:SetFont(DBM.Options.Gui["RaidWarning_Font"], DBM.Options.Gui["RaidWarning_Height"], "");

	DBMWarningFrame:ClearAllPoints();
	DBMWarningFrame:SetPoint("CENTER", "UIParent", "BOTTOM", DBM.Options.Gui["SelfWarning_PosX"], DBM.Options.Gui["SelfWarning_PosY"]);
	DBMWarningFrame:SetFont(DBM.Options.Gui["SelfWarning_Font"], DBM.Options.Gui["SelfWarning_Height"], "");

	if( DBM.Options.Gui["RaidWarning_Enable"] == false ) then	RaidWarningFrame:Hide();	end
	if( DBM.Options.Gui["SelfWarning_Enable"] == false ) then	DBMWarningFrame:Hide();	end

	if (DBM.Options.Gui["HidePlayerNamesInRaid"] and GetNumRaidMembers() > 0) then
		if (tonumber(GetCVar("UnitNamePlayer")) == 1) then
			DBM.Options.Gui["HidePlayerNames"] = true;
			SetCVar("UnitNamePlayer", 0);
		end
	end
	
end

function DBM.OnEvent(event, arg1)
	if (event == "VARIABLES_LOADED") then
		DBM.OnVarsLoaded();
	elseif (event == "PLAYER_LOGIN") then
		DBM.SetHooks();
	elseif (event == "PLAYER_ENTERING_WORLD") then
		DBM.OnNewZone();		
		DBM.LoadAddOns();
		DBM.SetCombatLogDistance(DBM.Options.Gui.CombatLogValue, true)
	
	elseif (event == "PLAYER_LEAVING_WORLD") then
		DBM_SavedVars.DBM = DBM.Options; --save variables
		for index, value in pairs(DBM.AddOns) do
			DBM_SavedVars.AddOns[index] = value.Options; --save AddOn variables
		end
	elseif (event == "CHAT_MSG_ADDON") and ((arg1 == "LVBM") or (arg1 == "LVBM NSP")) and arg2 and (arg3 == "RAID" or arg3 == "BATTLEGROUND") and (DBM.Options.EnableSync) then
		if arg1 == "LVBM NSP" then
			DBM.OnSyncMessage(arg2, arg4, true);
		elseif arg1 == "LVBM" then
			DBM.OnSyncMessage(arg2, arg4);
		end
	elseif (event == "CHAT_MSG_WHISPER") and ((string.sub(arg1, 1, 4) == "LVPN") or (string.sub(arg1, 1, 5) == "LVBM ")) then
		if string.sub(arg1, 1, 5) == "LVPNS" then
			DBM.OnPatchnoteMessage(string.sub(arg1, 6), false);
		elseif string.sub(arg1, 1, 5) == "LVPNL" then
			DBM.OnPatchnoteMessage(string.sub(arg1, 6), true);
		elseif string.sub(arg1, 1, 7) == "LVPNREQ" then
			local version, language;
			_, _, version, language = string.find(arg1, "LVPNREQ ([^%s]+) (%w+)");
			DBM.SendPatchnotes(arg2, version, language);
		elseif string.sub(arg1, 1, 5) == "LVBM " and string.sub(arg1, 6, 7) ~= "SC" then
			DBM.OnSyncMessage(string.sub(arg1, 6), arg2, true);
		end
	elseif (event == "RAID_ROSTER_UPDATE") then
		local name, rank;
		if GetNumRaidMembers() > 1 then
			if not DBM.InRaid then
				DBM.InRaid = true;
				DBM.AddSyncMessage("REQ VER "..DBM.Version, true);
				if DBM.Options.Gui.HidePlayerNamesInRaid then
					SetCVar("UnitNamePlayer", 0);
				end
			end
			DBM.Raid = {};
			for i = 1, GetNumRaidMembers() do
				name, rank = GetRaidRosterInfo(i);
				if UnitName("player") == name then
					DBM.Rank = rank;
				end
				if name then --yes, name can be nil! this happens when you are in a raid grp and someone in your raid deletes his char oO
					DBM.Raid[name] = rank;
				end
			end
		else
			if DBM.InRaid then				
				DBM.InRaid = false;
				if DBM.Options.Gui.HidePlayerNamesInRaid then
					SetCVar("UnitNamePlayer", 1);
				end
			end
		end
	elseif (event == "PLAYER_ENTER_COMBAT") then
		DBM.AutoAttack = true;
	elseif (event == "PLAYER_LEAVE_COMBAT") then
		DBM.AutoAttack = false;
	elseif (event == "PLAYER_REGEN_DISABLED") then
		if DBM.Bosses[GetRealZoneText()] and not DBM.InCombat then
			local bossTable = {};
			local bosses = {};
			
			for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
				if value.startMethod == "COMBAT" then
					bossTable[value.name] = {["index"] = index, ["value"] = value};
					table.insert(bosses, value.name);
				end
			end
			bosses = DBM.UnitExists(bosses);
			if bosses then
				for index, value in pairs(bosses) do
					if value then
						DBM.Schedule((bossTable[index].value.delay or 5), 	function(bossID)							
							if DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][bossID] then
								if DBM.DetectCombat(DBM.Bosses[GetRealZoneText()][bossID].name) then
									DBM.CombatStart(bossID, (DBM.Bosses[GetRealZoneText()][bossID].delay or 5));
								end
							end
						end, bossTable[index].index);
					end
				end
			end
		end
	elseif (event == "ZONE_CHANGED_NEW_AREA") then
		DBM.CombatEnd();
		DBM.OnNewZone();
		DBM.LoadAddOns();
	elseif (event == "PLAYER_DEAD") then
		DBM.EndHideWhispers();
	elseif (event == "CHAT_MSG_COMBAT_HOSTILE_DEATH") then
		local mobName
		_, _, mobName = string.find(arg1, string.gsub(UNITDIESOTHER, "%%s", "(.+)"));
		if mobName and DBM.Bosses[GetRealZoneText()] then
			for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
				if type(value.killName) == "table" then
					for index2, value2 in pairs(value.killName) do
						if value2.name == mobName then
							DBM.CombatEnd(nil, nil, mobName)
						end
					end
				else
					if (value.killName or value.name) == mobName then
						DBM.CombatEnd((value.killName or value.name));
					end
				end
			end
		end
	elseif (event == "CHAT_MSG_MONSTER_YELL") then
		if DBM.Bosses[GetRealZoneText()] and not DBM.InCombat then
			for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
				if value.startMethod == "YELL" then
					if value.startTrigger and value.startTrigger[arg1] then
						DBM.CombatStart(index, 0);
					end
				end
			end
		end
	elseif (event == "CHAT_MSG_MONSTER_EMOTE") then
		if DBM.Bosses[GetRealZoneText()] and not DBM.InCombat then
			for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
				if value.startMethod == "EMOTE" then
					if value.startTrigger and value.startTrigger[arg1] then
						DBM.CombatStart(index, 0);
					end
				end
			end
		end
	end
	for index, value in pairs(DBM.AddOns) do
		if value.Options.Enabled and value.Events[event] and ((value.Instance == DBM_OTHER) or (value.Instance == GetRealZoneText()) or (GetLocale() == "esES" or GetLocale() == "koKR")) then
			if value.APIVersion and value.APIVersion >= 2.11 then
				DBM.AddOns[index]:OnEvent(event, arg1);
			else
				DBM.AddOns[index].OnEvent(event, arg1);
			end
		end
	end
end

function DBM.OnNewZone()
	if (GetRealZoneText() == DBM_NAXX) then
		LoadAddOn("DBM_NAXX");
		DBM.LoadAddOns();
		
	elseif (GetRealZoneText() == DBM_AQ40) then
		LoadAddOn("DBM_AQ40");
		DBM.LoadAddOns();

	elseif (GetRealZoneText() == DBM_BWL) then
		LoadAddOn("DBM_BWL");
		DBM.LoadAddOns();

	elseif (GetRealZoneText() == DBM_MC) then
		LoadAddOn("DBM_MC");
		DBM.LoadAddOns();

	elseif (GetRealZoneText() == DBM_AQ20) then
		LoadAddOn("DBM_AQ20");
		DBM.LoadAddOns();

	elseif (GetRealZoneText() == DBM_ZG) then
		LoadAddOn("DBM_ZG");
		DBM.LoadAddOns();
		
	elseif (GetRealZoneText() == DBM_ARATHI)
		or (GetRealZoneText() == DBM_ALTERAC)
		or (GetRealZoneText() == DBM_WARSONG) then		
		LoadAddOn("DBM_Battlegrounds");
		if DBM.AddOns.Battlegrounds then
			DBM.AddOns.Battlegrounds.OnEvent("ZONE_CHANGED_NEW_AREA");
		end
		DBM.LoadAddOns();
	
	elseif (GetRealZoneText() == DBM_ASHENVALE)
		or (GetRealZoneText() == DBM_FERALAS)
		or (GetRealZoneText() == DBM_DUSKWOOD)
		or (GetRealZoneText() == DBM_HINTERLANDS)
		or (GetRealZoneText() == DBM_BLASTED_LANDS)
		or (GetRealZoneText() == DBM_AZSHARA)
		or (GetRealZoneText() == DBM_ONYXIAS_LAIR) then
		LoadAddOn("DBM_Outdoor");
		DBM.LoadAddOns();
	end
end

function DBM.UpdateTimerData(elapsed)
--[[	for index = table.maxn(DBM.ScheduleData), 0, -1 do
		if DBM.ScheduleData[index] then
			local value = DBM.ScheduleData[index]; --we need this to access the value after we deleted it in the table
			DBM.ScheduleData[index].elapsed = DBM.ScheduleData[index].elapsed + elapsed;
			if DBM.ScheduleData[index].elapsed >= DBM.ScheduleData[index].timer then
				if type(value.func) == "function" then
					table.remove(DBM.ScheduleData, index);
					value.func(value.argument1, value.argument2);
				elseif type(value.func) == "string" then
					DBM.ScheduleFunc = loadstring(value.func.."(".."DBM.ScheduleFuncArg1, DBM.ScheduleFuncArg2"..")");
					DBM.ScheduleFuncArg1 = value.argument1;
					DBM.ScheduleFuncArg2 = value.argument2;
					table.remove(DBM.ScheduleData, index);
					if type(DBM.ScheduleFunc) == "function" then
						DBM.ScheduleFunc();
					end
					DBM.ScheduleFunc = nil;
					DBM.ScheduleFuncArg1 = nil;
					DBM.ScheduleFuncArg2 = nil;
				else --invalid entry, delete it
					table.remove(DBM.ScheduleData, index);
				end
			end
		end
	end]]
	return
end

function DBM.OnUpdate(elapsed)
	for index, value in pairs(DBM.TimerData) do
		if not value.stopped then
			DBM.TimerData[index].elapsed = DBM.TimerData[index].elapsed + elapsed;
		end
	end
	DBM.UpdateTimerData(elapsed);
	for index, value in pairs(DBM.SpamProtection) do
		DBM.SpamProtection[index] = DBM.SpamProtection[index] - elapsed;
		if DBM.SpamProtection[index] <= 0 then
			DBM.SpamProtection[index] = nil;
		end
	end	
	DBM.MsgQueueElapsed = DBM.MsgQueueElapsed + elapsed;
	if DBM.MsgQueueElapsed >= 0.1 then
		DBM.MsgQueueElapsed = 0;
		if DBM.MsgQueue[1] then
			if DBM.MsgQueue[1].longMsg then
				SendChatMessage("LVPNL"..DBM.MsgQueue[1].msg, "WHISPER", nil, DBM.MsgQueue[1].target);
			else
				SendChatMessage("LVPNS"..DBM.MsgQueue[1].msg, "WHISPER", nil, DBM.MsgQueue[1].target);
			end
			table.remove(DBM.MsgQueue, 1)			
		end
	end	
	for index, value in pairs(DBM.AddOns) do 
		--execute the OnUpdate functions of the addons

		if value.Options.Enabled and type(value.OnUpdate) == "function" then
			if value.Instance == GetRealZoneText() 
			or value.Instance == DBM_OTHER 
			or (GetLocale() == "esES" or GetLocale() == "koKR") then --unsupported languages :<

				DBM.AddOns[index].elapsed = DBM.AddOns[index].elapsed + elapsed;
				if value.elapsed > value.UpdateInterval then
					if value.APIVersion and value.APIVersion >= 2.11 then
						DBM.AddOns[index]:OnUpdate(DBM.AddOns[index].elapsed);
					else
						DBM.AddOns[index].OnUpdate(DBM.AddOns[index].elapsed);
					end
					DBM.AddOns[index].elapsed = 0;
				end
			end
		end
	end
	for i = 1, DBM.StatusBarCount do
		local frame = getglobal("DBM_StatusBarTimer"..i);
		local frameBar = getglobal("DBM_StatusBarTimer"..i.."Bar");
		if frame:IsShown() and not frame:IsVisible() then
			if frame.isUsed and DBM.StatusBarData[frame.usedBy] then
				DBM.StatusBarData[frame.usedBy].elapsed = DBM.StatusBarData[frame.usedBy].elapsed + elapsed;
				if DBM.Options.FillUpStatusBars then
					frameBar:SetValue(DBM.StatusBarData[frame.usedBy].elapsed);
				else
					frameBar:SetValue(DBM.StatusBarData[frame.usedBy].timer - DBM.StatusBarData[frame.usedBy].elapsed);
				end
				getglobal(frameBar:GetName().."Timer"):SetText(DBM.SecondsToTime(DBM.StatusBarData[frame.usedBy].timer - DBM.StatusBarData[frame.usedBy].elapsed));
				if DBM.StatusBarData[frame.usedBy].elapsed >= DBM.StatusBarData[frame.usedBy].timer then
					if GameTooltip:IsShown() and GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText() == getglobal(frameBar:GetName().."Text"):GetText() and ((not DBM.StatusBarData[frame.usedBy].repetitions) or DBM.StatusBarData[frame.usedBy].repetitions <= 1) then
						GameTooltip:Hide();
					end
					DBM.EndStatusBarTimer(frame.usedBy, true);
				end
			end
		end
	end
	DBM.AggroUpdate = DBM.AggroUpdate + elapsed;
	if DBM.AggroUpdate > 1 and DBM.Options.CharSettings[UnitName("player")].AggroAlert and ((GetRealZoneText() == DBM_NAXX) or (GetRealZoneText() == DBM_AQ40) or (GetRealZoneText() == DBM_BWL) or (GetRealZoneText() == DBM_MC) or (GetRealZoneText() == DBM_AQ20) or (GetRealZoneText() == DBM_ZG) or (not (GetLocale() == "deDE" or GetLocale() == "enGB" or GetLocale() == "enUS"))) then
		local posX, posY;
		posX, posY = GetPlayerMapPosition("player");
		DBM.AggroUpdate = 0;
		if posX == 0 and posY == 0 then
			for i = 1, GetNumRaidMembers() do
				if UnitName("raid"..i.."targettarget") == UnitName("player") and not UnitIsPlayer("raid"..i.."target") then
					if DBM.LastAggroTarget ~= UnitName("raid"..i.."target") then
						DBM.HasAggro(UnitName("raid"..i.."target"));
						DBM.LastAggroTarget = UnitName("raid"..i.."target");
						DBM.AggroUpdate = -12.5
						DBM.Schedule(25, function(target) if DBM.LastAggroTarget == target then DBM.LastAggroTarget = nil; end end, DBM.LastAggroTarget)
					end
					break;
				end
			end
		end
	end
	DBM.CombatUpdate = DBM.CombatUpdate + elapsed;
	if DBM.InCombat and DBM.CombatUpdate > 2 then
		DBM.CombatUpdate = 0;
		if not UnitAffectingCombat("player") and not UnitIsDead("player") and not DBM.GetScheduleTimeLeft("DBM.CheckForCombatEnd") then
			if DBM.InCombat then
				if DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][DBM.InCombat] then
					if not DBM.Bosses[GetRealZoneText()][DBM.InCombat].minCombatTime or (GetTime() - DBM.CombatStartTime) > DBM.Bosses[GetRealZoneText()][DBM.InCombat].minCombatTime then
						DBM.Schedule(10, "DBM.CheckForCombatEnd");
					end
				else
					DBM.Schedule(10, "DBM.CheckForCombatEnd");
				end
			end
		end
	end
	for index, value in pairs(DBM.HideDNDAFKMessages) do
		if type(value) == "number" then
			DBM.HideDNDAFKMessages[index] = value - elapsed;
			if DBM.HideDNDAFKMessages[index] <= 0 then
				DBM.HideDNDAFKMessages[index] = false;
			end
		end
	end
	for index, value in pairs(DBM.HiddenWhisperMessages) do
		for index2, value2 in pairs(DBM.HiddenWhisperMessages[index]["targets"]) do
			if type(value2) == "number" then
				DBM.HiddenWhisperMessages[index]["targets"][index2] = value2 - elapsed;
				if DBM.HiddenWhisperMessages[index]["targets"][index2] <= 0 then
					DBM.HiddenWhisperMessages[index]["targets"][index2] = nil;
					local tableSize = 0;
					for index3, value3 in pairs(DBM.HiddenWhisperMessages[index]["targets"]) do
						tableSize = tableSize + 1;
					end
					if tableSize == 0 then
						DBM.HiddenWhisperMessages[index] = nil;
					end
				end
			end
		end
	end
	if type(DBM.NoWhisperSound.timer) == "number" then
		DBM.NoWhisperSound.timer = DBM.NoWhisperSound.timer - elapsed;
		if DBM.NoWhisperSound.timer <= 0 then
			DBM.NoWhisperSound.timer = false;
		end
	end

	if MAX_BATTLEFIELD_QUEUES and PVP_TEAMSIZE and not DBM.AddOns.Battlegrounds then
		for i = 1, MAX_BATTLEFIELD_QUEUES do
			local status = GetBattlefieldStatus(i);
			if status == "confirm" then
				LoadAddOn("DBM_Battlegrounds");
				DBM.LoadAddOns();
				if DBM.AddOns.Battlegrounds and DBM.AddOns.Battlegrounds.OnUpdate then
					DBM.AddOns.Battlegrounds.OnUpdate(0);
				end
			end
		end
	end
end



-------------------
--Timer Functions--
-------------------
function DBM.Schedule(timer, func, argument1, argument2)
	if (type(timer) ~= "number") or (not func) then
		return;
	end
	
	table.insert(DBM.ScheduleData, {
		["elapsed"] = 0,
		["timer"] = timer,
		["func"] = func,
		["argument1"] = argument1,
		["argument2"] = argument2,
	});	
end


function DBM.UnSchedule(func, argument1, argument2)
	if not func then
		return;
	end
	
	if argument1 or argument2 then
		for index = table.getn(DBM.ScheduleData), 1, -1 do
			value = DBM.ScheduleData[index];
			if value and value.func == func and value.argument1 == argument1 and value.argument2 == argument2 then
				DBM.ScheduleData[index] = nil;
			end
		end
	else
		for index = table.getn(DBM.ScheduleData), 1, -1 do
			value = DBM.ScheduleData[index];
			if value then
				if value and value.func == func then
					DBM.ScheduleData[index] = nil;
				end
			end
		end
	end	

end


function DBM.GetScheduleTimeLeft(func, argument1, argument2)
	if not func then
		return;
	end
	
	for index, value in pairs(DBM.ScheduleData) do
		if type(value) == "table" then
			if value and value.func == func and value.argument1 == argument1 and value.argument2 == argument2 then
				return (value.timer - value.elapsed), value.elapsed;
			end
		end
	end
end

function DBM.FunctionIsScheduled(func)
	if not func then
		return;
	end
	
	for index, value in pairs(DBM.ScheduleData) do
		if type(value) == "table" then
			if value and value.func == func then
				return true;
			end
		end
	end
	return false;
end

function DBM.StartTimer(name)
	if not name then
		return;
	end
	
	DBM.TimerData[name] = {
		["elapsed"] = 0,
		["stopped"] = false,
	};	
end


function DBM.GetTimer(name)
	if (not name) or (not DBM.TimerData[name]) then
		return 0;
	end
	
	return DBM.TimerData[name].elapsed;
end


function DBM.StopTimer(name)
	if (not name) or (not DBM.TimerData[name]) then
		return 0;
	end
	
	DBM.TimerData[name].stopped = true;
	return DBM.TimerData[name].elapsed;
end


function DBM.ResumeTimer(name)
	if (not name) or (not DBM.TimerData[name]) then
		return 0;
	end
	
	DBM.TimerData[name].stopped = false;
	return DBM.TimerData[name].elapsed;
end


function DBM.EndTimer(name)
	if (not name) or (not DBM.TimerData[name]) then
		return 0;
	end
	
	local elapsed = DBM.TimerData[name].elapsed;
	DBM.TimerData[name] = nil;
	return elapsed;
end


function DBM.StartStatusBarTimer(timer, name, icon, noBroadcast, syncedBy, startedBy, repeatingTimer, repetitions, colorR, colorG, colorB, colorA)
	--support for old API
	if (type(icon) == "boolean") or type(noBroadcast) == "string" or type(startedBy) == "number" or type(repeatingTimer) == "number" then
		local tmp, tmp2;
		tmp = noBroadcast;
		noBroadcast = icon;
		
		tmp2 = syncedBy;
		syncedBy = tmp;
		
		tmp = startedBy
		startedBy = tmp2;
		
		tmp2 = repeatingTimer;		
		repeatingTimer = tmp;

		repetitions = tmp2;
		icon = nil;
	end
	
	
	if (type(timer) ~= "number") or (not name) or (name == "") or not DBM.Options.EnableStatusBars then
		return;
	end
	name = tostring(name);
	if type(syncedBy) ~= "string" then
		syncedBy = DBM_LOCAL;
	else
        for index, value in pairs(DBM.FilteredBars) do
            if string.find(name, value) then
                return;
            end
        end
    end
	local barId, addon, newAddon;	
	if DBM.StatusBarData[name] then
		barId = DBM.StatusBarData[name].barId;
	else
		for i=1, DBM.StatusBarCount do
			if not getglobal("DBM_StatusBarTimer"..i).isUsed then
				barId = i;
				break;
			end
		end	
		if not barId then
			barId = DBMStatusBars_CreateNewBar();
			if not barId then
				return;
			end
		end
	end	
	if not startedBy then
        _, _, addon = string.find(debugstack(2, 2, 2), "\\([%w%s]+).lua");
        if type(addon) == "string" then
            addon = string.gsub(addon, "LV", "");
        else
            _, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\([%w%s]+).lua");
            if type(addon) == "string" then
                addon = string.gsub(addon, "LV", "");
            else
                _, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\[%w%s]+\\([%w%s]+).lua");
                if type(addon) == "string" then
                    addon = string.gsub(addon, "LV", "");
                else
                    addon = "UNKNOWN";
                end
            end
        end
	else
		addon = startedBy;
	end
	addon = string.gsub(addon, " ", "");
	if addon == "ChatFrame" or addon == "API" or addon == "GUI" or addon == "StatusBars" or addon == "LootLink" then
		addon = "UNKNOWN";
	end

	if addon and addon ~= "UNKNOWN" and addon ~= "" then
		if DBM.AddOns[addon] and not DBM.AddOns[addon].Options.Enabled then
			return;
		elseif DBM.AddOns[addon] and DBM.AddOns[addon].Name then

			if DBM.AddOns[addon]["MinVersionToSync"] and syncedBy ~= DBM_LOCAL then	-- by Nitram!
				if not DBM.SyncInfo.Clients[syncedBy] or (tonumber(DBM.SyncInfo.Clients[syncedBy]) < tonumber(DBM.AddOns[addon]["MinVersionToSync"])) then
					-- DBM.AddMsg("Filtered: "..name.." - "..syncedBy.." - "..addon, "DEBUG");
					return;
				end
			end
			newAddon = DBM.AddOns[addon].Name;
		end
	end
	local specialColor, color;
	specialColor = false;
	if tonumber(colorR) and tonumber(colorG) and tonumber(colorB) then
		specialColor = true;
		color = {};
		color.R = tonumber(colorR);
		color.G = tonumber(colorG);
		color.B = tonumber(colorB);
		color.A = tonumber(colorA) or DBM.Options.StatusBarColor.a;
	end

	if getglobal("DBM_StatusBarTimer"..barId) then
	
		DBM.StatusBarData[name] = {
			["elapsed"]	= 0,
			["timer"]	= timer,
			["barId"]	= barId,
			["syncedBy"]	= syncedBy,
			["startedBy"]	= newAddon,
			["isRepeating"]	= repeatingTimer or false,
			["repetitions"]	= repetitions or 300,
			["infinite"]	= (repetitions or 300) > 299,
			["bossModID"]	= addon,
			["color"] 	= color,
			["icon"] = icon,
			["frame"]	= getglobal("DBM_StatusBarTimer"..barId),
		};
	
		if DBM.StatusBarData[name].frame.specialColor and not specialColor then 
			--we need to reset the color if we restart a timer with the same name...but without a specific color
			getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetStatusBarColor(
											DBM.Options.StatusBarColor.r, 
											DBM.Options.StatusBarColor.g, 
											DBM.Options.StatusBarColor.b, 
											DBM.Options.StatusBarColor.a
										   );
		end
		DBM.StatusBarData[name].frame.isUsed = true;
		DBM.StatusBarData[name].frame.usedBy = name;
		DBM.StatusBarData[name].frame.syncedBy = syncedBy;
		DBM.StatusBarData[name].frame.startedBy = newAddon;
		DBM.StatusBarData[name].frame.isRepeating = repeatingTimer or false;
		DBM.StatusBarData[name].frame.repetitions = repetitions or 1;
		DBM.StatusBarData[name].frame.specialColor = specialColor;
		getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetMinMaxValues(0, timer);
		DBM.StatusBarData[name].frame.table = DBM.StatusBarData[name];
		if type(DBM_SBT[name]) == "string" then
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(DBM_SBT[name]);

		elseif type(DBM_SBT[addon]) == "table" then
			-- Translation System for Bars with Dynamic Content "Injection: xxxx"
            local newName = name;
			for index, value in pairs(DBM_SBT[addon]) do
				newName = string.gsub(newName, value[1], value[2]);
			end
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(newName);

		else
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(name);
		end

		getglobal(DBM.StatusBarData[name].frame:GetName().."BarTimer"):SetText(DBM.SecondsToTime(timer));
		if specialColor then
			getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetStatusBarColor(color.R, color.G, color.B, color.A);
		end
		
		if icon and DBM.Options.ShowIcon and getglobal(DBM.StatusBarData[name].frame:GetName().."Icon") then
			getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):SetTexture(""); --clear texture because we don't want to see the old icon if the new texture does not exist
			getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):SetTexture(icon);
			getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):Show();
		end
		
		DBM.StatusBarData[name].frame:Show();

	end
	if not noBroadcast then
		if icon then
			
			if specialColor then
				if repeatingTimer then
					DBM.AddSyncMessage("SIRPCSBT "..timer.." "..DBM.StatusBarData[name].repetitions.." "..addon.." "..string.format("%1.2f", color.R).."~"..string.format("%1.2f", color.G).."~"..string.format("%1.2f", color.B).."~"..string.format("%1.2f", color.A).." #"..icon.."# "..name);
				else
					DBM.AddSyncMessage("SICSBT "..timer.." "..addon.." "..string.format("%1.2f", color.R).."~"..string.format("%1.2f", color.G).."~"..string.format("%1.2f", color.B).."~"..string.format("%1.2f", color.A).." #"..icon.."# "..name);
				end
			else
				if repeatingTimer then
					DBM.AddSyncMessage("SIRPSBT "..timer.." "..DBM.StatusBarData[name].repetitions.." "..addon.." #"..icon.."# "..name);
				else
					DBM.AddSyncMessage("SISBT "..timer.." "..addon.." #"..icon.."# "..name);
				end
			end
		else
			if specialColor then
				if repeatingTimer then
					DBM.AddSyncMessage("STRPCSBT "..timer.." "..DBM.StatusBarData[name].repetitions.." "..addon.." "..string.format("%1.2f", color.R).."~"..string.format("%1.2f", color.G).."~"..string.format("%1.2f", color.B).."~"..string.format("%1.2f", color.A).." "..name);
				else
					DBM.AddSyncMessage("STCSBT "..timer.." "..addon.." "..string.format("%1.2f", color.R).."~"..string.format("%1.2f", color.G).."~"..string.format("%1.2f", color.B).."~"..string.format("%1.2f", color.A).." "..name);
				end
			else
				if repeatingTimer then
					DBM.AddSyncMessage("STRPSBT "..timer.." "..DBM.StatusBarData[name].repetitions.." "..addon.." "..name);
				else
					DBM.AddSyncMessage("STSBT "..timer.." "..addon.." "..name);
				end
			end
		end
	end	
end

function DBM.StartRepeatingStatusBarTimer(timer, name, icon, repetitions, noBroadcast, syncedBy, startedBy)	
	DBM.StartStatusBarTimer(timer, name, icon, noBroadcast, syncedBy, startedBy, true, repetitions)
end

function DBM.StartColoredStatusBarTimer(timer, name, icon, colorR, colorG, colorB, colorA, noBroadcast, syncedBy, startedBy)
	colorR = tonumber(colorR);
	colorG = tonumber(colorG);
	colorB = tonumber(colorB);
	colorA = tonumber(colorA) or DBM.Options.StatusBarColor.a;
	DBM.StartStatusBarTimer(timer, name, icon, noBroadcast, syncedBy, startedBy, nil, nil, colorR, colorG, colorB, colorA);
end

function DBM.StartRepeatingColoredStatusBarTimer(timer, name, icon, repetitions, colorR, colorG, colorB, colorA, noBroadcast, syncedBy, startedBy)
	colorR = tonumber(colorR);
	colorG = tonumber(colorG);
	colorB = tonumber(colorB);
	colorA = tonumber(colorA) or 1;
	DBM.StartStatusBarTimer(timer, name, icon, noBroadcast, syncedBy, startedBy, true, repetitions, colorR, colorG, colorB, colorA);
end

function DBM.EndRepeatingStatusBarTimer(name, noBroadcast, syncedBy)
	DBM.EndStatusBarTimer(name, noBroadcast, syncedBy, true)
end

function DBM.GetStatusBarTimerTimeLeft(name)
	if (not name) or (not DBM.StatusBarData[name]) then
		return false;
	end
	
	return (DBM.StatusBarData[name].timer - DBM.StatusBarData[name].elapsed), DBM.StatusBarData[name].elapsed, DBM.StatusBarData[name].syncedBy;
end


function DBM.EndStatusBarTimer(name, noBroadcast, syncedBy, endRepeating)
	if (not name) or (not DBM.StatusBarData[name]) then
		return;
	end
	
	if syncedBy and (not DBM.SyncInfo.Clients[syncedBy]) then
		return;
	end
	
	local timeLeft, elapsed = DBM.GetStatusBarTimerTimeLeft(name);
	if syncedBy and elapsed < 3 and (not (endRepeating or DBM.StatusBarData[name].isRepeating)) then --don't stop new timers on sync!
		return;
	end
	
	if syncedBy and DBM.StatusBarData[name].isRepeating 
		    and (not endRepeating) 
		    and ((not DBM.SyncInfo.Clients[syncedBy]) or (DBM.SyncInfo.Clients[syncedBy] 
		    and tonumber(DBM.SyncInfo.Clients[syncedBy]) < 1.60)) then
		return;
	end
	
	if DBM.StatusBarData[name].isRepeating and not endRepeating then
		DBM.StatusBarData[name].repetitions = DBM.StatusBarData[name].repetitions - 1
		if DBM.StatusBarData[name].repetitions <= 0 then
			DBM.EndStatusBarTimer(name, true, nil, true);
			return;
		else
			getglobal("DBM_StatusBarTimer"..DBM.StatusBarData[name].barId).repetitions = DBM.StatusBarData[name].repetitions;
			DBM.StatusBarData[name].elapsed = 0;
		end
	else
		if DBM.StatusBarData[name].frame then
			if DBM.StatusBarData[name].isFlashing then
				UIFrameFadeRemoveFrame(DBM.StatusBarData[name].frame);
				UIFrameFlashRemoveFrame(DBM.StatusBarData[name].frame);
				DBM.StatusBarData[name].frame:SetAlpha(1.0);
				DBM.StatusBarData[name].frame.flashTimer = nil;
				DBM.StatusBarData[name].frame.fadeInTime = nil;
				DBM.StatusBarData[name].frame.fadeOutTime = nil;
				DBM.StatusBarData[name].frame.flashDuration = nil;
				DBM.StatusBarData[name].frame.showWhenDone = nil;
				DBM.StatusBarData[name].frame.flashTimer = nil;
				DBM.StatusBarData[name].frame.flashMode = nil;
				DBM.StatusBarData[name].frame.flashInHoldTime = nil;
				DBM.StatusBarData[name].frame.flashOutHoldTime = nil;
				DBM.StatusBarData[name].frame.fadeInfo = nil;
				DBM.StatusBarData[name].isFlashing = nil;
			end
			DBM.StatusBarData[name].frame:Hide();
			DBM.StatusBarData[name].frame.isUsed = false;
			DBM.StatusBarData[name].frame.syncedBy = "UNKNOWN";
			DBM.StatusBarData[name].frame.startedBy = "UNKNOWN";
			DBM.StatusBarData[name].frame.usedBy = "";
			DBM.StatusBarData[name].frame.isRepeating = false;
			DBM.StatusBarData[name].frame.repetitions = 0;
			DBM.StatusBarData[name].frame.table = nil;
			DBM.StatusBarData[name].frame.specialColor = false;			
			getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
			getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):Hide();
			DBM.StatusBarData[name] = nil;
		end
		
		if not noBroadcast then
			if endRepeating then
				DBM.AddSyncMessage("ENDRPSBT "..name);
			else
				DBM.AddSyncMessage("ENDSBT "..name);
			end
		end
		
		DBMStatusBars_PullTogether();
	end
end

function DBM.UpdateStatusBarTimer(name, elapsed, timer, newName, newIcon, noBroadcast)
	if type(newIcon) == "boolean" and noBroadcast == nil then
		noBroadcast = newIcon;
		newIcon = nil;
	end
	
	if (not name) or (not DBM.StatusBarData[name]) or (not DBM.StatusBarData[name].frame) then
		return;
	end
	if newName and DBM.StatusBarData[newName] then
		return;
	end
	local addon;
	if not startedBy then
		_, _, addon = string.find(debugstack(2, 2, 2), "\\([%w%s]+).lua");
        if type(addon) == "string" then
            addon = string.gsub(addon, "LV", "");
        else
            _, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\([%w%s]+).lua");
            if type(addon) == "string" then
                addon = string.gsub(addon, "LV", "");
            else
                _, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\[%w%s]+\\([%w%s]+).lua");
                if type(addon) == "string" then
                    addon = string.gsub(addon, "LV", "");
                else
                    addon = "UNKNOWN";
                end
            end
        end
	else
		addon = startedBy;
	end
	addon = string.gsub(addon, " ", "");
	if addon == "ChatFrame" or addon == "DBM_API" or addon == "DBM_GUI" or addon == "DBM_StatusBars" or addon == "LootLink" then
		addon = "UNKNOWN";
	end

	if addon and addon ~= "UNKNOWN" and addon ~= "" then
		if DBM.AddOns[addon] and not DBM.AddOns[addon].Options.Enabled then
			return;
		end
	end
	if type(newName) == "string" then
		DBM.StatusBarData[name].frame.usedBy = newName;
		if type(DBM_SBT[newName]) == "string" then
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(DBM_SBT[newName]);

		elseif type(DBM_SBT[addon]) == "table" then
			-- Translation System for Bars with Dynamic Content "Injection: xxxx"
			for index, value in pairs(DBM_SBT[addon]) do
				newName = string.gsub(newName, value[1], value[2]);
			end
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(newName);

		else
			getglobal(DBM.StatusBarData[name].frame:GetName().."BarText"):SetText(newName);
		end
	end
	if tonumber(timer) then		
		getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetMinMaxValues(0, timer);			
		DBM.StatusBarData[name].timer = timer;
	else
		timer = DBM.StatusBarData[name].timer;
	end
	if tonumber(elapsed) then		
		getglobal(DBM.StatusBarData[name].frame:GetName().."BarTimer"):SetText(DBM.SecondsToTime(elapsed));
		getglobal(DBM.StatusBarData[name].frame:GetName().."Bar"):SetValue(tonumber(elapsed));
		DBM.StatusBarData[name].elapsed = tonumber(elapsed);
	end	
	if type(newIcon) == "string" and newIcon ~= "nil" then
		getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):SetTexture("");
		getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):SetTexture(newIcon);
		getglobal(DBM.StatusBarData[name].frame:GetName().."Icon"):Show();
		DBM.StatusBarData[name].icon = newIcon;
	end
	if type(newName) == "string" then
		DBM.StatusBarData[newName] = DBM.StatusBarData[name];
		DBM.StatusBarData[name] = nil;
		if GameTooltip:IsShown() and GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText() == (DBM_SBT[name] or name) then
			GameTooltip:Hide();
			GameTooltip:ClearLines();
			GameTooltip_SetDefaultAnchor(GameTooltip, UIParent);
			GameTooltip:SetText(getglobal("DBM_StatusBarTimer"..DBM.StatusBarData[newName].barId.."BarText"):GetText());
			GameTooltip:AddDoubleLine(DBM_SBT_TIMELEFT, DBM.SecondsToTime(tonumber(timer) - DBM.StatusBarData[newName].elapsed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			GameTooltip:AddDoubleLine(DBM_SBT_TIMEELAPSED, DBM.SecondsToTime(DBM.StatusBarData[newName].elapsed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			GameTooltip:AddDoubleLine(DBM_SBT_TOTALTIME, DBM.SecondsToTime(timer), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			if DBM.StatusBarData[newName].isRepeating and DBM.StatusBarData[newName].repetitions then
				if DBM.StatusBarData[newName].infinite then
					GameTooltip:AddDoubleLine(DBM_SBT_REPETITIONS, DBM_SBT_INFINITE, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
				else
					GameTooltip:AddDoubleLine(DBM_SBT_REPETITIONS, DBM.StatusBarData[newName].repetitions, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
				end
			end
			if DBM.StatusBarData[newName].startedBy and DBM.StatusBarData[newName].startedBy ~= "UNKNOWN" then
				GameTooltip:AddDoubleLine(DBM_SBT_BOSSMOD, DBM.StatusBarData[newName].startedBy, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			end
			if DBM.StatusBarData[newName].syncedBy and DBM.StatusBarData[newName].syncedBy ~= DBM_LOCAL then	
				GameTooltip:AddDoubleLine(DBM_SBT_STARTEDBY, DBM.StatusBarData[newName].syncedBy, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			else
				GameTooltip:AddDoubleLine(DBM_SBT_STARTEDBY, UnitName("player"), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			end
			GameTooltip:AddLine(DBM_SBT_RIGHTCLICK, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
			GameTooltip:Show();
		end
	end
	
	if not noBroadcast then
		DBM.AddSyncMessage("UPDISBT #"..tostring(name).."# "..tostring(elapsed).." "..tostring(timer).." #"..tostring(newIcon).."# "..tostring((newName or name)));
	end
end


---------------------
--Message Functions--
---------------------
function DBM.Announce(Warning, localWarning, addon)
	if Warning == DBM.LastWarning then
		if (GetTime() - DBM.LastWarningTime) < 1 then
			return;
		end
	end
	DBM.LastWarning = Warning;
	DBM.LastWarningTime = GetTime();
    
	if type(addon) ~= "string" then
		_, _, addon = string.find(debugstack(2, 2, 2), "\\([%w%s]+).lua");
		if type(addon) == "string" then
			addon = string.gsub(addon, "LV", "");
		else
			_, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\([%w%s]+).lua");  -- =[
			if type(addon) == "string" then
				addon = string.gsub(addon, "LV", "");
			else
				_, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\[%w%s]+\\([%w%s]+).lua");
				if type(addon) == "string" then
					addon = string.gsub(addon, "LV", "");
				else
					addon = "";
				end
			end
		end
	end

	
	if ((not DBM.AddOns[addon]) or DBM.AddOns[addon].Options.Announce) and DBM.Rank >= 1 and not localWarning then
		SendChatMessage(Warning, "RAID_WARNING");
	end
	if (DBM.Options.Gui ~= nil) then
		DBMWarningFrame:AddMessage(Warning, DBM.Options.Gui["SelfWarning_R"], DBM.Options.Gui["SelfWarning_G"], DBM.Options.Gui["SelfWarning_B"], DBM.Options.Gui["SelfWarning_Delay"]);
	else
		DBMWarningFrame:AddMessage(Warning);
	end
end


function DBM.AddMsg(msg, addon, noHookedChatFrame)
	if type(addon) ~= "string" then
		_, _, addon = string.find(debugstack(2, 2, 2), "\\([%w%s]+).lua");
		if type(addon) == "string" then
			addon = string.gsub(addon, "LV", "");
		else        
			_, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\([%w%s]+).lua");
			if type(addon) == "string" then
				addon = string.gsub(addon, "LV", "");
			else
				_, _, addon = string.find(debugstack(2, 2, 2), "\\[%w%s]+\\[%w%s]+\\([%w%s]+).lua");
				if type(addon) == "string" then
					addon = string.gsub(addon, "LV", "");
				else
					addon = "Deadly Boss Mods";
				end
			end
		end
	end
	if addon == "ChatFrame" or addon == "API" or addon == "GUI" or addon == "StatusBars" or addon == "LootLink" then
		addon = "Deadly Boss Mods";
	end
	if noHookedChatFrame and DBM.Hooks.oldChatFrame_AddMessage and DEFAULT_CHAT_FRAME then
		DBM.Hooks.oldChatFrame_AddMessage(ChatFrame1, "|cffff7d0a<|r|cffffd200"..addon.."|r|cffff7d0a>|r "..tostring(msg), 0.41, 0.8, 0.94);
	elseif DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage("|cffff7d0a<|r|cffffd200"..addon.."|r|cffff7d0a>|r "..tostring(msg), 0.41, 0.8, 0.94);
	end	
end

function DBM.SendHiddenWhisper(msg, target)
	if not msg or not target then return; end
	if msg == "" or target == "" then return; end
	DBM.HiddenWhisperMessages[string.gsub(msg, "%%", "")] = DBM.HiddenWhisperMessages[string.gsub(msg, "%%", "")] or {["targets"] = {}};
	DBM.HiddenWhisperMessages[string.gsub(msg, "%%", "")]["targets"][target] = 1;
	DBM.HideDNDAFKMessages[target] = 1;
	SendChatMessage(msg, "WHISPER", nil, target);
end

function DBM.InterceptWhisper(msg, player)
	if not DBM.InCombat 
	or not DBM.HideWhispers 
	or DBM.Raid[player] 
	or not DBM.Options.AutoRespond 
	or string.sub(msg, 1, 20) == "<Deadly Boss Mods>"
	or string.sub(msg, 1, 20) == "<Vendetta Boss Mods>"
	then
		return "SHOW";
	end
	if string.lower(msg) == "status" and DBM.Options.EnableStatusCommand then
		if (GetTime() - (DBM.StatusSpamProtection[player] or 0)) > 1 then
			DBM.StatusSpamProtection[player] = GetTime();
			local message = DBM_RAID_STATUS_WHISPER;
			message = string.gsub(message, "%%P", UnitName("player"));
			message = string.gsub(message, "%%B", tostring((DBM.Bosses[GetRealZoneText()][DBM.InCombat].realName or DBM.Bosses[GetRealZoneText()][DBM.InCombat].name)));
			message = string.gsub(message, "%%HP", DBM.GetBossHP(DBM.Bosses[GetRealZoneText()][DBM.InCombat].name));
			message = string.gsub(message, "%%ALIVE", DBM.GetNumRaidMembersAlive());
			message = string.gsub(message, "%%RAID", tostring(GetNumRaidMembers()));
			DBM.SendHiddenWhisper("<Deadly Boss Mods> "..message, player);
		end
		return "FORCE_HIDE";
	end
	if DBM.WhisperSpamProtection[player] and (GetTime() - DBM.WhisperSpamProtection[player]) < 60 then
		DBM.WhisperSpamProtection[player] = GetTime();
		
		if not DBM.WhispersDuringCombat[table.getn(DBM.WhispersDuringCombat)] or not (DBM.WhispersDuringCombat[table.getn(DBM.WhispersDuringCombat)].name == player and DBM.WhispersDuringCombat[table.getn(DBM.WhispersDuringCombat)].msg == msg and (time() - DBM.WhispersDuringCombat[table.getn(DBM.WhispersDuringCombat)].time) <= 2) then
			table.insert(DBM.WhispersDuringCombat, {["name"] = player, ["msg"] = msg, ["time"] = time(), ["hidden"] = not DBM.Options.ShowWhispersDuringCombat})
		end
		return "HIDE";
	end
	if DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][DBM.InCombat] then
		DBM.WhisperSpamProtection[player] = GetTime();
		local message = DBM.Options.BusyMessage;
		message = string.gsub(message, "%%P", UnitName("player"));
		message = string.gsub(message, "%%B", tostring((DBM.Bosses[GetRealZoneText()][DBM.InCombat].realName or DBM.Bosses[GetRealZoneText()][DBM.InCombat].name)));
		message = string.gsub(message, "%%HP", DBM.GetBossHP(DBM.Bosses[GetRealZoneText()][DBM.InCombat].name));
		message = string.gsub(message, "%%ALIVE", DBM.GetNumRaidMembersAlive());
		message = string.gsub(message, "%%RAID", tostring(GetNumRaidMembers()));
		if DBM.Options.EnableStatusCommand then
			message = message;
		end
		if DBM.Options.HideOutgoingInfoWhisper then		
			DBM.SendHiddenWhisper("<Deadly Boss Mods> "..message, player);
		else
			SendChatMessage("<Deadly Boss Mods> "..message, "WHISPER", nil, player);
		end
		table.insert(DBM.WhispersDuringCombat, {["name"] = player, ["msg"] = msg, ["time"] = time(), ["hidden"] = not DBM.Options.ShowWhispersDuringCombat})
		return "AUTO_RESPONDED";
	else
		return "SHOW";
	end
end

function DBM.EndHideWhispers(bossName)
	if not DBM.HideWhispers then
		return;
	end
	local playersToInform = {};
	local infoString = "";	
	local missedWhispersInfoShown = false;
	
	if table.getn(DBM.WhispersDuringCombat) >= 1 then
		
	end
	for index, value in pairs(DBM.WhispersDuringCombat) do
		if value.name and not playersToInform[value.name] then
			playersToInform[value.name] = true;
		end
		if value.hidden then
			if not missedWhispersInfoShown then
				DBM.AddMsg(DBM_MISSED_WHISPERS);
				missedWhispersInfoShown = true;
			end
			DBM.AddMsg(string.format(DBM_SHOW_MISSED_WHISPER, value.name, value.msg), date("%H:%M:%S", value.time));
		end
	end
	
	if DBM.InCombat and not bossName and DBM.Options.ShowCombatInformations then
		DBM.AddMsg(string.format(DBM_COMBAT_ENDED, DBM.SecondsToTime((GetTime() - DBM.CombatStartTime), true)));
	end
	
	if bossName then
		infoString = string.format(DBM_BOSS_DOWN, bossName, DBM.SecondsToTime((GetTime() - DBM.CombatStartTime), true))
	else
		infoString = string.format(DBM_COMBAT_ENDED, DBM.SecondsToTime((GetTime() - DBM.CombatStartTime), true));
	end
	
	for index, value in pairs(playersToInform) do		
		DBM.SendHiddenWhisper("<Deadly Boss Mods> "..infoString, index);
	end
	
	DBM.WhispersDuringCombat = {};
	DBM.HideWhispers = false;
end

--------------------
--Special Warnings--
--------------------
function DBM.AddSpecialWarning(text, shake, flash)
	if not DBM.Options.SpecialWarningsEnabled then
		return;
	end
	if type(text) ~= "string" then
		text = "";
	end
	if shake == nil then
		shake = true;
	end
	if flash == nil then
		flash = true;
	end
	if shake and DBM.Options.ShakeEnabled then
		DBM.ShakeScreen()
	end
	if flash and DBM.Options.FlashEnabled then
		DBM.IsFlashing = DBM.Options.FlashDuration * DBM.Options.NumFlashes;
		if DBM.Options.FlashColor == "red" then
			DBM.RedFlash = DBM.Options.FlashDuration;
			DBM.BlueFlash = false;
			LowHealthFrame:SetAlpha(0);
		elseif DBM.Options.FlashColor == "blue" then
			DBM.BlueFlash = DBM.Options.FlashDuration;
			DBM.RedFlash = false;
			OutOfControlFrame:SetAlpha(0);
		end
	end
	if text ~= "" then
		DBMSpecialWarningFrameText:SetTextColor(DBM.Options.SpecialWarningTextColor.r, DBM.Options.SpecialWarningTextColor.g, DBM.Options.SpecialWarningTextColor.b, DBM.Options.SpecialWarningTextColor.a);
		DBMSpecialWarningFrameText:SetText(text);
		DBM.SpecialWarningTextIsFadingIn = 1;
		DBMSpecialWarningFrame:SetAlpha(0);
		DBMSpecialWarningFrame:Show();
		DBM.SpecialWarningTextIsShown = DBM.Options.SpecialWarningTextDuration;
		DBM.SpecialWarningTextIsFading = false;
	end
end

function DBM.ShakeScreen()
	if not DBM.IsShaking then
		DBM.OldWorldFramePoints = {};
		for i = 1, WorldFrame:GetNumPoints() do
			local point, frame, relPoint, xOffset, yOffset = WorldFrame:GetPoint(i);
			DBM.OldWorldFramePoints[i] = {
				["point"] = point,
				["frame"] = frame,
				["relPoint"] = relPoint,
				["xOffset"] = xOffset,
				["yOffset"] = yOffset,
			}
		end
		DBM.IsShaking = DBM.Options.ShakeDuration;
	end
end

function DBM.SpecialWarningsOnUpdate(elapsed)
	if type(DBM.IsShaking) == "number" then
		DBM.IsShaking = DBM.IsShaking - elapsed;
		if DBM.IsShaking <= 0 then
			DBM.IsShaking = false;
			WorldFrame:ClearAllPoints();
			for index, value in pairs(DBM.OldWorldFramePoints) do
				WorldFrame:SetPoint(value.point, value.xOffset, value.yOffset);
			end
		else
			WorldFrame:ClearAllPoints();
			local moveBy;
			moveBy = math.random(-100, 100)/(101 - DBM.Options.ShakeIntensity);
			for index, value in pairs(DBM.OldWorldFramePoints) do
				WorldFrame:SetPoint(value.point, value.xOffset + moveBy, value.yOffset + moveBy);
			end
		end
	end
	if type(DBM.SpecialWarningTextIsShown) == "number" then
		DBM.SpecialWarningTextIsShown = DBM.SpecialWarningTextIsShown - elapsed;
		if DBM.SpecialWarningTextIsShown <= DBM.Options.SpecialWarningTextFadeTime then
			DBM.SpecialWarningTextIsShown = false;
			DBM.SpecialWarningTextIsFading = DBM.Options.SpecialWarningTextFadeTime;
		end
	end
	if type(DBM.SpecialWarningTextIsFading) == "number" then
		DBM.SpecialWarningTextIsFading = DBM.SpecialWarningTextIsFading - elapsed;		
		if DBM.SpecialWarningTextIsFading <= 0 then
			DBMSpecialWarningFrame:Hide();
			DBMSpecialWarningFrameText:SetText("");
			DBMSpecialWarningFrame:SetAlpha(1);
			DBM.SpecialWarningTextIsFading = false;
			DBM.SpecialWarningTextIsShown = false;
		else
			DBMSpecialWarningFrame:SetAlpha(DBMSpecialWarningFrame:GetAlpha() - 1/(DBM.SpecialWarningTextIsFading * GetFramerate()));
		end
	end
	if type(DBM.IsFlashing) == "number" then
		DBM.IsFlashing = DBM.IsFlashing - elapsed;		
		if DBM.IsFlashing <= 0 then
			DBM.IsFlashing = false;
			DBM.RedFlash = false;
			DBM.BlueFlash = false;
			OutOfControlFrame:Hide();
			OutOfControlFrame:SetAlpha(1);
			LowHealthFrame:Hide();
			LowHealthFrame:SetAlpha(1);
		end
	end
	if type(DBM.RedFlash) == "number" then
		DBM.RedFlash = DBM.RedFlash - elapsed;		
		if DBM.RedFlash <= 0 then
			DBM.RedFlash = DBM.Options.FlashDuration;
			LowHealthFrame:SetAlpha(0);
		elseif DBM.RedFlash >= (DBM.Options.FlashDuration*(2/3)) then
			if not LowHealthFrame:IsShown() then
				LowHealthFrame:SetAlpha(0);
				LowHealthFrame:Show();
			end
			LowHealthFrame:SetAlpha(LowHealthFrame:GetAlpha() + 1/((DBM.RedFlash - (DBM.Options.FlashDuration*(2/3))) * GetFramerate()));
		elseif DBM.RedFlash < (DBM.Options.FlashDuration/3) then
			LowHealthFrame:SetAlpha(LowHealthFrame:GetAlpha() - 1/(DBM.RedFlash * GetFramerate()));
		else
			LowHealthFrame:SetAlpha(1)
		end
	end
	if type(DBM.BlueFlash) == "number" then
		DBM.BlueFlash = DBM.BlueFlash - elapsed;		
		if DBM.BlueFlash <= 0 then
			DBM.BlueFlash = DBM.Options.FlashDuration;
			OutOfControlFrame:SetAlpha(0);
		elseif DBM.BlueFlash >= (DBM.Options.FlashDuration*(2/3)) then
			if not OutOfControlFrame:IsShown() then
				OutOfControlFrame:SetAlpha(0);
				OutOfControlFrame:Show();
			end
			OutOfControlFrame:SetAlpha(OutOfControlFrame:GetAlpha() + 1/((DBM.BlueFlash - (DBM.Options.FlashDuration*(2/3))) * GetFramerate()));
		elseif DBM.BlueFlash < (DBM.Options.FlashDuration/2) then
			OutOfControlFrame:SetAlpha(OutOfControlFrame:GetAlpha() - 1/(DBM.BlueFlash * GetFramerate()));
		else
			OutOfControlFrame:SetAlpha(1);
		end
	end
	if type(DBM.SpecialWarningTextIsFadingIn) == "number" then
		DBM.SpecialWarningTextIsFadingIn = DBM.SpecialWarningTextIsFadingIn - elapsed;
		if DBM.SpecialWarningTextIsFadingIn <= 0 then
			DBM.SpecialWarningTextIsFadingIn = false;
			DBMSpecialWarningFrame:SetAlpha(1);
		else
			DBMSpecialWarningFrame:SetAlpha(DBMSpecialWarningFrame:GetAlpha() + 1/(DBM.SpecialWarningTextIsFadingIn * GetFramerate()));
		end
	end
end

function DBM.HasAggro(mob)
	if DBM.Options.CharSettings[UnitName("player")].AggroSound then
		PlaySoundFile("Sound\\Spells\\PVPFlagTaken.wav");
	end
	
	if DBM.Options.CharSettings[UnitName("player")].AggroSpecialWarning then
		DBM.AddSpecialWarning(DBM_AGGRO_FROM..mob, DBM.Options.CharSettings[UnitName("player")].AggroShake, DBM.Options.CharSettings[UnitName("player")].AggroFlash)
	else
		DBM.AddSpecialWarning("", DBM.Options.CharSettings[UnitName("player")].AggroShake, DBM.Options.CharSettings[UnitName("player")].AggroFlash)
	end
	
	if DBM.Options.CharSettings[UnitName("player")].AggroLocalWarning then
		if (DBM.Options.Gui ~= nil) then
			DBMWarningFrame:AddMessage(DBM_AGGRO_FROM..mob, DBM.Options.Gui["SelfWarning_R"], DBM.Options.Gui["SelfWarning_G"], DBM.Options.Gui["SelfWarning_B"], DBM.Options.Gui["SelfWarning_Delay"]);
		else
			DBMWarningFrame:AddMessage(DBM_AGGRO_FROM..mob);
		end
	end
end

-----------------------------
--Synchronization Functions--
-----------------------------

function DBM.AddSyncMessage(msg, noSpamProt)
	if not DBM.Options.EnableSync and not string.find(msg, "VER") then
		return;
	end
	local _, instanceType = IsInInstance();
	
	if type(msg) == "string" and (not DBM.SpamProtection[msg]) then		
		if noSpamProt then
			if instanceType == "pvp" then
				SendAddonMessage("LVBM NSP", msg, "BATTLEGROUND");
			else
				SendAddonMessage("LVBM NSP", msg, "RAID");
			end
		else
			if instanceType == "pvp" then
				SendAddonMessage("LVBM", msg, "BATTLEGROUND");
			else
				SendAddonMessage("LVBM", msg, "RAID");
			end
			DBM.SpamProtection[msg] = 1.5;
		end
	end
end

function DBM.OnSyncMessage(msg, player, noSpamProt)
	if not DBM.Options.EnableSync and not (string.find(msg, "VER") or string.find(msg, "ENDALL")) then
		return;
	end
	
	
	if not DBM.Options.AllowSyncFromOldVersions and not (string.find(msg, "VER") or string.find(msg, "ENDALL")) then
		if (tonumber(DBM.SyncInfo.Clients[player]) or 0) < (tonumber(DBM.Version) or 0) then
			-- DBM.AddMsg("Recived Old Sync paket, dropped! ("..player.." - "..msg..")");
			return;
		end
	end
	
	if type(msg) == "string" and msg ~= "" and msg ~= " " and (not DBM.SpamProtection[msg]) then		
		if not noSpamProt then
			DBM.SpamProtection[msg] = 1.5;
		end	
		
		local name, color, colorR, colorG, colorB, colorA, icon;
		local args = {};
		for value in string.gmatch(msg, "([^%s]+)") do
			table.insert(args, value);
		end
		
		if not DBM.SyncInfo.Clients[player] then
			DBM.SyncInfo.Clients[player] = "2.10";
		end

		if args[1] == "STSBT" then
			_, _, _, _, _, name = string.find(msg, "([^%s]+) ([%d%.]+) ([^%s]+) (.*)");
			if not name then
				return;
			end
			if tonumber(args[2]) and args[3] and (not DBM.GetStatusBarTimerTimeLeft(name)) then
				DBM.StartStatusBarTimer(tonumber(args[2]), name, nil, true, player, args[3]);
			end
		elseif args[1] == "SISBT" then
			_, _, _, _, _, icon, name = string.find(msg, "([^%s]+) ([%d%.]+) ([^%s]+) #(.+)# (.+)");
			if not name or not icon then
				return;
			end
			if tonumber(args[2]) and args[3] and (not DBM.GetStatusBarTimerTimeLeft(name)) then
				DBM.StartStatusBarTimer(tonumber(args[2]), name, icon, true, player, args[3]);
			end
		elseif args[1] == "ENDSBT" then
			_, _, _, name = string.find(msg, "([^%s]+) (.*)");
			if name then
				DBM.EndStatusBarTimer(name, true, player);
			end
		elseif args[1] == "STRPSBT" then
			_, _, _, _, _, _, name = string.find(msg, "([^%s]+) ([%d%.]+) ([%d%.]+) ([^%s]+) (.*)");
			if not name then
				return;
			end
			if tonumber(args[2]) and tonumber(args[3]) and args[4] and (not DBM.GetStatusBarTimerTimeLeft(name)) then
				DBM.StartRepeatingStatusBarTimer(tonumber(args[2]), name, nil, tonumber(args[3]), true, player, args[4]);
			end
		elseif args[1] == "SIRPSBT" then
			_, _, _, _, _, _, icon, name = string.find(msg, "([^%s]+) ([%d%.]+) ([%d%.]+) ([^%s]+) #(.+)# (.*)");
			if not name or not icon then
				return;
			end
			if tonumber(args[2]) and tonumber(args[3]) and args[4] and (not DBM.GetStatusBarTimerTimeLeft(name)) then
				DBM.StartRepeatingStatusBarTimer(tonumber(args[2]), name, icon, tonumber(args[3]), true, player, args[4]);
			end
		elseif args[1] == "ENDRPSBT" then
			_, _, _, name = string.find(msg, "([^%s]+) (.*)");
			if name then
				DBM.EndRepeatingStatusBarTimer(name, true, player);
			end
		elseif args[1] == "STCSBT" then
			_, _, _, _, _, color, name = string.find(msg, "([^%s]+) ([%d%.]+) ([^%s]+) ([^%s]+) (.*)");
			if not name or not color then
				return;
			end
			_, _, colorR, colorG, colorB, colorA = string.find(color, "([%d%.]+)~([%d%.]+)~([%d%.]+)~([%d%.]+)");
			
			if tonumber(args[2]) and args[3] and (not DBM.GetStatusBarTimerTimeLeft(name)) and tonumber(colorR) and tonumber(colorG) and tonumber(colorB) and tonumber(colorA) then
				DBM.StartColoredStatusBarTimer(tonumber(args[2]), name, nil, tonumber(colorR), tonumber(colorG), tonumber(colorB), tonumber(colorA), true, player, args[3]);
			end
		elseif args[1] == "SICSBT" then
			_, _, _, _, _, color, icon, name = string.find(msg, "([^%s]+) ([%d%.]+) ([^%s]+) ([^%s]+) #(.+)# (.*)");
			if not name or not color or not icon then
				return;
			end
			_, _, colorR, colorG, colorB, colorA = string.find(color, "([%d%.]+)~([%d%.]+)~([%d%.]+)~([%d%.]+)");
			
			if tonumber(args[2]) and args[3] and (not DBM.GetStatusBarTimerTimeLeft(name)) and tonumber(colorR) and tonumber(colorG) and tonumber(colorB) and tonumber(colorA) then
				DBM.StartColoredStatusBarTimer(tonumber(args[2]), name, icon, tonumber(colorR), tonumber(colorG), tonumber(colorB), tonumber(colorA), true, player, args[3]);
			end
		elseif args[1] == "STRPCSBT" then
			_, _, _, _, _, _, color, name = string.find(msg, "([^%s]+) ([%d%.]+) ([%d%.]+) ([^%s]+) ([^%s]+) (.*)");
			if not name or not color then
				return;
			end
			_, _, colorR, colorG, colorB, colorA = string.find(color, "([%d%.]+)~([%d%.]+)~([%d%.]+)~([%d%.]+)");
			
			if tonumber(args[2]) and tonumber(args[3]) and args[4] and (not DBM.GetStatusBarTimerTimeLeft(name)) and tonumber(colorR) and tonumber(colorG) and tonumber(colorB) and tonumber(colorA) then
				DBM.StartRepeatingColoredStatusBarTimer(tonumber(args[2]), name, nil, tonumber(args[3]), tonumber(colorR), tonumber(colorG), tonumber(colorB), tonumber(colorA), true, player, args[4]);
			end
		elseif args[1] == "SIRPCSBT" then
			_, _, _, _, _, _, color, icon, name = string.find(msg, "([^%s]+) ([%d%.]+) ([%d%.]+) ([^%s]+) ([^%s]+) #(.+)# (.*)");
			if not name or not color or not icon then
				return;
			end
			_, _, colorR, colorG, colorB, colorA = string.find(color, "([%d%.]+)~([%d%.]+)~([%d%.]+)~([%d%.]+)");
			
			if tonumber(args[2]) and tonumber(args[3]) and args[4] and (not DBM.GetStatusBarTimerTimeLeft(name)) and tonumber(colorR) and tonumber(colorG) and tonumber(colorB) and tonumber(colorA) then
				DBM.StartRepeatingColoredStatusBarTimer(tonumber(args[2]), name, icon, tonumber(args[3]), tonumber(colorR), tonumber(colorG), tonumber(colorB), tonumber(colorA), true, player, args[4]);
			end
		elseif args[1] == "UPDISBT" then
			local elapsed, timer, newName;
			_, _, name, elapsed, timer, newIcon, newName = string.find(msg, "UPDISBT #(.+)# (%w+) (%w+) #(.+)# (.*)");
			if newName == name then
				newName = nil;
			end
			if newIcon == "nil" then
				newIcon = nil;
			end
			DBM.UpdateStatusBarTimer(name, tonumber(elapsed), tonumber(timer), newName, newIcon, true);
		elseif args[1] == "REQ" then
			if args[2] == "VER" and tonumber(args[3]) then
				if player ~= UnitName("player") then
					SendChatMessage("LVBM VER "..DBM.Version, "WHISPER", nil, player);
				end
				DBM.OnSyncMessage("VER "..args[3], player, true);
			elseif args[2] == "VER" then
				DBM.AddSyncMessage("VER "..DBM.Version, true);				
			end
		elseif args[1] == "SC" then
			if not DBM.InCombat then
				DBM.CombatStart(args[3], args[2], true, player);
			end
		elseif args[1] == "EC" then
			if DBM.InCombat and DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][args[2]] then
				if type(DBM.Bosses[GetRealZoneText()][args[2]].killName) == "table" then
					for index, value in pairs(DBM.Bosses[GetRealZoneText()][args[2]].killName) do
						if value.notKilled then
							return;
						end
					end
					DBM.CombatEnd((DBM.Bosses[GetRealZoneText()][args[2]].realName or DBM.Bosses[GetRealZoneText()][args[2]].name), true);
				else
					DBM.CombatEnd((DBM.Bosses[GetRealZoneText()][args[2]].killName or DBM.Bosses[GetRealZoneText()][args[2]].name), true);
				end
			end
		elseif args[1] == "ECS" then
			if DBM.InCombat and DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][args[2]] and type(DBM.Bosses[GetRealZoneText()][args[2]].killName) == "table" and DBM.Bosses[GetRealZoneText()][args[2]].killName[args[3]] then
				DBM.CombatEnd(nil, true, DBM.Bosses[GetRealZoneText()][args[2]].killName[args[3]].name);
			end
		elseif args[1] == "VER" and tonumber(args[2]) then
			DBM.SyncInfo.Clients[player] = args[2];
			if tonumber(args[2]) > tonumber(DBM.Version) then
				local player1, player2;
				player1 = player;
				for index, value in pairs(DBM.SyncInfo.Clients) do
					if (value == args[2]) and (index ~= player1) then
						player2 = index;
						break;
					end
				end
				if player1 and player2 and (not DBM.UpdateDialogShown) then
					DBM.UpdateDialogShown = args[2];
					DBMUpdateDialogText:SetText(string.format(DBM_UPDATE_DIALOG, player1, player2, args[2]));
					DBMUpdateDialog:Show();
				end
			end
		elseif args[1] == "ENDALL" then
			for i = 1, GetNumRaidMembers() do
				local name, rank;
				name, rank = GetRaidRosterInfo(i);
				if (name == player) and (rank >= 1) then
					DBM.AddMsg(string.format(DBM_REC_STOP_ALL, player));
					for index, value in pairs(DBM.AddOns) do
						if type(value.OnStop) == "function" then
							if value.APIVersion and value.APIVersion >= 2.11 then
								value:OnStop();
							else
								value.OnStop();
							end
						end
					end
					DBM.ScheduleData = {};
					DBM.TimerData	= {};
					for index, value in pairs(DBM.StatusBarData) do
						if index then
							if not (DBM.StatusBarData[index].syncedBy == DBM_LOCAL and not DBM.StatusBarData[index].startedBy) then
								DBM.EndRepeatingStatusBarTimer(index);
							end
						end
					end
				end
			end
		end
	end
end

------------------
--Buff Functions--
------------------
function DBM.GetBuff(unitID, buff)
	if not UnitExists(unitID) then
		return nil;
	end
	local i = 1;

	DBMTooltipTextLeft1:SetText("DBM Buff Tooltip");
	while (DBMTooltipTextLeft1:GetText() and DBMTooltipTextLeft1:GetText() ~= "") do
		DBMTooltipTextLeft1:SetText("");
		DBMTooltip:SetUnitBuff(unitID, i);
		if DBMTooltipTextLeft1:GetText() and string.lower(buff) == string.lower(DBMTooltipTextLeft1:GetText()) then
			return i;
		end
		i = i + 1;
	end	
end

function DBM.GetDebuff(unitID, buff)
	if not UnitExists(unitID) then
		return nil;
	end
	local i = 1;
	
	DBMTooltipTextLeft1:SetText("DBM Buff Tooltip");
	while (DBMTooltipTextLeft1:GetText() and DBMTooltipTextLeft1:GetText() ~= "") do
		DBMTooltipTextLeft1:SetText("");	
		DBMTooltip:SetUnitDebuff(unitID, i);
		if DBMTooltipTextLeft1:GetText() and string.lower(buff) == string.lower(DBMTooltipTextLeft1:GetText()) then
			return i;
		end
		i = i + 1;
	end	
end

-- -------------- --
-- Icon Functions --
-- -------------- --

function DBM.SetIconByName(name, icon)
	if (icon == nil or tonumber(icon) < 1 or tonumber(icon) > 8) then
		icon = 8;
	else 	icon = tonumber(icon);
	end
	for i=1, GetNumRaidMembers() do
		if (UnitName("raid"..i) == name) then
			SetRaidTargetIcon("raid"..i, icon);
			break;
		end
	end
end

function DBM.ClearIconByName(name)
	for i=1, GetNumRaidMembers() do
		if (UnitName("raid"..i) == name) then
			SetRaidTargetIcon("raid"..i, 0);
			break;
		end
	end
end


--------------------
--Combat Functions--
--------------------
function DBM.DetectCombat(name)
	local unitID
	if UnitName("target") == name and not UnitIsPlayer("target") then
		unitID = "target";
	else
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == name and not UnitIsPlayer("raid"..i.."target") then
				unitID = "raid"..i.."target";
				break;
			end
		end
	end
	if unitID and UnitAffectingCombat(unitID) then
		return unitID;		
	else
		return nil;		
	end
end

function DBM.UnitExists(name)
	if type(name) ~= "string" and type(name) ~= "table" then
		return false;
	end	
	
	if DBM.GetBuff("player", DBM_REDEMPTION) or ((GetTime() - DBM.LastBloodrage) < 7.5) then		
		return false;
	end	
	if DBM.GetBuff("player", DBM_FEIGNDEATH) or ((GetTime() - DBM.LastFeignDeath) < 20) then
		return false;
	end	
	if (GetTime() - DBM.LastBloodrage) < 7.5 then
		return false;
	end
	if type(name) == "table" then
		local unitTable = {};
		for index, value in pairs(name) do
			unitTable[value] = false; --it would look much better if I would call DBM.UnitExists(value) here, but I want to iterate only one time over the raid's targets...
		end
		if unitTable[UnitName("target")] ~= nil and not UnitIsPlayer("target") then
			unitTable[UnitName("target")] = true;
		end
		for i = 1, GetNumRaidMembers() do
			local raidTarget = UnitName("raid"..i.."target");
			if raidTarget ~= nil and unitTable[raidTarget] ~= nil and not UnitIsPlayer("raid"..i.."target") then
				unitTable[raidTarget] = true;
			end
		end
		return unitTable;
	else	
		if UnitName("target") == name and not UnitIsPlayer("target") then
			return true;
		end
		
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == name and not UnitIsPlayer("raid"..i.."target") then
				return true;
			end
		end
		return false;
	end
end

function DBM.CombatStart(bossID, delay, noBroadcast, syncedBy)
	if DBM.Bosses[GetRealZoneText()] and DBM.Bosses[GetRealZoneText()][bossID] and not DBM.InCombat then
		for index, value in pairs(DBM.Bosses[GetRealZoneText()][bossID].BossMods) do
			if DBM.AddOns[value] then
				DBM.AddOns[value].InCombat = true;
				if type(DBM.AddOns[value].OnCombatStart) == "function" then
					if DBM.AddOns[value].APIVersion and DBM.AddOns[value].APIVersion >= 2.11 then
						DBM.AddOns[value]:OnCombatStart(delay);
					else
						DBM.AddOns[value].OnCombatStart(delay);
					end
				end				
			end
		end
		DBM.InCombat = bossID;
		DBM.HideWhispers = true;
		DBM.CombatStartTime = GetTime() - delay;

		if( DBM.Options.ShowCombatInformations ) then
			DBM.AddMsg(string.format(DBM_BOSS_ENGAGED, (DBM.Bosses[GetRealZoneText()][bossID].realName or DBM.Bosses[GetRealZoneText()][bossID].name)));
			if type(syncedBy) == "string" and DBM.Options.ShowPullSyncInfo then
				DBM.AddMsg(string.format(DBM_BOSS_SYNCED_BY, syncedBy));
			end
		end

		if not noBroadcast then
			DBM.AddSyncMessage("SC "..tostring(delay).." "..bossID);
		end
	end
end

function DBM.CombatEnd(bossName, noBroadcast, subBossName)
	if not subBossName then
		for index, value in pairs(DBM.AddOns) do
			if value.InCombat then
				value.InCombat = false;
				if type(value.OnCombatEnd) == "function" then
					if value.APIVersion and value.APIVersion >= 2.11 then
						value:OnCombatEnd();
					else
						value.OnCombatEnd();
					end
				end
				DBM.UnSchedule("DBM.AddOns."..index..".OnEvent");
				DBM.UnSchedule("DBM.AddOns."..index..":OnEvent");
				DBM.UnSchedule("DBM.AddOns[\""..index.."\"]:OnEvent");
				for index2, value2 in pairs(DBM.StatusBarData) do
					if value2 and value2.bossModID then
						if value2.bossModID == index then
							DBM.EndRepeatingStatusBarTimer(index2, true);
						end
					end
				end
			end
		end
		for index, value in pairs(DBM.Bosses) do
			for index2, value2 in pairs(value) do
				if type(value2.killName) == "table" then
					for index3, value3 in pairs(value2.killName) do
						value3.notKilled = true;
					end
				end
			end
		end
	end
	
	if bossName or subBossName then
		if DBM.Bosses[GetRealZoneText()] then
			if subBossName then
				for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
					if type(value.killName) == "table" then
						for index2, value2 in pairs(value.killName) do
							if value2.name == subBossName then
								value2.notKilled = false;
								if not noBroadcast then
									DBM.AddSyncMessage("ECS "..index.." "..index2);
								end
							end
						end
					end
				end
			else
				if not noBroadcast then
					for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
						local killName
						if type(value.killName) == "string" then
							killName = value.killName
						end
						if (value.killName or value.name) == bossName or value.realName == bossName then
							DBM.AddSyncMessage("EC "..index);
						end
					end
				end
			end
		end
		if bossName and DBM.Options.ShowCombatInformations and DBM.InCombat then
			DBM.AddMsg(string.format(DBM_BOSS_DOWN, bossName, DBM.SecondsToTime((GetTime() - DBM.CombatStartTime), true)));
		end
		if subBossName and DBM.Bosses[GetRealZoneText()] then
			local allBossesDown = true;
			for index, value in pairs(DBM.Bosses[GetRealZoneText()]) do
				if type(value.killName) == "table" then					
					for index2, value2 in pairs(value.killName) do
						if value2.name == subBossName then
							for index3, value3 in pairs(DBM.Bosses[GetRealZoneText()][index].killName) do
								if value3.notKilled then
									allBossesDown = false;
								end
							end
							if allBossesDown then
								DBM.CombatEnd(DBM.Bosses[GetRealZoneText()][index].realName or DBM.Bosses[GetRealZoneText()][index].name);
							end
							break;
						end
					end
				end
			end
		end
	end
	
	if not subBossName then
		DBM.EndHideWhispers(bossName);
		DBM.InCombat = false;
	end
end

function DBM.CheckForCombatEnd()
	if not UnitAffectingCombat("player") and not UnitIsDead("player") then
		DBM.CombatEnd();
	end
end

function DBM.GetBossHP(name)
	local hitpoints;
	
	if name == DBM_FOURHORSEMEN_THANE and DBM.AddOns.FourHorsemen and DBM.AddOns.FourHorsemen.InCombat then
		return "Mograine "..DBM.AddOns.FourHorsemen[DBM_FOURHORSEMEN_MOGRAINE].."%%, Thane Korth'azz "..DBM.AddOns.FourHorsemen[DBM_FOURHORSEMEN_THANE].."%%, Blaumeux "..DBM.AddOns.FourHorsemen[DBM_FOURHORSEMEN_LADY].."%%, Zeliek "..DBM.AddOns.FourHorsemen[DBM_FOURHORSEMEN_ZELIEK].."%%";
	end
	
	for i = 1, GetNumRaidMembers() do
		if UnitName("raid"..i.."target") == name and not UnitIsPlayer("raid"..i.."target") then
			hitpoints = tostring(math.floor((UnitHealth("raid"..i.."target")/UnitHealthMax("raid"..i.."target")) * 100)).."%%";
			break;
		end
	end
	if not hitpoints then
		if name == DBM_THADDIUS_NAME then
			hitpoints = string.format(DBM_PHASE, 1);
		elseif name == DBM_GOTH_NAME and DBM.AddOns.Gothik then
			hitpoints = string.format(DBM_WAVE, DBM.AddOns.Gothik.Wave);
		elseif name == DBM_NTP_NAME and DBM.AddOns.Noth then
			hitpoints = string.format(DBM_BALCONY_PHASE, DBM.AddOns.Noth.Phase);
		elseif name == DBM_KELTHUZAD_NAME and DBM.AddOns.Kelthuzad and DBM.GetStatusBarTimerTimeLeft("Phase 2") then
			local timeLeft = DBM.GetStatusBarTimerTimeLeft("Phase 2");
			hitpoints = string.format(DBM_PHASE, 1)..", "..DBM.SecondsToTime(timeLeft);
		end
	end
	if not hitpoints then
		hitpoints = "HP unknown";
	end
	return hitpoints;
end

function DBM.GetNumRaidMembersAlive()
	local alive = 0;
	for i = 1, GetNumRaidMembers() do
		if not UnitIsDeadOrGhost("raid"..i) then
			alive = alive + 1;
		end
	end
	return tostring(alive);
end

-----------------------
--Patchnote Functions--
-----------------------
function DBM.OnPatchnoteMessage(msg, longMsg)
	if longMsg then
		DBM.LongMsg = DBM.LongMsg..msg;
	else
		msg = DBM.LongMsg..msg;
		DBM.LongMsg = "";
		if DBMPatchnoteFrame:IsShown() then
			DBMPatchnoteFrameMessageFrame:AddMessage(msg);
			for i = 1, DBMPatchnoteFrameMessageFrame:GetNumMessages() do
				DBMPatchnoteFrameMessageFrame:ScrollUp();
			end
		end
	end
end

function DBM.AddPatchnoteMessage(msg, target, longMsg)
	if type(target) ~= "string" or type(msg) ~= "string" then
		return;
	end
	if longMsg == nil then
		local longMsg = false;
	end
	if string.len(msg) > 240 then		
		DBM.AddPatchnoteMessage(string.sub(msg, 1, 240), target, true);
		msg = string.sub(msg, 241);
		DBM.AddPatchnoteMessage(msg, target);
	else
		table.insert(DBM.MsgQueue, {["msg"] = msg, ["target"] = target, ["longMsg"] = longMsg});
	end
end

function DBM.SendPatchnotes(target, version, lang)
	if type(target) ~= "string" or not version or not lang then
		return;
	end
	version = string.gsub(version, ",", ".");
	if tonumber(version) >= tonumber(DBM.Version) then
		DBM.AddPatchnoteMessage("I don't have a newer version than you.", target);
		return;
	end
	
	if not DBM_PN[lang] then
		DBM.AddPatchnoteMessage("Patchnotes in your language are not available. Sending english notes.", target);
		lang = "en";
	end
	local notesToSend = {};
	
	version = string.gsub(version, "%.", "");
	version = tonumber(version);
	for index, value in pairs(DBM_PN[lang]) do
		table.insert(notesToSend, {["ver"] = index, ["notes"] = value});
	end
	table.sort(notesToSend, function(v1, v2) return v1.ver > v2.ver; end);
	for index, value in ipairs(notesToSend) do
		if value.ver > version then
			for index2, value2 in ipairs(notesToSend[index].notes) do
				DBM.AddPatchnoteMessage(value2, target);
			end
		end
	end	
end

function DBM.RequestPatchnotes(version)
	local clientTable = {};
	for index, value in pairs(DBM.SyncInfo.Clients) do
		if value == version then
			table.insert(clientTable, index);
		end
	end
	if not clientTable[1] then return; end
	local player = clientTable[random(1, table.getn(clientTable))];
	DBM.OnPatchnoteMessage(string.format(DBM_REQ_PATCHNOTES, player));
	

	SendChatMessage("LVPNREQ "..DBM.Version.." "..string.sub(GetLocale(), 1, 2), "WHISPER", nil, player);	
end


---------------------------------
--Register/Unregister Functions--
---------------------------------
function DBM.Register()
	for index, value in pairs(DBM.AddOns) do
		for index2, value2 in pairs(value.Events) do
			DBM_API:RegisterEvent(index2);
		end
	end	
end

function DBM.Unregister()
	DBM_API:UnregisterAllEvents();
end



----------------------
-- Boss Mod Methods --
----------------------

function DBM:NewBossMod(modID, modName, modDescription, modInstance, modGUITab, modGUISort)
	if type(modID) ~= "string" then
		DBM.AddMsg(DBM_ERROR_INVALID_MODID);
		return;
	end
	
	if string.find(modID, " ") then
		DBM.AddMsg("The mod's ID must not contain spaces!", "ERROR");
	end
	
	if DBM.AddOns[modID] then
		DBM.AddMsg(string.format(DBM_ERROR_MODID_EXISTS, modID));
		return;
	end
	
	DBM.AddOns[modID] = setmetatable({
		ModID		= modID,
		Name 		= modName,		
		Description	= modDescription,
		Instance	= modInstance,
		GUITab		= modGUITab,
		Sort		= modGUISort,
		Events		= {},
		Options		= {},
		APIVersion	= tonumber(DBM.Version) or 2.11,
	},
	{
		__index = DBM.BossModMetatable
	});
	
	return DBM.AddOns[modID];
end

function DBM:GetMod(modID)
	return DBM.AddOns[modID];
end

DBM.BossModMetatable = {};

function DBM.BossModMetatable:AddOption(optionName, optionDefault, optionGUIText, optionGUIFunc)
	if type(optionName) ~= "string" or optionDefault == nil then
		return;
	end

	self.Options[optionName] = optionDefault;
	
	if optionGUIText then
		if not self.DropdownMenu then
			self.DropdownMenu = {};
		end
		table.insert(self.DropdownMenu, {
			variable	= "DBM.AddOns[\""..self.ModID.."\"].Options[\""..optionName.."\"]",
			text		= optionGUIText,
			func		= optionGUIFunc or loadstring("DBM.AddOns[\""..self.ModID.."\"].Options[\""..optionName.."\"] = not DBM.AddOns[\""..self.ModID.."\"].Options[\""..optionName.."\"]");
		})
	end
end

function DBM.BossModMetatable:RegisterCombat(startMethod, delayOrTrigger, bossName, realName, killName, minCombatTime)
	if not DBM.Bosses then
		DBM.Bosses = {};
	end
	
	
	if not DBM.Bosses[self.Instance] then
		DBM.Bosses[self.Instance] = {};
	end
	if DBM.Bosses[self.Instance][self.ModID] then
		self:AddMsg(DBM_COMBAT_TABLE_WARNING);
	end
	
	DBM.Bosses[self.Instance][self.ModID] = {
		startMethod		= startMethod,
		name			= bossName or self.Name,
		realName		= realName,
		minCombatTime	= minCombatTime,
		BossMods = {
			self.ModID,
		}
	};
	
	
	if type(delayOrTrigger) == "table" then
		DBM.Bosses[self.Instance][self.ModID].startTrigger = {};
		for index, value in pairs(delayOrTrigger) do
			DBM.Bosses[self.Instance][self.ModID].startTrigger[value] = true;
		end
	elseif type(delayOrTrigger) == "string" then
		DBM.Bosses[self.Instance][self.ModID].startTrigger = {
			[delayOrTrigger] = true;
		};
	elseif type(delayOrTrigger) == "number" then
		DBM.Bosses[self.Instance][self.ModID].delay = delayOrTrigger;
	else
		DBM.Bosses[self.Instance][self.ModID].delay = 5;
	end
	
	if type(killName) == "string" then
		DBM.Bosses[self.Instance][self.ModID].killName = killName;
	elseif type(killName) == "table" then
		DBM.Bosses[self.Instance][self.ModID].killName = {};
		local i = 1;
		for index, value in pairs(killName) do
			DBM.Bosses[self.Instance][self.ModID].killName[self.ModID..i] = {
				name = value,
				notKilled = true,
			};
			i = i + 1;
		end
	end
end

function DBM.BossModMetatable:RegisterEvents(...)
	if not self.Events then self.Events = {}; end

--[[	-------------------------------------------------------------------not work in 1.12	
	for i = 1, select("#", ...) do
		self.Events[select(i, ...)] = true;
		DBM_API:RegisterEvent(select(i, ...));
	end]]
	return;
end


function DBM.BossModMetatable:AddMsg(msg, prefix)
	DBM.AddMsg(msg, prefix or self.Name);
end

function DBM.BossModMetatable:Announce(msg, noBroadcast)
	DBM.Announce(msg, noBroadcast, self.ModID);
end

function DBM.BossModMetatable:AddSpecialWarning(text, flash, shake)
	DBM.AddSpecialWarning(text, shake, flash);
end

function DBM.BossModMetatable:SendHiddenWhisper(msg, player)
	DBM.SendHiddenWhisper(msg, player);
end

function DBM.BossModMetatable:Schedule(timer, func, argument1, argument2)
	DBM.Schedule(timer, func, argument1, argument2);
end

function DBM.BossModMetatable:ScheduleSelf(timer, argument1, argument2)
	DBM.Schedule(timer, "DBM.AddOns[\""..self.ModID.."\"]:OnEvent", argument1, argument2);
end

function DBM.BossModMetatable:UnSchedule(func, argument1, argument2)
	DBM.UnSchedule(func, argument1, argument2)
end

function DBM.BossModMetatable:UnScheduleSelf(argument1, argument2)
	DBM.UnSchedule("DBM.AddOns[\""..self.ModID.."\"]:OnEvent", argument1, argument2)
end


function DBM.BossModMetatable:StartStatusBarTimer(timer, name, icon, noBroadcast, repetitions, colorR, colorG, colorB, colorA)
	local repeatingTimer;
	if repetitions then
		repeatingTimer = true;
	end
	colorR = tonumber(colorR);
	colorG = tonumber(colorG);
	colorB = tonumber(colorB);
	colorA = tonumber(colorA);
	
	DBM.StartStatusBarTimer(timer, name, icon, noBroadcast, nil, self.ModID, repeatingTimer, repetitions, colorR, colorG, colorB, colorA);
end

function DBM.BossModMetatable:UpdateStatusBarTimer(name, elapsed, timer, newName, newIcon, noBroadcast)
	DBM.UpdateStatusBarTimer(name, elapsed, timer, newName, newIcon, noBroadcast)
end

function DBM.BossModMetatable:GetStatusBarTimerTimeLeft(name)
	return DBM.GetStatusBarTimerTimeLeft(name);
end

function DBM.BossModMetatable:EndStatusBarTimer(name, noBroadcast)
	DBM.EndStatusBarTimer(name, noBroadcast, nil, true)
end



------------------
--Misc Functions--
------------------
function DBM.Capitalize(text, xall)
	text = tostring(text);
	if xall == nil and (GetLocale() == "krKR" or GetLocale() == "zhCN" or GetLocale() == "zhTW") then
		return text;
	else
		return string.upper(string.sub(text, 0, 1))..string.sub(text, 2);
	end
end

function DBM.CutText(tstring, len)
	if( string.len(tstring) < len ) then return tstring; end
	local last = 0;
	local i = 0
	while true do
		i = string.find(tstring, " ", i + 1) 
		if (i == nil) then 
			break;

		elseif( i < len) then
			last = i - 1;
			
		elseif( i > len) then
			break;
		end
	end

	return string.sub(tstring, 1, last).."...";
end


DBM.math = {};
function DBM.math.round(num, idp)
    if (idp == nil or idp < 0 or idp > 20 ) then idp = 1; end
    idp = 10 ^ idp;
    return math.floor((num * idp) + 0.5) / idp;
end


function DBM.SecondsToTime(seconds, longFormat, forceMinutes)
	local time, min, sec;
	if longFormat then
		if not tonumber(seconds) then
			return "0 "..DBM_MINUTES.." "..DBM_AND.." 0 "..DBM_SECONDS;
		else
			seconds = tonumber(seconds);
		end
		
		min = math.floor(seconds / 60);
		sec = string.format("%.0f", math.mod(seconds, 60));
		if sec == "60" then
			sec = "0";
			min = min + 1;
		end
		if min == 1 then
			time = min.." "..DBM_MINUTE.." "..DBM_AND.." ";
		elseif min == 0 then
			time = "";
		else
			time = min.." "..DBM_MINUTES.." "..DBM_AND.." ";
		end
		if sec == "1" then
			time = time..sec.." "..DBM_SECOND;
		elseif sec == "0" then
			time = string.gsub(time, " and ", "");
		else
			time = time..sec.." "..DBM_SECONDS
		end
	else
		if not tonumber(seconds) then
			return "0.00";
		else
			seconds = tonumber(seconds);
		end		
		if (seconds > 60) or forceMinutes then
			min = math.floor(seconds / 60);
			sec = string.format("%02.0f", math.mod(seconds, 60));
			if sec == "60" then
				sec = "00";
				min = min + 1;
			end
			time = min..":"..sec;
		else
			time = string.format("%.1f", seconds);
		end
	end

	return time;
end


---------
--Hooks--
---------

function DBM.SetHooks()
	function DBM.Hooks.newChatFrame_AddMessage(frame, text, r, g, b, id)
		if event and arg1 then
			
			if not frame and this then frame = this; end
			
			if type(frame:GetName()) ~= "string" then --caused an error when using auctioneer
				return;
			end
			
			local tabFlash = getglobal(frame:GetName().."TabFlash");
			if (event == "CHAT_MSG_WHISPER" or event == "CHAT_MSG_WHISPER_INFORM") then
				if (string.sub(arg1, 1, 4) == "LVPN") or (string.sub(arg1, 1, 4) == "LVBM") then
					if event == "CHAT_MSG_WHISPER_INFORM" then
						DBM.HideDNDAFKMessages[arg2] = 1.5;
					end
					DBM.NoWhisperSound.timer = 1;
					DBM.NoWhisperSound.frame = frame;
					DBM.NoWhisperSound.name = arg2;
					return;
				elseif event == "CHAT_MSG_WHISPER_INFORM" and DBM.HiddenWhisperMessages[string.gsub(arg1, "%%", "")] and DBM.HiddenWhisperMessages[string.gsub(arg1, "%%", "")]["targets"] and DBM.HiddenWhisperMessages[string.gsub(arg1, "%%", "")]["targets"][arg2] then
					return;
				elseif event == "CHAT_MSG_WHISPER" then
					local whisperCheck = DBM.InterceptWhisper(arg1, arg2);
					if whisperCheck == "AUTO_RESPONDED" then
						if DBM.Options.ShowWhispersDuringCombat then
							DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
							if DBM.Options.ShowAutoRespondInfo and DBM.Options.HideOutgoingInfoWhisper then
								DBM.AddMsg(DBM_AUTO_RESPOND_SHORT, nil, true);
							end
						else
							if DBM.Options.ShowAutoRespondInfo and DBM.Options.HideOutgoingInfoWhisper then
								DBM.AddMsg(string.format(DBM_AUTO_RESPOND_LONG, arg2), nil, true);
							end
							DBM.NoWhisperSound.timer = 1;
							DBM.NoWhisperSound.frame = frame;
							DBM.NoWhisperSound.name = arg2;
							return;
						end
					elseif whisperCheck == "HIDE" then
						if DBM.Options.ShowWhispersDuringCombat then
							DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
						else
							DBM.NoWhisperSound.timer = 1;
							DBM.NoWhisperSound.frame = frame;
							DBM.NoWhisperSound.name = arg2;
							return;
						end
					elseif whisperCheck == "FORCE_HIDE" then
						DBM.NoWhisperSound.timer = 1;
						DBM.NoWhisperSound.frame = frame;
						DBM.NoWhisperSound.name = arg2;
						return;
					elseif whisperCheck == "SHOW" then
						DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
					end
				else
					DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
				end		
			elseif (event == "CHAT_MSG_AFK") or (event == "CHAT_MSG_DND") then
				if DBM.HideDNDAFKMessages[arg2] then
					DBM.NoWhisperSound.timer = 1;
					DBM.NoWhisperSound.frame = frame;
					DBM.NoWhisperSound.name = arg2;
					return;
				else
					DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
				end
			elseif ((event == "CHAT_MSG_RAID_WARNING") or (event == "CHAT_MSG_RAID") or (event == "CHAT_MSG_RAID_LEADER") or (event == "CHAT_MSG_BATTLEGROUND") or (event == "CHAT_MSG_BATTLEGROUND_LEADER")) and DM_RaidTools and DM_RaidTools.CheckForSpam then
				if DM_RaidTools:CheckForSpam(event, arg1, arg2) then
					DBM.NoWhisperSound.timer = 1;
					DBM.NoWhisperSound.frame = frame;
					DBM.NoWhisperSound.name = arg2;
					return;
				else
					DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
				end
			else
				DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
			end
		else
			DBM.Hooks.oldChatFrame_AddMessage(frame, text, r, g, b, id);
		end
	end

	local i = 1;
	while getglobal("ChatFrame"..i) and i < 10 do
		if not DBM.Hooks.oldChatFrame_AddMessage then
			DBM.Hooks.oldChatFrame_AddMessage = getglobal("ChatFrame"..i).AddMessage;
		end
		getglobal("ChatFrame"..i).AddMessage = DBM.Hooks.newChatFrame_AddMessage;
		i = i + 1;
	end
	
	if CT_RAMessageFrame and CT_RAMessageFrame.AddMessage then
		DBM.Hooks.oldCT_RAMessageFrame_AddMessage = CT_RAMessageFrame.AddMessage;
		function DBM.Hooks.newCT_RAMessageFrame_AddMessage(frame, text, r, g, b, id)
			if DM_RaidTools and DM_RaidTools.CheckForSpam and DM_RaidTools:CheckForSpam("CHAT_MSG_CTRAID_WARNING", text) then
				return;
			else
				DBM.Hooks.oldCT_RAMessageFrame_AddMessage(frame, text, r, g, b, id);
			end
		end
		CT_RAMessageFrame.AddMessage = DBM.Hooks.newCT_RAMessageFrame_AddMessage;
	end
	
	function DBM.Hooks.newUIFrameFlash(frame, fadeInTime, fadeOutTime, flashDuration, showWhenDone, flashInHoldTime, flashOutHoldTime)
		if DBM.NoWhisperSound.timer and DBM.NoWhisperSound.frame and getglobal(DBM.NoWhisperSound.frame:GetName().."TabFlash") == frame then
			UIFrameFlashRemoveFrame(frame);
			frame:Hide();
		end
	end
--	hooksecurefunc("UIFrameFlash", DBM.Hooks.newUIFrameFlash);
	
	DBM.Hooks.oldChatEdit_SetLastTellTarget = ChatEdit_SetLastTellTarget;
	function DBM.Hooks.newChatEdit_SetLastTellTarget(editBox, target)
		if DBM.NoWhisperSound.timer and DBM.NoWhisperSound.name == target and DBM.NoWhisperSound.timer >= 0.99 then
			return;
		else
			DBM.Hooks.oldChatEdit_SetLastTellTarget(editBox, target);
		end
	end
	ChatEdit_SetLastTellTarget = DBM.Hooks.newChatEdit_SetLastTellTarget;
	
	function DBM.Hooks.newUseAction(slot, checkCursor, onSelf)
		DBMTooltipTextLeft1:SetText("");
		DBMTooltip:SetAction(slot);
		if DBMTooltipTextLeft1:GetText() == DBM_BLOODRAGE then
			DBM.LastBloodrage = GetTime();
		elseif DBMTooltipTextLeft1:GetText() == DBM_CHARGE then
			DBM.LastCharge = GetTime();
		elseif DBMTooltipTextLeft1:GetText() == DBM_FERALCHARGE then
			DBM.LastCharge = GetTime();
		elseif DBMTooltipTextLeft1:GetText() == DBM_FEIGNDEATH then
			DBM.LastFeignDeath = GetTime();
		end
	end
--	hooksecurefunc("UseAction", DBM.Hooks.newUseAction);

	function DBM.Hooks.newCastSpellByName(spell, onSelf)
		if string.find(spell, DBM_BLOODRAGE) then
			DBM.LastBloodrage = GetTime();
		elseif string.find(spell, DBM_CHARGE) then
			DBM.LastCharge = GetTime();
		elseif string.find(spell, DBM_FERALCHARGE) then
			DBM.LastCharge = GetTime();
		elseif string.find(spell, DBM_FEIGNDEATH) then
			DBM.LastFeignDeath = GetTime();
		end
	end
--	hooksecurefunc("CastSpellByName", DBM.Hooks.newCastSpellByName);

	function DBM.PlaySound(snd)
		if (snd == "RaidWarning") and DBM.Options.Gui then
			if DBM.Options.Gui.RaidWarnSound == 1 or DBM.Options.Gui.RaidWarnSound == 2 or DBM.Options.Gui.RaidWarnSound == 3 then
				if DBM.Options.Gui.RaidWarnSound == 1 then
					PlaySound(snd);
					return;
				elseif DBM.Options.Gui.RaidWarnSound == 2 then
					PlaySoundFile("Sound\\Doodad\\BellTollNightElf.wav");
					return;
				elseif DBM.Options.Gui.RaidWarnSound == 3 then
					return;
				end
			else
				PlaySound(snd);
			end
		else
			PlaySound(snd);
		end
	end
	
	DBM.Hooks.oldPlaySound = PlaySound;
	function DBM.Hooks.newPlaySound(snd)
		if snd == "TellMessage" and DBM.NoWhisperSound.timer then
			return;
		else
			DBM.Hooks.oldPlaySound(snd);
		end
	end
	PlaySound = DBM.Hooks.newPlaySound;
	
	
	if type(FC_IsValidWhisper) == "function" then
		DBM.Hooks.oldFC_IsValidWhisper = FC_IsValidWhisper;
		function DBM.Hooks.newFC_IsValidWhisper(Text, Name)
			if DBM.HiddenWhisperMessages[string.gsub(Text, "%%", "")] and DBM.HiddenWhisperMessages[string.gsub(Text, "%%", "")]["targets"] and DBM.HiddenWhisperMessages[string.gsub(Text, "%%", "")]["targets"][Name] then
				return 0;
			end
			return DBM.Hooks.oldFC_IsValidWhisper(Text, Name);	
		end
		FC_IsValidWhisper = DBM.Hooks.newFC_IsValidWhisper;
	end

	if type(WIM_FilterResult) == "function" then
		DBM.Hooks.oldWIM_FilterResult = WIM_FilterResult;
		function DBM.Hooks.newWIM_FilterResult(Text)
			if DBM.HiddenWhisperMessages[string.gsub(Text, "%%", "")] then--and DBM.HiddenWhisperMessages[Text]["targets"] and DBM.HiddenWhisperMessages[Text]["targets"][Name] then
				return 1;
			end
			return DBM.Hooks.oldWIM_FilterResult(Text);
		end
		WIM_FilterResult = DBM.Hooks.newWIM_FilterResult;
	end
end




--load on demand stuff ---FIX ME----
-- stolen from DBM_GUI >_<

function DBMGuiUpdateStatusbars()
	if( getglobal("DBM_StatusBarTimer1") == nil ) then return false; end		-- return if there are no bars
	for i = 1, DBM.StatusBarCount do
		if not getglobal("DBM_StatusBarTimer"..i).specialColor then
			getglobal("DBM_StatusBarTimer"..i.."Bar"):SetStatusBarColor(	DBM.Options.StatusBarColor.r, 
										DBM.Options.StatusBarColor.g, 
										DBM.Options.StatusBarColor.b, 
										DBM.Options.StatusBarColor.a	);
		end
	end
	DBM_StatusBarTimerDragBar:SetStatusBarColor(	DBM.Options.StatusBarColor.r, 
							DBM.Options.StatusBarColor.g, 
							DBM.Options.StatusBarColor.b, 
							DBM.Options.StatusBarColor.a	);	
end

function DBMMinimapButton_Move()
	DBMMinimapButton:SetPoint("CENTER", "Minimap", "CENTER", (DBM.Options.MinimapButton.Radius * cos(DBM.Options.MinimapButton.Position)), 
							(DBM.Options.MinimapButton.Radius * sin(DBM.Options.MinimapButton.Position)));
end


function RaidWarningFrame_OnEvent(event, message)
	if ( event == "CHAT_MSG_RAID_WARNING" ) then
		if DM_RaidTools and DM_RaidTools.CheckForSpam and DM_RaidTools:CheckForSpam("CHAT_MSG_RAID_WARNING_FRAME", message) then
			return;
		end
		this:AddMessage(message, 
				DBM.Options.Gui["RaidWarning_R"], 
				DBM.Options.Gui["RaidWarning_G"],
				DBM.Options.Gui["RaidWarning_B"],
				DBM.Options.Gui["RaidWarning_Delay"]);
		
		DBM.PlaySound("RaidWarning");
	end
end
function RaidWarningFrames_AddLocalMessages(message)
	RaidWarningFrame:AddMessage(message, 
				DBM.Options.Gui["RaidWarning_R"], 
				DBM.Options.Gui["RaidWarning_G"],
				DBM.Options.Gui["RaidWarning_B"],
				DBM.Options.Gui["RaidWarning_Delay"]	);

	DBMWarningFrame:AddMessage(message,
				DBM.Options.Gui["SelfWarning_R"], 
				DBM.Options.Gui["SelfWarning_G"],
				DBM.Options.Gui["SelfWarning_B"],
				DBM.Options.Gui["SelfWarning_Delay"]	);
			
	DBM.PlaySound("RaidWarning");
end

-- Change Combatlog Distance
function DBM.SetCombatLogDistance(xOpt, xNoAnnounce)
	local rv = { };

	if (xOpt == 4) then		rv = {"60", "1", "1", "1", "1", "1", "1", "1"};				if not xNoAnnounce then DBM.AddMsg(DBM_GUI_COMBATLOG_MIN_RANGE); end
	elseif (xOpt == 3) then		rv = {"150", "150", "150", "150", "150", "150", "150", "150"};	if not xNoAnnounce then	DBM.AddMsg(DBM_GUI_COMBATLOG_MAX_RANGE); end
	elseif (xOpt == 2) then		rv = {"150", "150", "50", "50", "50", "50", "50", "50"};	if not xNoAnnounce then	DBM.AddMsg(DBM_GUI_COMBATLOG_LONG_RANGE); end
	else				rv = {"60", "30", "50", "50", "50", "50", "50", "50"};		if not xNoAnnounce then	DBM.AddMsg(DBM_GUI_COMBATLOG_DEFAULT_RANGE); end
	end

	SetCVar("CombatDeathLogRange" , rv[1]);
	SetCVar("CombatLogRangeCreature" , rv[2]);
	SetCVar("CombatLogRangeFriendlyPlayers" , rv[3]);
	SetCVar("CombatLogRangeFriendlyPlayersPets" , rv[4]);
	SetCVar("CombatLogRangeHostilePlayers" , rv[5]);
	SetCVar("CombatLogRangeHostilePlayersPets" , rv[6]);
	SetCVar("CombatLogRangeParty" , rv[7]);
	SetCVar("CombatLogRangePartyPet" , rv[8]);
end

-- Need Function to Get count n of "x" in a String
function string.getnum( mstring, msearch )
	local mcount = 0;
	for mtemp in string.gmatch(mstring, msearch) do
		mcount = mcount + 1;
	end
	return mcount;
end
