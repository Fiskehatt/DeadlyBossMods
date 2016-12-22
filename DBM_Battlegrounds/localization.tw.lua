if (GetLocale() == "zhTW") then

DBM_BGMOD_LANG = {}
DBM_BGMOD_LANG["NAME"] 		= "戰場";
DBM_BGMOD_LANG["INFO"] 		= "顯示計時條為奧特蘭克山谷及阿拉希盆地旗幟佔領倒數計時. "
					            .."顯示戰歌旗幟持有者以及在奧特蘭克山谷自動繳交物資.";
DBM_BGMOD_LANG["THANKS"] 		= "感謝你使用 La Vendetta BossMods, 快樂的 PvP 吧";
DBM_BGMOD_LANG["WINS"]			= "(%w+)勝利了！";
DBM_BGMOD_LANG["BEGINS"]		= "即將開始";	-- BAR
DBM_BGMOD_LANG["ALLIANCE"]		= "聯盟";
DBM_BGMOD_LANG["HORDE"]		= "部落";
DBM_BGMOD_LANG["ALLI_TAKE_ANNOUNCE"] 	= "*** 聯盟佔領了 %s ***";
DBM_BGMOD_LANG["HORDE_TAKE_ANNOUNCE"]	= "*** 部落佔領了 %s ***";

		-- AV
DBM_BGMOD_LANG["AV_ZONE"] 		    = "奧特蘭克山谷";
DBM_BGMOD_LANG["AV_START60SEC"]	= "奧特蘭克山谷1分鐘後開始戰鬥。";
DBM_BGMOD_LANG["AV_START30SEC"]	= "奧特蘭克山谷30秒後開始戰鬥。";
DBM_BGMOD_LANG["AV_TURNININFO"] 	= "自動繳交聲望物品";
DBM_BGMOD_LANG["AV_NPC"] = {}
DBM_BGMOD_LANG["AV_NPC"]["SMITHREGZAR"] 			    = "鐵匠雷格薩";			-- armor
DBM_BGMOD_LANG["AV_NPC"]["PRIMALISTTHURLOGA"] 			= "指揮官瑟魯加";			-- icelord
DBM_BGMOD_LANG["AV_NPC"]["WINGCOMMANDERJEZTOR"] 		= "空軍指揮官傑斯托";		
DBM_BGMOD_LANG["AV_NPC"]["WINGCOMMANDERGUSE"] 			= "空軍指揮官古斯";
DBM_BGMOD_LANG["AV_NPC"]["WINGCOMMANDERMULVERICK"]	 	= "空軍指揮官穆維里克";
DBM_BGMOD_LANG["AV_NPC"]["MURGOTDEEPFORGE"] 			= "莫高特·深爐";			-- armor
DBM_BGMOD_LANG["AV_NPC"]["ARCHDRUIDRENFERAL"] 			= "大德魯伊雷弗拉爾";		-- forestlord
DBM_BGMOD_LANG["AV_NPC"]["WINGCOMMANDERVIPORE"] 		= "空軍指揮官維波里";
DBM_BGMOD_LANG["AV_NPC"]["WINDCOMMANDERSLIDORE"]	 	= "空軍指揮官斯里多爾";
DBM_BGMOD_LANG["AV_NPC"]["WINGCOMMANDERICHMAN"] 		= "空軍指揮官艾克曼";
DBM_BGMOD_LANG["AV_NPC"]["STORMPIKERAMRIDERCOMMANDER"]		= "雷矛山羊騎兵指揮官";
DBM_BGMOD_LANG["AV_NPC"]["FROSTWOLFWOLFRIDERCOMMANDER"]	= "霜狼騎兵指揮官";
DBM_BGMOD_LANG["AV_ITEM"] = {}
DBM_BGMOD_LANG["AV_ITEM"]["ARMORSCRAPS"] 	    = "護甲碎片";
DBM_BGMOD_LANG["AV_ITEM"]["SOLDIERSBLOOD"] 	= "聯盟士兵的血";
DBM_BGMOD_LANG["AV_ITEM"]["LIEUTENANTSFLESH"] 	= "聯盟士官的食物";
DBM_BGMOD_LANG["AV_ITEM"]["SOLDIERSFLESH"] 	= "聯盟士兵的食物";
DBM_BGMOD_LANG["AV_ITEM"]["COMMANDERSFLESH"] 	= "聯盟指揮官的食物";
DBM_BGMOD_LANG["AV_ITEM"]["STORMCRYSTAL"]    	= "風暴水晶";
DBM_BGMOD_LANG["AV_ITEM"]["LIEUTENANTSMEDAL"] 	= "部落士官的勳章";
DBM_BGMOD_LANG["AV_ITEM"]["SOLDIERSMEDAL"] 	= "部落士兵的勳章";
DBM_BGMOD_LANG["AV_ITEM"]["COMMANDERSMEDAL"] 	= "部落指揮官的勳章";
DBM_BGMOD_LANG["AV_ITEM"]["FROSTWOLFHIDE"] 	= "霜狼毛皮";
DBM_BGMOD_LANG["AV_ITEM"]["ALTERACRAMHIDE"] 	= "奧特蘭克山羊皮";
DBM_BGMOD_LANG["AV_TARGETS"] = {
        "雷矛急救站",
        "丹巴達爾北部碉堡",
        "丹巴達爾南部碉堡",
        "雷矛墓地",
        "冰翼碉堡",
        "石爐墓地",
        "石爐碉堡",
        "落雪墓地",
        "冰血哨塔",
        "冰血墓地",
        "哨塔高地",
        "霜狼墓地",
        "西部霜狼哨塔",
        "東部霜狼哨塔",
        "霜狼急救站"
	};
DBM_BGMOD_LANG["AV_UNDERATTACK"]	= "(.+)受到攻擊！如果不採取措施的話，(.+)將會(.+)這片土地！";	-- Graveyard // Tower
DBM_BGMOD_LANG["AV_WASTAKENBY"]	= "(.+)被(.+)佔領了！";
DBM_BGMOD_LANG["AV_WASDESTROYED"]	= "(.+)被(.+)摧毀了！";
DBM_BGMOD_LANG["AV_IVUS"]          = "Wicked, Wicked, Mortals! The forest weeps";
DBM_BGMOD_LANG["AV_ICEY"]          = "WHO DARES SUMMON LOKHOLAR";

		-- AB
DBM_BGMOD_LANG["AB_ZONE"] 		    = "阿拉希盆地";
DBM_BGMOD_LANG["AB_START60SEC"]	= "阿拉希盆地的戰鬥將在1分鐘後開始。";
DBM_BGMOD_LANG["AB_START30SEC"]	= "阿拉希盆地的戰鬥將在30秒後開始。";
DBM_BGMOD_LANG["AB_CLAIMSTHE"]	    = "(.+)突襲了(.+)！如果沒有其他人採取行動的話，(.+)將在一分鐘內控制它！";
DBM_BGMOD_LANG["AB_HASTAKENTHE"]	= "(.+)奪取了(.+)！";
DBM_BGMOD_LANG["AB_HASDEFENDEDTHE"] = "(.+)守住了(.+)！";
DBM_BGMOD_LANG["AB_HASASSAULTED"]	= "攻佔了";
DBM_BGMOD_LANG["AB_SCOREEXP"] 		= "基地：(%d+) 資源：(%d+)/2000";
DBM_BGMOD_LANG["AB_WINALLY"] 		= "聯盟勝利還需";
DBM_BGMOD_LANG["AB_WINHORDE"] 		= "部落勝利還需";
DBM_BGMOD_LANG["AB_TARGETS"] 		= {
        "農場",
        "伐木場",
        "鐵匠舖",
        "礦坑",
        "獸欄"
	};

		-- WSG
DBM_BGMOD_LANG["WSG_ZONE"] 		= "戰歌峽谷";
DBM_BGMOD_LANG["WSG_START60SEC"]	= "戰歌峽谷戰鬥將在1分鐘內開始。";
DBM_BGMOD_LANG["WSG_START30SEC"]	= "戰歌峽谷戰鬥將在30秒鐘內開始。做好準備！";
DBM_BGMOD_LANG["WSG_INFOFRAME_INFO"]	= "在戰歌峽谷中顯示搶奪旗幟視窗";
DBM_BGMOD_LANG["WSG_FLAG_PICKUP"] 	= "(.+)的旗幟被(.+)拔掉了！";			-- . because the F is not allways large char 
DBM_BGMOD_LANG["WSG_FLAG_RETURN"]	= "(.+)的旗幟被(.+)還到了它的基地";
DBM_BGMOD_LANG["WSG_ALLYFLAG"]		= "聯盟: ";
DBM_BGMOD_LANG["WSG_HORDEFLAG"]	= "部落: ";
DBM_BGMOD_LANG["WSG_FLAG_BASE"]	= "基地";
DBM_BGMOD_LANG["WSG_HASCAPTURED"]	= "(.+)佔據了(.+)的旗幟！";

		-- NEW Added 08.11.06
DBM_BGMOD_LANG["WSG_INFOFRAME_TITLE"]	= "戰歌旗幟所在";
DBM_BGMOD_LANG["WSG_INFOFRAME_TEXT"]	= "顯示旗幟持有者";
DBM_BGMOD_LANG["AB_STRINGALLIANCE"]	= "聯盟:";
DBM_BGMOD_LANG["AB_STRINGHORDE"]	= "部落:";
DBM_BGMOD_LANG["WSG_BOOTS_EXPR"]	= "受到(.*)加速";



DBM_BGMOD_EN_TARGET_AV = DBM_BGMOD_LANG.AV_TARGETS;
DBM_BGMOD_EN_TARGET_AB = DBM_BGMOD_LANG.AB_TARGETS;

-- DBM_SBT["Alliance: Lumber mill"] = "聯盟: 伐木場";
-- DBM_SBT["Horde: Lumber mill"] = "部落: 伐木場";
-- DBM_SBT["Flag respawn"] = "";
-- DBM_SBT["Ivus spawn"] = "";
-- DBM_SBT["Ice spawn"] = "";
DBM_SBT["Begins"] = DBM_BGMOD_LANG["BEGINS"];
DBM_SBT["AB_WINHORDE"] = DBM_BGMOD_LANG.AB_WINHORDE;
DBM_SBT["AB_WINALLY"] = DBM_BGMOD_LANG.AB_WINALLY;

DBM_SBT["Speed Boots"] = "加速鞋";
DBM_SBT["Flag respawn"] = "旗幟重生";
DBM_SBT["Ivus spawn"] = "伊弗斯出生";
DBM_SBT["Ice spawn"] = "冰雪出生";

end
