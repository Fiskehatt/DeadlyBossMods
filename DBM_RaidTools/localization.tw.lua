if (GetLocale() == "zhTW") then


DRT_SLASHHELP			= {
	"歡迎使用 Deadly 團隊工具 /drt",
	"命令列表:",
	" ",
	"/drt logout <名字> - 讓一個玩家在 20 秒後登出這個遊戲",
	"/drt pull <x> - 廣播將在 X 秒後拉怪 (別名: /pull <x>)",
	"/drt enable <插件> <玩家> - 讓某個指定的玩家開啟某個插件 (玩家可以是 'all')",
	"/drt disable <插件> <玩家> - 讓某個指定的玩家關閉某個插件 (玩家可以是 'all')",
	"/drt announce <插件> <玩家> <on|off> - 讓某個指定的玩家 關閉/開啟 某個插件的廣播 (玩家可以是 'all')",
	"/drt bosslist - 顯示一份正確的插件名稱清單",
	"/drt emote <表情命令> [目標] - 強迫一個團隊隊員對 '目標' 做出某個表情 (可選擇)",
	"/drt invite <等級 1-60> - 開始對公會做出集結邀請",
	"/drt remote <選項> <on|off> - 開啟/關閉遠端命令",
	"/drt ver - 檢查其他人的 Deadly Raid Tools 版本",
	" ",
	"感謝你使用 Deadly 團隊工具",
}

DRT_CHAT_PREFIX		= "<Deadly RaidTools> ";
DRT_SENDLOGOUT			= "對 %s 發送登出命令";
DRT_SENDLOGOUT_RAID_NOTICE	= DRT_CHAT_PREFIX.."收到 %s 發出的登出命令 - 即將登出...";
DRT_SENDLOGOUT_NEED_NAME	= "不正確的名稱或是不明問題, 無法發送登出命令";

DRT_PULLCOMMAND_ANNOUNCE	= "*** 準備拉怪 ***";
DRT_PULLCOMMAND_SELFWARN	= "現在拉怪";
DRT_PULLCOMMAND_PREWARN	= "*** %d 秒後拉怪 ***";
DRT_PULLCOMMAND_FAILED		= "請使用 /pull 10 或是 /drt pull 10";

DRT_VERSION_WHISPER		= "Deadly RaidTools v%s";
DRT_VERSION_MESSAGE		= "檢查其他人的 DBM RaidTools 版本";

DRT_COMMAND_FAILD		= "這是個未知的命令, 請輸入 '/drt help' 檢查可用的命令";

DRT_ENABLEADDON_MESSAGE	= "發送 '啟用' 插件命令給 '%s'";
DRT_DISANABLEADDON_MESSAGE	= "發送 '停用' 插件命令給 '%s'";

DRT_ANNOUNCEON_MESSAGE		= "發送 '開啟廣播' 插件命令給 '%s'";
DRT_ANNOUNCEOFF_MESSAGE	= "發送 '關閉廣播' 插件命令給 '%s'";

DRT_REMOTE_ON			= "遠端命令 '%s' 開啟";
DRT_REMOTE_OFF			= "遠端命令 '%s' 關閉";
DRT_REMOTE_INFO		= "可用的選項: %s";

DRT_EMOTE_MESSAGE		= "正在對團隊發送表情指令 '%s'";
DRT_EMOTE_RECIVE		= "已經從 '%s' 接收表情指令";

DRT_DURABILITY_MESSAGE		= "發送耐久度回應給 CT_RaidAssist";
DRT_TOOLTIP_DURABILITY		= "^耐久度 (%d+) / (%d+)$";

DRT_INVITE_SYNTAX		= "語法: /drt invite <等級 1-60>";
DRT_INVITE_NOGUILD		= "抱歉, 你必須在一個公會裡才能使用公會邀請";
DRT_INVITE_NOPERMISSION	= "抱歉, 你必須被提昇或是這個團隊的領隊";
DRT_INVITE_GUILD_MESSAGE	= "<DRT> 將會在十秒後邀請你進入團隊! 請離開你現在的隊伍!";

end

