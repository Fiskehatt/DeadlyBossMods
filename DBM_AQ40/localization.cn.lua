-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

-- 1. Skeram
	DBM_SKERAM_NAME					= "预言者斯克拉姆";
	DBM_SKERAM_DESCRIPTION			= "警报魔爆和精神控制";
	
	DBM_SKERAM_AE					= "*** 魔爆术 ***";
	DBM_SKERAM_MC					= "*** %s被精神控制 ***";
	
	DBM_SKERAM_CAST_SPELL_AE		= "预言者斯克拉姆开始施放魔爆术。";
	DBM_SKERAM_MIND_CONTROL_TEXTURE	= "Spell_Shadow_Charm";
	DBM_SKERAM_MIND_CONTROL_DEBUFF	= "充实";


-- 2. Three Bugs (Vem & Co)
	DBM_THREEBUGS_NAME				= "三虫 - 维姆、亚尔基和克里";
	DBM_THREEBUGS_VEM				= "维姆";
	DBM_THREEBUGS_YAUJ				= "亚尔基公主";
	DBM_THREEBUGS_KRI				= "克里勋爵";
	DBM_THREEBUGS_VEM				= "维姆";
	DBM_THREEBUGS_REAL_NAME			= "三虫";
	DBM_THREEBUGS_FEAR_EXPR			= "([^%s]+)受([^%s]+)恐惧效果的影响。";
	DBM_THREEBUGS_FEAR_ANNOUNCE		= "*** 亚尔基公主的恐惧 - %d秒后施放 ***";
	DBM_THREEBUGS_CASTHEAL_EXPR		= "亚尔基公主开始施放强效治疗术。";
	DBM_THREEBUGS_CASTHEAL_ANNOUNCE	= "*** 亚尔基公主开始施放强效治疗术 - 打断 ***";
	
	DBM_SBT["Great Heal Cast"] 		= "强效治疗术施放";
	DBM_SBT["Yauj Fear"] 			= "亚尔基公主的恐惧";


-- 3. Battleguard Sartura
	DBM_SARTURA_NAME				= "沙尔图拉"
	DBM_SARTURA_DESCRIPTION			= "警报旋风斩"
	
	DBM_SARTURA_ANNOUNCE_WHIRLWIND	= "*** 旋风斩 ***"
	DBM_SARTURA_WHIRLWIND_FADED		= "*** 旋风斩消失 - 眩晕 ***"
	
	DBM_SARTURA_GAIN_WHIRLWIND		= "沙尔图拉获得了旋风斩的效果。";
	DBM_SARTURA_WHIRLWIND_FADES		= "旋风斩效果从沙尔图拉身上消失。";
	DBM_SARTURA_ENRAGE				= "%s变得愤怒了！";
	DBM_SARTURA_SARTURA				= "沙尔图拉";
	
	DBM_SBT["Whirlwind"] 			= "旋风斩";
	DBM_SBT["Enrage"]				= "激怒";


-- 4. Fankriss
	DBM_FANKRISS_NAME			= "顽强的范克瑞斯"
	DBM_FANKRISS_DESCRIPTION	= "警报召唤虫"
	
	DBM_FANKRISS_SPAWN_WARNING	= "*** 召唤虫出现 ***"
	
	DBM_FANKRISS_WORM_SPAWNED	= "顽强的范克瑞斯施放了召唤虫子。";


-- 5. Huhuran
	DBM_HUHURAN_NAME					= "哈霍兰公主";
	DBM_HUHURAN_DESCRIPTION				= "警报翼龙钉刺和狂暴";
	DBM_HUHURAN_ANNOUNCE_FRENZY			= "警报狂暴";
	
	DBM_HUHURAN_WYVERN_WARNING			= "*** 翼龙钉刺 - 5秒后施放 ***";
	
	DBM_HUHURAN_WYVERN_REGEXP			= "([^%s]+)受到了翼龙钉刺效果的影响。";
	DBM_HUHURAN_FRENZY					= "%s变得狂怒无比！";
	DBM_HUHURAN_FRENZY_ANNOUNCE			= "*** 疯狂 ***";
	DBM_HUHURAN_HUHURAN					= "哈霍兰公主";
	
	DBM_SBT["Wyvern Sting Cooldown"] 	= "翼龙钉刺冷却";


-- Anubisat Defenders
	DBM_DEFENDER_NAME				= "阿努比萨斯防御者";
	DBM_DEFENDER_DESCRIPTION		= "警报爆炸和瘟疫";
	DBM_DEFENDER_WHISPER			= "密语玩家";
	DBM_DEFENDER_PLAGUE				= "警报瘟疫";
	
	DBM_DEFENDER_ANNOUNCE_EXPLODE	= "*** 爆炸 ***";
	DBM_DEFENDER_ANNOUNCE_PLAGUE	= "*** %s中了瘟疫 ***";
	DBM_DEFENDER_WHISPER_PLAGUE		= "你中了瘟疫！";
	DBM_DEFENDER_PLAGUE_WARNING		= "瘟疫";
	
	DBM_DEFENDER_GAIN_EXPLODE		= "阿努比萨斯防御者获得了爆炸的效果。";
	DBM_DEFENDER_PLAGUE_REGEXP		= "([^%s]+)受([^%s]+)瘟疫效果的影响。";
	
	DBM_SBT["Explode"]				= "爆炸";


-- 6. Twin Emperors
	DBM_TWINEMPS_NAME				= "双子皇帝";
	DBM_TWINEMPS_DESCRIPTION		= "作战计时器";
	DBM_TWINEMPS_BUG_EXPLOE			= "周围有爆炸虫出现时显示特殊警报";
	DBM_TWINEMPS_REAL_NAME			= "双子皇帝";
	
	DBM_TWINEMPS_TELEPORT_WARNING	= "*** %s秒后双子传送 ***";
	DBM_TWINEMPS_ENRAGE_WARNING		= "*** %s%s后激怒 ***";

	DBM_TWINEMPS_TELEPORT_ANNOUNCE	= "*** 双子传送 ***";
	
	DBM_TWINEMPS_CAST_SPELL_1		= "施放了双子传送。";

	DBM_TWINEMPS_VEKNILASH			= "维克尼拉斯大帝";
	DBM_TWINEMPS_VEKLOR				= "维克洛尔大帝";
	
	DBM_TWINEMPS_EXPLODE_EXPR 		= "获得了爆炸虫";
	DBM_TWINEMPS_EXPLODE_ANNOUNCE 	= "爆炸虫 - 迅速离开";
	
	DBM_SBT["Enrage"]				= "激怒";
	DBM_SBT["Teleport"]				= "传送";


-- 7. Ouro
	DBM_OURO_NAME						= "奥罗";
	DBM_OURO_DESCRIPTION				= "警报下潜";
	
	DBM_OURO_SWEEP_SOON_WARNING			= "*** 横扫 - 5秒后施放 ***";
	DBM_OURO_BLAST_SOON_WARNING			= "*** 沙尘爆裂 - 5秒后施放 ***";
	DBM_OURO_SWEEP_WARNING				= "*** 横扫来临 - 1.5秒 ***";
	DBM_OURO_BLAST_WARNING				= "*** 沙尘爆裂来临 - 2秒 ***";
	DBM_OURO_SUBMERGED_WARNING			= "*** 奥罗潜入地下30秒 ***";
	DBM_OURO_EMERGE_SOON_WARNING		= "*** 5秒后奥罗钻出地面 ***";
	DBM_OURO_EMERGED_WARNING			= "*** 奥罗钻出地面 - 3分钟后再次下潜 ***";
	DBM_OURO_POSSIBLE_SUBMERGE_WARNING	= "*** 10秒后奥罗可能潜入地下 ***";
	DBM_OURO_SUBMERGE_WARNING			= "*** %s秒后奥罗潜入地下 ***";
	
	DBM_OURO_CAST_SWEEP					= "奥罗开始施放横扫。";
	DBM_OURO_CAST_SAND_BLAST			= "奥罗开始施展沙尘爆裂。";
	DBM_OURO_DIRT_MOUND_QUAKE			= "土堆的地震";
	DBM_OURO_ENRAGE						= "%s变得狂暴了！";
	DBM_OURO_ENRAGE_ANNOUNCE			= "*** 狂暴 ***";
	DBM_OURO_OURO						= "奥罗";
	
	DBM_SBT["Submerge"]					= "下潜";
	DBM_SBT["Emerge"]					= "重新出现";
	DBM_SBT["Sand Blast"]				= "沙尘爆裂";
	DBM_SBT["Sand Blast Cast"]			= "沙尘爆裂施放";
	DBM_SBT["Sweep"]					= "横扫"
	DBM_SBT["Sweep Cast"]				= "横扫施放";


-- 8. CThun
	DBM_CTHUN_NAME						= "克苏恩"
	DBM_CTHUN_DESCRIPTION				= "警报触须和黑暗闪耀";
	DBM_CTHUN_SLASHHELP1				= "/克苏恩 start - 手动开始计时";
	DBM_CTHUN_SEND_WHISPER				= "密语玩家";
	DBM_CTHUN_SET_ICON					= "添加标注";
	DBM_CTHUN_RANGE_CHECK				= "显示距离框体";
	DBM_CTHUN_RANGE_CHECK_PHASE2		= "在第二阶段仍显示距离框体";
	
	DBM_CTHUN_SMALL_EYE_WARNING			= "*** 眼球触须%s秒后出现 ***";
	DBM_CTHUN_DARK_GLARE_WARNING		= "*** 黑暗闪耀%s秒后出现 ***";
	DBM_CTHUN_DARK_GLARE_ON_GROUP		= "*** 黑暗闪耀正对小队 - ";
	DBM_CTHUN_DARK_GLARE_ON_YOU			= "黑暗闪耀正对着你！";
	DBM_CTHUN_DARK_GLARE_TIMER_FAILED	= "黑暗闪耀计时器调整失败";
	DBM_CTHUN_DARK_GLARE_END_WARNING	= "*** 黑暗闪耀5秒后结束 ***";
	DBM_CTHUN_GIANT_CLAW_WARNING		= "*** 巨钩触须10秒后出现 ***";
	DBM_CTHUN_GIANT_AND_EYES_WARNING	= "*** 巨%s触须和眼球触须10秒后出现 ***";
	DBM_CTHUN_WEAKENED_WARNING			= "*** 克苏恩的力量被削弱了！ - 45秒 ***";
	DBM_CTHUN_WEAKENED_ENDS_WARNING		= "*** 虚弱时间剩余%s秒 ***";
	DBM_CTHUN_DARK_GLARE				= "黑暗闪耀";
	DBM_CTHUN_EYE_BEAM					= "眼棱";
	
	DBM_CTHUN_EYE_OF_CTHUN				= "克苏恩之眼";
	DBM_CTHUN_CLAW						= "钩";
	DBM_CTHUN_EYE						= "眼";
	DBM_CTHUN_DIES						= "克苏恩之眼死亡了。";
	DBM_CTHUN_WEAKENED					= "的力量被削弱了！";
	
	DBM_SBT["Dark Glare"]				= "黑暗闪耀";
	DBM_SBT["Dark Glare End"]			= "黑暗闪耀结束";
	DBM_SBT["Eye Tentacles"]			= "眼球触须";
	DBM_SBT["Giant Eye Tentacle"]		= "巨眼触须";
	DBM_SBT["Giant Claw Tentacle"]		= "巨钩触须";
	DBM_SBT["Weakened"]					= "克苏恩虚弱";


--Viscidus
	DBM_VISCIDUS_NAME					= "维希度斯 (未汉化)";
	DBM_VISCIDUS_DESCRIPTION			= "Counts frost and melee hits on Viscidus.";
	DBM_VISCIDUS_SEND_WHISPER			= "Send whisper";
	DBM_VISCIDUS_SLASHHELP1				= "/Viscidus mt name - sets a main tank to prevent toxin warning spam";
	DBM_VISCIDUS_MT_SET					= "Main tank set to: ";
	DBM_VISCIDUS_MT_NOT_SET1 			= "Main tank not set! Toxin warning will whisper your main tank every 15 seconds!";
	DBM_VISCIDUS_MT_NOT_SET2			= "Type '/vis mt name' to set your main tank.";
	
	DBM_VISCIDUS_TOXIN_ON				= "*** Toxin on ";
	DBM_VISCIDUS_TOXIN_ON_YOU			= "Toxin on you!";
	DBM_VISCIDUS_FREEZE_WARNING			= "*** Freeze %s/3 ***";
	DBM_VISCIDUS_FROZEN_WARNING			= "*** Freeze 3/3 - frozen for 15 sec ***";
	DBM_VISCIDUS_SHATTER_WARNING		= "*** Shatter %s/3 ***";
	DBM_VISCIDUS_FROZEN_LEFT_WARNING	= "*** %s seconds left ***";
	DBM_VISCIDUS_FROST_HITS				= "Frost hits: ";
	DBM_VISCIDUS_FROST_HITS_WARNING		= "*** %s frost hits ***";
	DBM_VISCIDUS_MELEE_HITS				= "Melee hits: ";
	DBM_VISCIDUS_MELEE_HITS_WARNING		= "*** %s melee hits ***";
	
	DBM_VISCIDUS_SLOW_1					= "%s begins to slow!";
	DBM_VISCIDUS_SLOW_2					= "%s is freezing up!";
	DBM_VISCIDUS_SLOW_3					= "%s is frozen solid!";
	DBM_VISCIDUS_SHATTER_1				= "%s begins to crack!";
	DBM_VISCIDUS_SHATTER_2				= "%s looks ready to shatter!";
	DBM_VISCIDUS_VISCIDUS				= "Viscidus";
	
	DBM_SBT["Frozen"]					= "Frozen";

end
