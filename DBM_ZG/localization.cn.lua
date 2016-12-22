-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/28/2007                   --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then


-- High Priestess Jeklik
	DBM_JEKLIK_NAME					= "高阶祭司耶克里克";
	DBM_JEKLIK_INFO					= "警报召唤蝙蝠和强效治疗术";
	DBM_JEKLIK_BOMBBATS_EXPR		= "我命令你把这些入侵者烧成灰烬！";
	DBM_JEKLIK_BOMBBATS_ANNOUNCE	= "*** 蝙蝠即将实施轰炸 ***";
	DBM_JEKLIK_CASTHEAL_EXPR		= "开始释放强效治疗术！";
	DBM_JEKLIK_CASTHEAL_ANNOUNCE	= "*** 强效治疗术 - 打断 ***";
	DBM_JEKLIK_BATS_EXPR			= "发出了刺耳的尖啸！";
	DBM_JEKLIK_BATS_ANNOUNCE		= "*** 蝙蝠即将到来 ***";


-- High Priest Venoxis
	DBM_VENOXIS_NAME				= "高阶祭司温诺希斯";
	DBM_VENOXIS_INFO				= "警报恢复效果";
	DBM_VENOXIS_RENEW_EXPR			= "高阶祭司温诺希斯获得了恢复的效果。";
	DBM_VENOXIS_RENEW_ANNOUNCE		= "*** 恢复 - 驱散 ***";
	DBM_VENOXIS_TRANSFORM_EXPR		= "让复仇的毒蛇吞噬你们吧！";
	DBM_VENOXIS_TRANSFORM_ANNOUNCE	= "*** 第二阶段 - 小心毒云 ***";


-- High Priestess Mar'li
	DBM_MARLI_NAME				= "高阶祭司玛尔里";
	DBM_MARLI_INFO				= "警报蜘蛛刷新";
	DBM_MARLI_SPIDER_EXPR		= "来为我作战吧，我的孩子们！";
	DBM_MARLI_SPIDER_ANNOUNCE	= "*** 蜘蛛刷新 ***";


-- Bloodlord Mandokir
	DBM_MANDOKIR_NAME			= "血领主曼多基尔";
	DBM_MANDOKIR_INFO			= "警报曼多基尔所注视的对象";
	DBM_MANDOKIR_YELL_PULL		= "让哈卡吞噬你的灵魂吧！";
	DBM_MANDOKIR_WATCH_EXPR		= "([^%s]+)！我正在看着你！";
	DBM_MANDOKIR_WATCH_ANNOUNCE	= "*** %s被注视了 ***";
	DBM_MANDOKIR_SETICON_INFO	= "添加标注";
	DBM_MANDOKIR_WHISPER_INFO	= "密语玩家";
	DBM_MANDOKIR_WHISPER_TEXT	= "你被注视了！";
	DBM_MANDOKIR_SELFWARN		= "你被注视了！";


-- Thekal - eg heal ability
	DBM_THEKAL_NAME	= "高阶祭司塞卡尔";


-- High Priestess Arlokk
	DBM_ARLOKK_NAME				= "高阶祭司娅尔罗";
	DBM_ARLOKK_INFO				= "警报标记技能";
	DBM_ARLOKK_YELL_PULL		= "贝瑟克，你的祭司在召唤你的力量！";
	DBM_ARLOKK_MARK_EXPR		= "吞噬([^%s]+)的躯体吧！";
	DBM_ARLOKK_MARK_ANNOUNCE	= "*** %s被标记 - 治疗他 ***";
	DBM_ARLOKK_MARK_WHISPER		= "你被标记了！";
	DBM_ARLOKK_WHISPER_INFO		= "密语被标记的玩家";


-- Jin'do the Hexxer
	DBM_JINDO_NAME					= "妖术师金度";
	DBM_JINDO_INFO					= "警报诅咒和图腾";
	DBM_JINDO_CURSE_INFO			= "警报诅咒";
	DBM_JINDO_HEAL_TOTEM_INFO		= "警报治疗图腾";
	DBM_JINDO_MC_TOTEM_INFO			= "警报洗脑图腾";
	DBM_JINDO_CURSE_EXPR			= "([^%s]+)受([^%s]+)金度的欺骗效果的影响。";
	DBM_JINDO_CURSE_SELF_ANNOUNCE	= "你被诅咒了";
	DBM_JINDO_CURSE_ANNOUNCE		= "*** %s被诅咒 - 不要驱散 ***";
	DBM_JINDO_HEAL_TOTEM_WARNING	= "*** 治疗图腾 ***";
	DBM_JINDO_MC_TOTEM_WARNING		= "*** 洗脑图腾 ***";
	DBM_JINDO_WHISPER_INFO			= "密语玩家";
	DBM_JINDO_WHISPER_TEXT			= "你被诅咒了！杀掉影子！";
	DBM_JINDO_HEAL_TOTEM			= "妖术师金度施放了强力治疗结界。";
	DBM_JINDO_MIND_CONTROL_TOTEM	= "妖术师金度施放了召唤洗脑图腾。";


-- Hakkar
	DBM_HAKKAR_NAME					= "哈卡";
	DBM_HAKKAR_INFO					= "警报血液虹吸";
	DBM_HAKKAR_SUFFERLIFE_EXPR		= "([^%s]+)血液虹吸使哈卡受到了([^%s]+)";
	DBM_HAKKAR_SUFFERLIFE_ANNOUNCE	= "*** 血液虹吸 - %d秒后施放 ***";
	DBM_HAKKAR_SUFFERLIFE_NOW		= "*** 血液虹吸 - 90秒后再次施放 ***";
	DBM_HAKKAR_COMBAT_START_YELL	= "骄傲会将你送上绝路。来吧，凡人！品尝夺灵者的愤怒吧！";
	DBM_HAKKAR_ENRAGE_WARNING		= "*** %s%s后激怒 ***";
	
	DBM_HAKKAR_SBT_MC				= "精神控制: "
	
	DBM_SBT["Enrage"] 				= "激怒";
	DBM_SBT["Life Drain"] 			= "血液虹吸";
	DBM_SBT["Next Mind Control"] 	= "下一次精神控制";
	
	DBM_SBT["Hakkar"] = {
		[1]	= {"Mind Control: ([^%s]+)", DBM_HAKKAR_SBT_MC.."%1"},
	};
	DBM_SBT["哈卡"] = DBM_SBT["Hakkar"]

	-- added 11.12.06
		DBM_HAKKAR_MC_EXPR		= "([^%s]+)受([^%s]+)疯狂效果的影响。";
		DBM_HAKKAR_MC_WARNING	= "*** 精神控制 - %s";

end
