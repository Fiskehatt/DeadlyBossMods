-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

	DRT_SLASHHELP			= {
		"欢迎使用 La Vendetta Raid Tools /lvrt",
		"命令表:",
		" ",
		"/drt logout <玩家名> - 强令一名玩家20秒后离线",
		"/drt pull <x> - 警报x秒后战斗开始 (也可使用: /pull <x>)",
		"/drt enable <模块名> <玩家名> - 为指定的玩家开启模块 (玩家可以为 'all')",
		"/drt disable <模块名> <玩家名> - 为指定的玩家关闭模块 (玩家可以为 'all')",
		"/drt announce <模块名> <玩家名> <on|off> - 为指定的玩家开启/关闭警报功能 (玩家可以为 'all')",
		"/drt bosslist - 显示当前开启的模块名",
		"/drt emote <表情> [目标] - 强令一名团队成员向'目标'做出一个表情 ('目标' 可选)",
		"/drt invite <等级 1-60> - 开始公会成员批量邀请Starts a guild mass invite",
		"/drt remote <option> <on|off> - 开启/关闭远程命令",
		"/drt ver - 检测团队内的 Deadly Raid Tools 版本",
		"/drt dura - 检测团队成员的装备耐久度 (也可使用: /drt dur)",
		"/drt spamblock - Shows spamblock options",
		" ",
		"感谢您使用 Deadly Raid Tools",
	}

	DRT_CHAT_PREFIX				= "<Deadly RaidTools> ";
	DRT_SENDLOGOUT				= "向 %s 发送离线指令";
	DRT_SENDLOGOUT_RAID_NOTICE	= DRT_CHAT_PREFIX.."从 %s 收到离线指令 - 正在登出...";
	DRT_SENDLOGOUT_NEED_NAME	= "玩家名不正确或出现未知问题，发送离线指令失败";

	DRT_PULLCOMMAND_ANNOUNCE	= "*** 即将开战 ***";
	DRT_PULLCOMMAND_SELFWARN	= "战斗开始";
	DRT_PULLCOMMAND_PREWARN		= "*** %d秒后开战 ***";
	DRT_PULLCOMMAND_FAILED		= "请使用 /pull 10 或 /drt pull 10";

	DRT_VERSION_WHISPER		= "Deadly RaidTools v%s";
	DRT_VERSION_MESSAGE		= "正在检测团队内 Deadly RaidTools 的版本";

	DRT_COMMAND_FAILD	= "命令无效，请输入'/drt help'命令查询帮助";

	DRT_ENABLEADDON_MESSAGE		= "向 %s 发送'开启'模块指令";
	DRT_DISANABLEADDON_MESSAGE	= "向 %s 发送'关闭'模块指令";

	DRT_ANNOUNCEON_MESSAGE	= "向 %s 发送'开启警报'指令";
	DRT_ANNOUNCEOFF_MESSAGE	= "向 %s 发送'关闭警报'指令";

	DRT_REMOTE_ON		= "远程命令'%s'启用";
	DRT_REMOTE_OFF		= "远程命令'%s'关闭";
	DRT_REMOTE_INFO		= "可用设置: %s";
	DRT_REMOTE_INFO_ON	= "%s: "..GREEN_FONT_COLOR_CODE.."启用"..FONT_COLOR_CODE_CLOSE;
	DRT_REMOTE_INFO_OFF	= "%s: "..RED_FONT_COLOR_CODE.."关闭"..FONT_COLOR_CODE_CLOSE;

	DRT_EMOTE_MESSAGE		= "发送团队表情命令'%s'";
	DRT_EMOTE_RECIVE		= "从 %s 收到团队表情命令";

	DRT_DURABILITY_MESSAGE	= "向 CT_RaidAssist 发送耐久度反馈信息";
	DRT_TOOLTIP_DURABILITY	= "^耐久度 (%d+) / (%d+)$";

	DRT_INVITE_SYNTAX		= "语法: /lvrt invite <等级 1-60>";
	DRT_INVITE_NOGUILD			= "对不起，你必须在一个公会内才可以使用公会邀请功能";
	DRT_INVITE_NOPERMISSION		= "对不起，你必须为团队领袖或助理才可以使用该功能";
	DRT_INVITE_GUILD_MESSAGE	= "<DRT> 团队邀请10秒后发出！请离队！";
	
	DBM_SBT["Incoming Pull"]	= "战斗即将开始";

-- Added 2.12.06
	DRT_BROKEN_ITEMS	= "(%s件损坏的物品)";
end
