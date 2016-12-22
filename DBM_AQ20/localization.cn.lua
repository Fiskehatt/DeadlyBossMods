-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then


-- 1. Kurinaxx
	DBM_KURINAXX_NAME	= "库林纳克斯";


-- 2. General Rajaxx
	DBM_RAJAXX_NAME				= "拉贾克斯将军";
	DBM_RAJAXX_INFO				= "警报敌人数量";
	DBM_RAJAXX_WAVE1_EXPR		= "它们来了。尽量别被它们干掉，新兵。";
	DBM_RAJAXX_WAVE3_EXPR		= "我们复仇的时刻到了！让敌人的内心被黑暗吞噬吧！";
	DBM_RAJAXX_WAVE4_EXPR		= "我们不用再呆在这座石墙里面了！我们很快就能报仇了！在我们的怒火面前，就连那些龙也会战栗！";
	DBM_RAJAXX_WAVE5_EXPR		= "让敌人胆战心惊吧！让他们在恐惧中死去！";
	DBM_RAJAXX_WAVE6_EXPR		= "鹿盔将会呜咽着哀求我饶他一命，就像他那懦弱的儿子一样！一千年来的屈辱会在今天洗清！";
	DBM_RAJAXX_WAVE7_EXPR		= "范达尔！你的死期到了！藏到翡翠梦境里去吧，祈祷我们永远都找不到你！";
	DBM_RAJAXX_WAVE8_EXPR		= "无礼的蠢货！我会亲自要了你们的命！";
	DBM_RAJAXX_WAVE_ANNOUNCE 	= "*** 第%d/8波敌人到来 ***";
	DBM_RAJAXX_WAVE_RAJAXX		= "*** 拉贾克斯将军上阵 ***";
	DBM_RAJAXX_KILL_EXPR		= "杀了([^%s]+)！";
	DBM_RAJAXX_KILL_ANNOUNCE	= "*** %s需要治疗 ***";


-- 3. Moam
	DBM_MOAM_NAME					= "莫阿姆"
	DBM_MOAM_INFO					= "警报石化形态";
	DBM_MOAM_COMBAT_START			= "%s察觉到了你的恐惧。";
	DBM_MOAM_STONE_ANNOUNCE_TIME	= "*** %d秒后变成石化形态 ***";
	DBM_MOAM_STONE_GAIN				= "%s吸取了你的魔法能量，变成了石头。";
	DBM_MOAM_STONE_ANNOUNCE_FADE	= "*** %d秒后石化形态消失 ***";
	DBM_MOAM_STONE_FADE_EXPR		= "充能效果从莫阿姆身上消失。";
	DBM_MOAM_STONE_FADE_ANNOUNCE	= "*** 石化形态消失 ***";
	
	DBM_SBT["Stone form"]			= "石化形态";


-- 4. Buru the Gorger
	DBM_BURU_NAME				= "吞咽者布鲁";
	DBM_BURU_INFO 				= "警报凝视";
	DBM_BURU_WHISPER_INFO		= "密语玩家";
	DBM_BURU_WHISPER_TEXT		= "你被凝视了！快跑！";
	DBM_BURU_SETICON_INFO		= "添加标注";
	DBM_BURU_EYE_EXPR			= "凝视着([^%s]+)！";
	DBM_BURU_EYE_ANNOUNCE 		= "*** %s被凝视了 ***";
	DBM_BURU_EYE_SELFWARNING	= "你被凝视了！";


-- 5. Ayamiss the Hunter
	DBM_AYAMISS_NAME				= "狩猎者阿亚米斯";
	DBM_AYAMISS_INFO 				= "警报祭品";
	DBM_AYAMISS_SACRIFICE_EXPR 		= "([^%s]+)受([^%s]+)麻痹效果的影响。";
	DBM_AYAMISS_SACRIFICE_ANNOUNCE	= "*** %s成为了祭品 ***";


-- Anubisath Guardians  (奥斯里安)
	DBM_GUARDIAN_NAME 						= "阿努比萨斯守卫";
	DBM_GUARDIAN_INFO 						= "警报各种技能";
	DBM_GUARDIAN_SUMMON_INFO				= "警报召唤技能 (战士/虫群卫士)";
	DBM_GUARDIAN_THUNDERCLAP_EXPR	 		= "阿努比萨斯守卫者的雷霆一击击中([^%s]+)造成";
	DBM_GUARDIAN_THUNDERCLAP_ANNOUNCE		= "*** 雷霆一击 ***";
	DBM_GUARDIAN_EXPLODE_EXPR	 			= "阿努比萨斯守卫者获得了爆炸的效果。";
	DBM_GUARDIAN_EXPLODE_ANNOUNCE			= "*** 爆炸 ***";
	DBM_GUARDIAN_ENRAGE_EXPR				= "阿努比萨斯守卫者获得了狂怒的效果。";
	DBM_GUARDIAN_ENRAGE_ANNOUNCE			= "*** 狂怒 ***";

	DBM_GUARDIAN_PLAGUE_EXPR				= "([^%s]+)受([^%s]+)瘟疫效果的影响。";
	DBM_GUARDIAN_PLAGUE_ANNOUNCE			= "*** %s中了瘟疫 ***";
	DBM_GUARDIAN_PLAGUE_WHISPER				= "你中了瘟疫！离开人群！";

	DBM_GUARDIAN_SUMMONGUARD_EXPR 			= "阿努比萨斯守卫者施放了召唤阿努比萨斯虫群卫士。";
	DBM_GUARDIAN_SUMMONEDGUARD_ANNOUNCE		= "*** 虫群卫士出现 ***";
	DBM_GUARDIAN_SUMMONWARRIOR_EXPR 		= "阿努比萨斯守卫者施放了召唤阿努比萨斯战士。";
	DBM_GUARDIAN_SUMMONEDWARRIOR_ANNOUNCE	= "*** 战士出现 ***";
	
	DBM_SBT["Explode"]						= "爆炸";


-- 6. Ossirian the Unscarred
	DBM_OSSIRIAN_NAME				= "无疤者奥斯里安";
	DBM_OSSIRIAN_INFO				= "警报抗性弱点和上帝模式";
	DBM_OSSIRIAN_CURSE_INFO			= "警报语言诅咒";
	DBM_OSSIRIAN_CURSE_EXPR 		= "([^%s]+)受到了语言诅咒效果的影响。";
	DBM_OSSIRIAN_CURSE_ANNOUNCE		= "*** 语言诅咒 - 25秒后再次施放 ***";
	DBM_OSSIRIAN_CURSE_PREANNOUNCE	= "*** 语言诅咒 - 5秒后施放 ***";
	DBM_OSSIRIAN_WEAK_ANNOUNCE		= "*** 新的弱点：%s - 持续45秒 ***";
	DBM_OSSIRIAN_WEAK_EXPR			= "无疤者奥斯里安受到了([^%s]+)虚弱效果的影响。";
	DBM_OSSIRIAN_WEAK_RUNOUT		= "*** %d秒后上帝模式 ***";
	DBM_OSSIRIAN_SUPREME_EXPR		= "无疤者奥斯里安获得了奥斯里安之力的效果。";
	DBM_OSSIRIAN_SUPREME_ANNOUNCE	= "*** 上帝模式 ***";
	DBM_OSSIRIAN_DEATH_EXPR			= "我……败……了。";

	DBM_SBT["Ossirians Curse"]		= "语言诅咒";
	DBM_SBT["奥术 vulnerability"]	= "奥术虚弱";
	DBM_SBT["火焰 vulnerability"]	= "火焰虚弱";
	DBM_SBT["自然 vulnerability"]	= "自然虚弱";
	DBM_SBT["冰霜 vulnerability"]	= "冰霜虚弱";
	DBM_SBT["暗影 vulnerability"]	= "暗影虚弱";

end
