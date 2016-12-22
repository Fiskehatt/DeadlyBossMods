-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

-- DBM_GUI.lua for Bossmod List Frame (DBMBossModListFrame)
	DBMGUI_TAB_1_TITLE_TEXT	= "纳克萨玛斯";
	DBMGUI_TAB_2_TITLE_TEXT	= "安其拉神殿";
	DBMGUI_TAB_3_TITLE_TEXT	= "黑翼之巢";
	DBMGUI_TAB_4_TITLE_TEXT	= "熔火之心";
	DBMGUI_TAB_5_TITLE_TEXT	= "祖尔格拉布与安其拉废墟";
	DBMGUI_TAB_6_TITLE_TEXT	= "其他";

-- Tooltips
	DBMGUI_FRAMETAB_1_TT	= "纳克萨玛斯";
	DBMGUI_FRAMETAB_1_TD	= "纳克萨玛斯首领模块。右键点击以查看选项。";
	DBMGUI_FRAMETAB_2_TT	= "安其拉神殿";
	DBMGUI_FRAMETAB_2_TD	= "安其拉神殿首领模块。右键点击以查看选项。";
	DBMGUI_FRAMETAB_3_TT	= "黑翼之巢";
	DBMGUI_FRAMETAB_3_TD	= "黑翼之巢首领模块。右键点击以查看选项。";
	DBMGUI_FRAMETAB_4_TT	= "熔火之心";
	DBMGUI_FRAMETAB_4_TD	= "熔火之心首领模块。右键点击以查看选项。";
	DBMGUI_FRAMETAB_5_TT	= "祖尔格拉布与安其拉废墟";
	DBMGUI_FRAMETAB_5_TD	= "祖尔格拉布与安其拉废墟首领模块。右键点击以查看选项。";

	DBMGUI_DISABLE_ADDON		= "关闭模块";
	DBMGUI_ENABLE_ADDON			= "启用模块";
	DBMGUI_STOP_ADDON			= "停止模块";
	DBMGUI_DISABLE_ANNOUNCE		= "关闭通告";
	DBMGUI_ENABLE_ANNOUNCE		= "启用通告";
	DBMGUI_SHOW_DROPDOWNMENU	= "其他";
	DBMGUI_DROPDOWNMENU_TITLE	= "模块菜单";

-- DBMBossModFrame
	DBMGUI_HIDE_OPTIONS	= "<<< 选项";
	DBMGUI_SHOW_OPTIONS	= "选项 >>>";

-- Options Frame (DBMOptionsFrame)
	DBMGUI_OPTIONS			= "选项 (GUI v"..DBMGUI_VERSION.." / Boss Mod v"..DBM.Version..")";
	DBMGUI_SIDEFRAME_TAB1	= "基本";
	DBMGUI_SIDEFRAME_TAB2	= "计时条";
	DBMGUI_SIDEFRAME_TAB3	= "警报";
	DBMGUI_SIDEFRAME_TAB4	= "特殊";

-- DBMOptionsFramePage1
	DBMGUI_TITLE_SYNCSETTINGS				= "同步信息设置";
	DBMGUI_TITLE_MINIMAPBUTTON				= "小地图按钮设置";
	DBMGUI_TITLE_AGGROALERT					= "仇恨警报设置";
	DBMGUI_CHECKBOX_SYNC_ENABLE				= "启用同步";
	DBMGUI_BUTTON_VERSION_CHECK				= "版本检测";
	DBMGUI_BUTTON_VERSION_CHECK_FAILD		= "没有找到其他玩家使用 Deadly Boss Mod";
	DBMGUI_BUTTON_STATUSBAR_SYNCINFO		= "计时条同步信息";
	DBMGUI_BUTTON_STATUSBAR_SYNCINFO_FAILD 	= "无计时条";
	DBMGUI_SLIDER_MINIMAP_1					= "位置";
	DBMGUI_SLIDER_MINIMAP_2					= "半径";
	DBMGUI_CHECKBOX_MINIMAP					= "显示小地图按钮";
	DBMGUI_CHECKBOX_AGGROALERT_ENABLE		= "启用仇恨警报";
	DBMGUI_BUTTON_AGGROALERT_TEST			= "测试仇恨警报";
	DBMGUI_BUTTON_AGGROALERT_RESET			= "重置设置";
	DBMGUI_BUTTON_AGGROALERT_RESET_DONE		= "仇恨警报设置已被重置";
	DBMGUI_CHECKBOX_AGGROALERT_PLAYSOUND	= "获得仇恨后播放声音";
	DBMGUI_CHECKBOX_AGGROALERT_FLASH		= "获得仇恨后屏幕闪烁";
	DBMGUI_CHECKBOX_AGGROALERT_SHAKE		= "获得仇恨后屏幕震动";
	DBMGUI_CHECKBOX_AGGROALERT_SPECIALTEXT	= "显示特殊警报";
	DBMGUI_CHECKBOX_AGGROALERT_LOCALWARNING	= "显示本地警报";
	DBMGUI_BUTTON_MOVEABLEBAR				= "移动计时条";
	DBMGUI_BUTTON_DEFAULTS					= "重置设置";

-- DBMOptionsFramePage2
	DBMGUI_TITLE_STATUSBARS 				= "计时条设置";
	DBMGUI_TITLE_PIZZATIMER					= "创建\"Pizza Timer\"";
	DBMGUI_CHECKBOX_STATUSBAR_ENABLE		= "启用计时条";
	DBMGUI_CHECKBOX_STATUSBAR_FILLUP		= "正向填充";
	DBMGUI_CHECKBOX_STATUSBAR_FLIPOVER		= "向上展开";
	DBMGUI_EDITBOX_PIZZATIMER_TEXT			= "名称";
	DBMGUI_EDITBOX_PIZZATIMER_MIN			= "分钟";
	DBMGUI_EDITBOX_PIZZATIMER_SEC			= "秒";
	DBMGUI_CHECKBOX_PIZZATIMER_BROADCAST	= "向团队通告";
	DBMGUI_BUTTON_PIZZATIMER_START			= "开始计时";

-- DBMOptionsFramePage3
	DBMGUI_TITLE_RAIDWARNING					= "团队警报设置";
	DBMGUI_TITLE_SELFWARNING					= "本地警报设置"; 
	DBMGUI_DROPDOWN_RAIDWARNING_OPTION_1		= "RaidWarning (默认声音)";
	DBMGUI_DROPDOWN_RAIDWARNING_OPTION_2		= "BellTollNightElf (CT_Raid 声音)";
	DBMGUI_DROPDOWN_RAIDWARNING_OPTION_3		= "关闭警报音效";
	DBMGUI_DROPDOWN_RAIDWARNING_INFO_DISABLED	= "团队警报音效关闭";
	DBMGUI_RAIDWARNING_EXAMPLE					= "*** 团队警报样式 ***";
	DBMGUI_BUTTON_SOUND_TEST					= "测试音效";
	DBMGUI_BUTTON_SHOW_EXAMPLE					= "显示样式";
	DBMGUI_BUTTON_RAIDWARNING_RESET				= "重置设置";
	DBMGUI_BUTTON_RAIDWARNING_RESET_DONE		= "团队警报设置已被重置";

-- DBMOptionsFramePage4
	DBMGUI_TITLE_SPECIALWARNING			= "特殊警报设置";
	DBMGUI_TITLE_SHAKESCREEN			= "屏幕震动效果设置";
	DBMGUI_TITLE_FLASHEFFECT			= "屏幕闪烁效果设置";
	DBMGUI_CHECKBOX_SPECWARNING_ENABLE	= "启用特殊警报";
	DBMGUI_BUTTON_SPECWARNING_TEST		= "测试警报";
	DBMGUI_BUTTON_SPECWARNING_EXAMPLE	= "测试信息 :)";
	DBMGUI_SLIDER_SPECWARNING_DURATION	= "持续时间";
	DBMGUI_SLIDER_SPECWARNING_FADETIME	= "渐隐时间";
	DBMGUI_SLIDER_SPECWARNING_TEXTSIZE	= "文字大小";
	DBMGUI_CHECKBOX_SHAKESCREEN_ENABLE	= "启用屏幕震动效果";
	DBMGUI_BUTTON_SHAKESCREEN_TEST		= "测试震动";
	DBMGUI_SLIDER_SHAKESCREEN_DURATION	= "持续时间";
	DBMGUI_SLIDER_SHAKESCREEN_INTENSITY	= "强度";
	DBMGUI_CHECKBOX_FLASHEFFECT_ENABLE	= "启用屏幕闪烁效果";
	DBMGUI_BUTTON_FLASHEFFECT_TEST		= "测试闪烁";
	DBMGUI_SLIDER_FLASHEFFECT_DURATION	= "持续时间";
	DBMGUI_SLIDER_FLASHEFFECT_FLASHES	= "闪烁次数";

-- DBMOptionsFramePage5
	DBMGUI_ABOUTTITLE	= "关于";
	DBMGUI_ABOUTTEXT	= {
		"Deadly Bossmods API (c) by DeadlyMinds Tandanu",
		"Deadly GUI (c) by DeadlyMinds Nitram",
		" ",
		"汉化：Diablohu<白银之手> @ 二区-轻风之语",
		"感谢：大蛇暗<龙吟> @ 二区-轻风之语",
		"　　　二区-轻风之语白银之手全体成员",
		" ",
		"感谢您使用我们的插件",
		" ",
		"                         访问",
		"               www.deadlyminds.net",
		"                          或",
		"              www.curse-gaming.com",
		" ",
		"如果您有什么建议或错误报告，请在 www.curse-gaming.com 留言或在 www.deadlyminds.net 的论坛发表。",

	};


--[[ Translations added v1.05
	DBMGUI_DISTANCE_FRAME_TITLE		= "距离";
	DBMGUI_DISTANCE_FRAME_TEXT		= "距离过近:";
	
	DBMGUI_INFOFRAME_TOOLTIP_TITLE	= "信息框体";
	DBMGUI_INFOFRAME_TOOLTIP_TEXT	= "右键点击以移动\nShift+右键单击以隐藏";
	
	DBMGUI_STATUSBAR_WIDTH_SLIDER	= "宽度";
	DBMGUI_STATUSBAR_SCALE_SLIDER	= "缩放";
	
	DBMGUI_BUTTON_RANGECHECK		= "距离侦测";
	DBMGUI_TOOLTIP_RANGECHECK_TITLE	= "距离侦测";
	DBMGUI_TOOLTIP_RANGECHECK_TEXT	= "侦测与你距离超过30码的队友。";
	
	DBMGUI_BUTTON_DISTANCEFRAME			= "距离框体";
	DBMGUI_TOOLTIP_DISTANCEFRAME_TITLE	= "距离框体";
	DBMGUI_TOOLTIP_DISTANCEFRAME_TEXT	= "显示隐藏距离侦测框体。它将显示距离你过近(10码)的队友。这个功能在诸如克苏恩或哈霍兰公主的作战中相当实用。"; ]] --moved to API localization

-- Translations added v1.10
	DBMGUI_SIDEFRAME_TAB5	= "其他";
	DBMGUI_SIDEFRAME_TAB6	= "关于";
	
	DBMGUI_SLIDER_STATUSBAR_COUNT			= "数目";
	DBMGUI_DROPDOWN_STATUSBAR_DESIGN_1		= "经典";
	DBMGUI_DROPDOWN_STATUSBAR_DESIGN_2		= "现代"; 
	DBMGUI_DROPDOWN_STATUSBAR_EXAMPLE_BAR	= "样式条";
	
	DBMGUI_TITLE_AUTORESPOND					= "自动回复设置";
	DBMGUI_CHECKBOX_AUTORESPOND_ENABLE			= "在首领战中自动回复密语";
	DBMGUI_CHECKBOX_AUTORESPOND_SHOW_WHISPERS	= "首领战中显示密语";
	DBMGUI_CHECKBOX_AUTORESPOND_INFORM_USER		= "通知我密语者";
	DBMGUI_CHECKBOX_AUTORESPOND_HIDE_REPLY		= "隐藏自动密语";
	
	DBMGUI_EDITBOX_AUTORESPOND_TITLE			= "自动密语信息";
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_HEADER	= "以下信息将会自动添加:";
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT1	= {"%P", "你的名字"};
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT2	= {"%B", "首领名字"};
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT3	= {"%HP", "首领生命"};
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT4	= {"%ALIVE", "团队幸存人数"};
	DBMGUI_EDITBOX_AUTORESPOND_TOOLTIP_TEXT5	= {"%RAID", "团队总人数"};

-- Translations added v1.15
	DBMGUI_CHECKBOX_ALLOW_STATUS_COMMAND	= "允许玩家获取作战信息(密语\"status\")";
	DBMGUI_CHECKBOX_SHOWCOMBATINFO			= "显示作战信息，如战斗用时";
	DBMGUI_TITLE_COMBATSYSTEM				= "战斗侦测系统";
	DBMGUI_BUTTON_STATUSBAR_FLASHONEND		= "计时结束时闪烁";
	DBMGUI_BUTTON_STATUSBAR_AUTOCOLORBARS	= "动态改变计时条颜色";

-- Translations added v1.20
	DBMGUI_TITLE_RAIDOPTIONS				= "团队选项";
	DBMGUI_CHECKBOX_HIDEPLAYERNAMESINRAIDS	= "加入团队时隐藏玩家名字";
	DBMGUI_CHECKBOX_ALLOWSYNCFROMOLDCLIENT	= "接受旧版本的同步指令";
	
-- Translation added v1.25
	DBMGUI_CHECKBOX_ENABLE_RAIDWARNINGFRAME	= "显示团队警报";
	DBMGUI_CHECKBOX_ENABLE_SELFWARNINGFRAME	= "显示本地警报";
	DBMGUI_TAB_NAXX_TEXT					= "NAX";
	DBMGUI_TAB_AQ40_TEXT					= "AQ40";
	DBMGUI_TAB_BWL_TEXT						= "BWL";
	DBMGUI_TAB_MC_TEXT						= "MC";
	DBMGUI_TAB_20PL_TEXT					= "20人";
	DBMGUI_TAB_OTHER_TEXT					= "其他";
	DBMGUI_BUTTON_LOADADDON					= "载入模块";
	DBMGUI_FRAME_LOADADDON_DESCRIPTION		= {
		"进入相应区域后模块将会自动加载。如果",
		"你想手动加载，可以点击\"载入模块\"按钮，",
		"之后该模块就会被加载并工作，但这样做",
		"会增加CPU和内存的负担。这个功能的作用",
		"是仅仅是优化插件运行效率，因为我们不",
		"想在玩家不在副本的时候加载所有的东西。"
	};
	
-- added @ 1.12.06
	DBMGUI_CHECKBOX_SHOWPULLSYNCINFO	= "显示战斗即将开始同步信息";

	DBMGUI_TITLE_LOAD_ON_DEMAND		= "需求时载入设置";
	DBMGUI_CHECKBOX_LOAD_GUI_ONLOAD	= "登陆时载入图形界面(GUI)";

-- added @ 13.12.06
	DBMGUI_BUTTON_STATUSBAR_SHOW_ICON	= "显示图标";
	DBMGUI_BUTTON_STATUSBAR_ICON_SIDE	= "在右侧显示图标";
end
