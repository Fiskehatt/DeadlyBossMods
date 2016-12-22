if (GetLocale() == "zhTW") then

-- 1. Skeram
DBM_SKERAM_NAME                = "預言者斯克拉姆";
DBM_SKERAM_DESCRIPTION         = "當魔爆術以及心靈控制時發衝警告.";

DBM_SKERAM_AE                  = "*** 即將魔爆，中斷！ ***";
DBM_SKERAM_MC                  = "*** %s 被心靈控制，法師快變羊！ ***";

DBM_SKERAM_CAST_SPELL_AE       = "預言者斯克拉姆開始施放魔爆術。";
DBM_SKERAM_MIND_CONTROL_TEXTURE    = "預言者斯克拉姆施放了召喚幻象。";
DBM_SKERAM_MIND_CONTROL_DEBUFF     = "充實";

-- 2. Three Bugs (Vem & Co)
DBM_THREEBUGS_NAME                 = "三臭蟲 - 維姆, 亞爾基公主 和 克里勳爵";
DBM_THREEBUGS_YAUJ                 = "亞爾基公主";
DBM_THREEBUGS_KRI                  = "克里勳爵";
DBM_THREEBUGS_VEM                  = "維姆";
DBM_THREEBUGS_REAL_NAME            = "三臭蟲";
DBM_THREEBUGS_FEAR_EXPR            = "(.+)受到(.*)恐懼術";
DBM_THREEBUGS_FEAR_ANNOUNCE        = "*** 亞爾基的恐懼即將在 %d 秒後到來 ***";
DBM_THREEBUGS_CASTHEAL_EXPR        = "亞爾基公主開始施放強效治療術。";
DBM_THREEBUGS_CASTHEAL_ANNOUNCE    = "*** 亞爾基公主正在施放強效治療術, 快中斷 ***";
DBM_SBT["Great Heal Cast"]         = "施展強效治療術";


-- 3. Battleguard Sartura
DBM_SARTURA_NAME                   = "沙爾圖拉"
DBM_SARTURA_DESCRIPTION            = "狂暴/旋風斬 警報"

DBM_SARTURA_ANNOUNCE_WHIRLWIND     = "*** 旋風斬 - 25 秒再次發動 ***";
DBM_SARTURA_WHIRLWIND_FADED        = "*** 3 秒後旋風斬結束 - 準備上去暈！ ***";

DBM_SARTURA_GAIN_WHIRLWIND         = "沙爾圖拉獲得了旋風斬的效果。";
DBM_SARTURA_WHIRLWIND_FADES        = "旋風斬效果從沙爾圖拉身上消失。";
DBM_SARTURA_ENRAGE                 = "%s變得憤怒了！";
DBM_SARTURA_SARTURA                = "沙爾圖拉";
DBM_SARTURA_WARNING                = "*** 激怒 ***";
DBM_SBT["Whirlwind"]               = "旋風斬";


-- 4. Fankriss
DBM_FANKRISS_NAME              = "頑強的范克瑞斯"
DBM_FANKRISS_DESCRIPTION       = "召喚爪牙警報"

DBM_FANKRISS_SPAWN_WARNING     = "*** 召喚精英蟲子！ 快速擊殺！ ***";

DBM_FANKRISS_WORM_SPAWNED      = "頑強的范克里斯施放了召喚蟲子。";


-- 5. Huhuran
DBM_HUHURAN_NAME               = "哈霍蘭公主";
DBM_HUHURAN_DESCRIPTION        = "翼龍釘刺/憤怒狂暴/狂暴 警報";
DBM_HUHURAN_ANNOUNCE_FRENZY    = "狂暴模式警報";

DBM_HUHURAN_WYVERN_WARNING     = "*** 5 秒後發動翼龍釘刺！ ***";

DBM_HUHURAN_WYVERN_REGEXP      = "(.+)受到(.*)翼龍釘刺";
DBM_HUHURAN_FRENZY             = "%s變得狂暴起來！";
DBM_HUHURAN_FRENZY_ANNOUNCE		= "*** 狂暴 ***";
DBM_HUHURAN_HUHURAN            = "哈霍蘭公主";

DBM_SBT["Wyvern Sting Cooldown"]   = "翼龍釘刺 CD";


-- Anubisat Defenders
DBM_DEFENDER_NAME              = "阿努比薩斯防禦者";
DBM_DEFENDER_DESCRIPTION       = "爆炸/瘟疫 警報";
DBM_DEFENDER_WHISPER           = "通知目標";
DBM_DEFENDER_PLAGUE            = "瘟疫警報";

DBM_DEFENDER_ANNOUNCE_EXPLODE      = "*** 即將爆炸！近戰躲開！ ***";
DBM_DEFENDER_ANNOUNCE_PLAGUE       = "***  %s 中了瘟疫，離開人群！ ***";
DBM_DEFENDER_WHISPER_PLAGUE        = "你中了瘟疫！離開人群！";
DBM_DEFENDER_PLAGUE_WARNING        = "瘟疫";

DBM_DEFENDER_GAIN_EXPLODE      = "阿努比薩斯防禦者獲得了爆炸的效果。";
DBM_DEFENDER_PLAGUE_REGEXP     = "^(.+)受到(.*)瘟疫";

DBM_SBT["Explode"]             = "爆炸";


-- 6. Twin Emperors
DBM_TWINEMPS_NAME              = "雙子皇帝";
DBM_TWINEMPS_DESCRIPTION       = "雙子傳送/爆炸蟲警告"
DBM_TWINEMPS_REAL_NAME         = "雙子皇帝";

DBM_TWINEMPS_TELEPORT_WARNING      = "*** %s 秒後雙子傳送！！ ***";
DBM_TWINEMPS_ENRAGE_WARNING        = "*** %s %s 分鐘後狂怒  ***";

DBM_TWINEMPS_TELEPORT_ANNOUNCE     = "*** 雙子傳送 ***";

DBM_TWINEMPS_CAST_SPELL_1      = "維克洛爾大帝施放了雙子傳送。";
DBM_TWINEMPS_CAST_SPELL_2      = "維克尼拉斯大帝施放了雙子傳送。";
DBM_TWINEMPS_VEKNILASH         = "維克尼拉斯大帝";
DBM_TWINEMPS_VEKLOR            = "維克洛爾大帝";

DBM_TWINEMPS_EXPLODE_EXPR      = "獲得了爆炸蟲的效果。";
DBM_TWINEMPS_EXPLODE_ANNOUNCE  = "蟲要爆炸了 - 快閃開";

DBM_SBT["Enrage"]              = "狂暴";
DBM_SBT["Teleport"]            = "雙子傳送";

-- 7. Ouro
DBM_OURO_NAME                  = "奧羅";
DBM_OURO_DESCRIPTION           = "各種技能警報";

DBM_OURO_SWEEP_SOON_WARNING    = "*** 5 秒後橫掃攻擊，DPS後退！ ***";
DBM_OURO_BLAST_SOON_WARNING    = "*** 5 秒後沙塵爆裂 ***";
DBM_OURO_SWEEP_WARNING         = "*** 橫掃攻擊 - 1.5 秒 ***";
DBM_OURO_BLAST_WARNING         = "*** 沙塵爆裂！- 2 秒 ***";
DBM_OURO_SUBMERGED_WARNING     = "*** 奧羅遁地！ 30 秒後出現 ***";
DBM_OURO_EMERGE_SOON_WARNING   = "*** 5 秒後奧羅鑽出地面 ***";
DBM_OURO_EMERGED_WARNING       = "*** 奧羅鑽出地面了 - 3 分鐘後再次下潛 ***";
DBM_OURO_POSSIBLE_SUBMERGE_WARNING = "*** 10 秒後奧羅可能遁地 ***";
DBM_OURO_SUBMERGE_WARNING      = "*** %s 秒後奧羅可能遁地 ***";

DBM_OURO_CAST_SWEEP            = "奧羅開始施放橫掃。";
DBM_OURO_CAST_SAND_BLAST       = "奧羅開始施展沙塵爆裂。";
DBM_OURO_DIRT_MOUND_QUAKE      = "奧羅施放了召喚奧羅土堆。";
DBM_OURO_ENRAGE                = "%s進入狂暴狀態！";
DBM_OURO_ENRAGE_ANNOUNCE		= "*** 狂暴 ***";
DBM_OURO_OURO                  = "奧羅";

DBM_SBT["Submerge"]            = "潛入地下";
DBM_SBT["Emerge"]              = "鑽出地面";
DBM_SBT["Sand Blast"]          = "沙塵爆裂";
DBM_SBT["Sand Blast Cast"]     = "開始沙塵爆裂";
DBM_SBT["Sweep"]               = "橫掃"
DBM_SBT["Sweep Cast"]          = "開始橫掃";


-- 8. CThun
DBM_CTHUN_NAME                 = "克蘇恩"
DBM_CTHUN_DESCRIPTION          = "黑暗閃耀/眼球觸鬚 警報，除了第一個進房的都關閉廣播";
DBM_CTHUN_SLASHHELP1           = "/cthun start - 輸入後開啟計時";
DBM_CTHUN_SEND_WHISPER         = "發送密語通知";
DBM_CTHUN_SET_ICON             = "設置圖標";
DBM_CTHUN_RANGE_CHECK          = "距離檢查";
DBM_CTHUN_RANGE_CHECK_PHASE2       = "進入第二階段顯示範圍檢查框";

DBM_CTHUN_SMALL_EYE_WARNING        = "*** %s 秒後眼球觸鬚出現！ ***";
DBM_CTHUN_DARK_GLARE_WARNING       = "*** %s 秒後黑暗閃耀發動！ ***";
DBM_CTHUN_DARK_GLARE_ON_GROUP      = "*** 黑暗閃耀在小隊發動 ***";
DBM_CTHUN_DARK_GLARE_ON_YOU        = "黑暗閃耀在你那發動";
DBM_CTHUN_DARK_GLARE_TIMER_FAILED  = "黑暗閃耀計時調整失敗";
DBM_CTHUN_DARK_GLARE_END_WARNING   = "*** 10 秒後黑暗閃耀結束 - 注意距離！ ***";
DBM_CTHUN_GIANT_CLAW_WARNING       = "*** 10 秒後巨爪觸鬚出現 ***";
DBM_CTHUN_GIANT_AND_EYES_WARNING   = "*** 巨%s觸鬚及眼球觸鬚 10 秒後出現 ***";
DBM_CTHUN_WEAKENED_WARNING         = "*** 克蘇恩進入虛弱狀態 45 秒，全力輸出！ ***";
DBM_CTHUN_WEAKENED_ENDS_WARNING    = "*** 虛弱狀態剩下 %s 秒！ ***";
DBM_CTHUN_DARK_GLARE               = "黑暗閃耀";
DBM_CTHUN_EYE_BEAM                 = "眼棱";

DBM_CTHUN_EYE_OF_CTHUN         = "克蘇恩之眼";
DBM_CTHUN_CLAW                 = "爪";
DBM_CTHUN_EYE                  = "眼";
DBM_CTHUN_DIES                 = "克蘇恩之眼死亡了。";
DBM_CTHUN_WEAKENED             = "%s變弱了！";

DBM_SBT["Dark Glare"]          = "黑暗閃耀";
DBM_SBT["Dark Glare End"]      = "黑暗閃耀結束";
DBM_SBT["Eye Tentacles"]       = "眼球觸鬚";
DBM_SBT["Giant Eye Tentacle"]      = "巨眼觸鬚";
DBM_SBT["Giant Claw Tentacle"]     = "巨爪觸鬚";


--Viscidus
DBM_VISCIDUS_NAME              = "維希度斯";
DBM_VISCIDUS_DESCRIPTION       = "計算凍結和集中攻擊維希度斯";
DBM_VISCIDUS_SEND_WHISPER      = "發送密語";
DBM_VISCIDUS_SLASHHELP1        = "/Viscidus mt name - 設定 MT";
DBM_VISCIDUS_MT_SET            = "主坦克設定為： ";
DBM_VISCIDUS_MT_NOT_SET1       = "沒有設定主坦克！ 劇毒警告將會每15秒密給你們的MT！";
DBM_VISCIDUS_MT_NOT_SET2       = "輸入 '/vis mt name' 設定你們的 MT";

DBM_VISCIDUS_TOXIN_ON              = "*** 毒雲中 ";
DBM_VISCIDUS_TOXIN_ON_YOU          = "你在毒雲中！";
DBM_VISCIDUS_FREEZE_WARNING        = "*** 凍住 %s/3 ***";
DBM_VISCIDUS_FROZEN_WARNING        = "*** 凍住 3/3 - 15 秒後凍住 ***";
DBM_VISCIDUS_SHATTER_WARNING       = "*** 碎裂 %s/3 ***";
DBM_VISCIDUS_FROZEN_LEFT_WARNING   = "*** %s 秒後碎裂 ***";
DBM_VISCIDUS_FROST_HITS            = "凍住攻擊: ";
DBM_VISCIDUS_FROST_HITS_WARNING    = "*** %s 凍住攻擊 ***";
DBM_VISCIDUS_MELEE_HITS            = "集中攻擊: ";
DBM_VISCIDUS_MELEE_HITS_WARNING    = "*** %s 集中攻擊 ***";

DBM_VISCIDUS_SLOW_1            = "的速度慢下來了！";
DBM_VISCIDUS_SLOW_2            = "凍住了！";
DBM_VISCIDUS_SLOW_3            = "變成了堅硬的固體！";
DBM_VISCIDUS_SHATTER_1         = "開始碎裂了！";
DBM_VISCIDUS_SHATTER_2         = "馬上就要碎裂的樣子！";
DBM_VISCIDUS_VISCIDUS          = "維希度斯";

DBM_SBT["Frozen"]              = "凍住";
end
