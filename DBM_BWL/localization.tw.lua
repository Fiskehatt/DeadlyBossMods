if (GetLocale() == "zhTW") then

--Razorgore
DBM_RG_NAME                = "狂野的拉佐格爾";
DBM_RG_DESCRIPTION         = "心靈控制/摧毀蛋 警報";
DBM_RG_YELL                = "入侵者已經到達孵卵所了，鳴放警報！不惜一切代價也要保護這些蛋！";

DBM_RG_CONTROLLER          = "黑翼控制者";


--Vaelastrasz
DBM_VAEL_NAME              = "墮落的瓦拉斯塔茲";
DBM_VAEL_DESCRIPTION       = "燃燒刺激警報";
DBM_VAEL_SEND_WHISPER      = "通知目標";
DBM_VAEL_SET_ICON          = "設置圖示";

DBM_VAEL_BA_WARNING        = "*** %s 正在燃燒！ ***";
DBM_VAEL_BA_WHISPER        = "你正在燃燒！";
DBM_VAEL_BA                = "燃燒刺激";

DBM_VAEL_BA_REGEXP         = "([^%s]+)受到(.*)燃燒刺激";
DBM_VAEL_BA_FADES_REGEXP   = "燃燒刺激效果從([^%s]+)身上消失。";

--Lashlayer
DBM_LASHLAYER_NAME         = "勒西雷爾";
DBM_LASHLAYER_YELL         = "你怎麼進來的？你們這種生物不能進來！我要毀滅你們！";

--Firemaw/Ebonroc/Flamegor
DBM_FIREMAW_NAME               = "費爾默";
DBM_FIREMAW_DESCRIPTION        = "龍翼打擊/暗影烈焰 警報";
DBM_EBONROC_NAME               = "埃博諾克";
DBM_EBONROC_DESCRIPTION        = "龍翼打擊/暗影烈焰/埃博諾克之影 警報";
DBM_EBONROC_SET_ICON           = "設置圖示"
DBM_FLAMEGOR_NAME              = "弗萊格爾";
DBM_FLAMEGOR_DESCRIPTION       = "龍翼打擊/狂暴 警報";
DBM_FLAMEGOR_ANNOUNCE_FRENZY       = "狂暴警報";

DBM_FIREMAW_FIREMAW            = "費爾默";
DBM_EBONROC_EBONROC            = "埃博諾克";
DBM_FLAMEGOR_FLAMEGOR          = "弗萊格爾";

DBM_FIREMAW_WING_BUFFET        = "費爾默開始施放龍翼打擊。";
DBM_EBONROC_WING_BUFFET        = "埃博諾克開始施放龍翼打擊。";
DBM_FLAMEGOR_WING_BUFFET       = "弗萊格爾開始施放龍翼打擊。";

DBM_FIREMAW_SHADOW_FLAME       = "費爾默開始施放暗影烈焰。";
DBM_EBONROC_SHADOW_FLAME       = "埃博諾克開始施放暗影烈焰。";
DBM_FLAMEGOR_SHADOW_FLAME      = "弗萊格爾開始施放暗影烈焰。";

DBM_SHADOW_FLAME_WARNING       = "*** 2 秒後發動暗影烈焰 ***";
DBM_WING_BUFFET_WARNING        = "*** %s 秒後發動龍翼打擊 ***";
DBM_EBONROC_SHADOW_WARNING     = "*** %s 中了埃博諾克之影 ***";
DBM_FLAMEGOR_FRENZY            = "%s變得狂暴起來！";
DBM_FLAMEGOR_FRENZY_ANNOUNCE   = "*** 狂暴 ***";

DBM_EBONROC_SHADOW_REGEXP      = "^(.+)受到(.*)埃博諾克之影";
DBM_EBONROC_SHADOW_REGEXP2     = "埃博諾克之影效果從(.+)";

DBM_SBT["Wing Buffet"]         = "龍翼打擊";
DBM_SBT["Wing Buffet Cast"]    = "施放龍翼打擊";
DBM_SBT["Shadow Flame Cast"]   = "施放暗影烈焰";


--Chromaggus
DBM_CHROMAGGUS_NAME            = "克洛瑪古斯";
DBM_CHROMAGGUS_DESCRIPTION     = "吐息/狂暴/抗性改變/弱點 警報";
DBM_CHROMAGGUS_ANNOUNCE_FRENZY     = "狂暴警告";
DBM_CHROMAGGUS_ANNOUNCE_VULNERABILITY  = "抗性弱點偵查"
DBM_CHROMAGGUS_BREATH_1        = "吐息一";
DBM_CHROMAGGUS_BREATH_2        = "吐息二";

DBM_CHROMAGGUS_BREATH_CAST_WARNING = "*** 克洛瑪古斯開始施放 %s ***"
DBM_CHROMAGGUS_BREATH_WARNING      = "*** 10 秒內施放 %s ***"

DBM_CHROMAGGUS_BREATH_REGEXP       = "克洛瑪古斯開始施放(.+)。";
DBM_CHROMAGGUS_VULNERABILITY_REGEXP    = ".+的.+克洛瑪古斯(.*)造成(%d+)點(.+)傷害。";
DBM_CHROMAGGUS_CHROMAGGUS      = "克洛瑪古斯";

DBM_CHROMAGGUS_FRENZY_EXPR			= "%s變得極為狂暴！";
DBM_CHROMAGGUS_FRENZY_ANNOUNCE			= "*** 狂暴 ***";

DBM_CHROMAGGUS_VULNERABILITY_EXPR		= "%s因皮膚閃著微光而驚訝退縮。";
DBM_CHROMAGGUS_VULNERABILITY_ANNOUNCE		= "*** 抗性已經改變 ***";
DBM_CHROMAGGUS_NEW_VULNERABILITY_ANNOUNCE  = "*** 新弱點: ";

DBM_SBT["Breath 1"]            = "吐息一";
DBM_SBT["Breath 2"]            = "吐息二";

--Nefarian
DBM_NEFARIAN_NAME              = "奈法利安";
DBM_NEFARIAN_DESCRIPTION       = "職業點名計時";
--DBM_NEFARIAN_BLOCK_HEALS       = "點名牧師時禁止治療";
DBM_NEFARIAN_UNEQUIP_BOW       = "點名獵人時自動卸下遠程武器";

DBM_NEFARIAN_SYNCKILLS_INFO	= "在第一階段同步並廣播龍獸擊殺數";
DBM_NEFARIAN_SYNCKILLS_ANNOUNCE	= "*** %d 隻龍獸已倒地 ***";

DBM_NEFARIAN_FEAR_WARNING          = "*** 1.5 秒後群體恐懼 ***";
DBM_NEFARIAN_PHASE2_WARNING        = "*** 奈法利安將在 15 秒後降落 ***";
DBM_NEFARIAN_CLASS_CALL_WARNING    = "*** 職業點名 - 獵人換弓/牧師停止施放恢復 ***";
DBM_NEFARIAN_SHAMAN_WARNING        = "*** 薩滿 - 圖騰湧現 ***";
DBM_NEFARIAN_PALA_WARNING          = "*** 聖騎士 - BOSS受到保護祝福，物理攻擊免疫 30 秒 ***";
DBM_NEFARIAN_DRUID_WARNING     = "*** 德魯伊 - 強制貓形態 ***";
DBM_NEFARIAN_PRIEST_WARNING        = "*** 牧師 - 停止治療! ***";
DBM_NEFARIAN_WARRIOR_WARNING       = "*** 戰士 - 強制狂暴姿態 ***";
DBM_NEFARIAN_ROGUE_WARNING     = "*** 盜賊 - 被傳送, MT將龍頭偏向 ***";
DBM_NEFARIAN_WARLOCK_WARNING       = "*** 術士 - 地獄火出現，DPS職業盡快將其消滅 ***";
DBM_NEFARIAN_HUNTER_WARNING        = "*** 獵人 - 遠程武器損壞 ***";
DBM_NEFARIAN_MAGE_WARNING      = "*** 法師 - 變形術發動，注意解除 ***";
DBM_NEFARIAN_PRIEST_CALL       = "牧師點名";
--DBM_NEFARIAN_HEAL_BLOCKED      = "牧師點名時禁止施放 %s!";
DBM_NEFARIAN_UNEQUIP_ERROR         = "當卸除你的弓/槍的時候發生錯誤."
DBM_NEFARIAN_EQUIP_ERROR           = "當裝備你的弓/槍的時候發生錯誤."
DBM_NEFARIAN_PHASE3_WARNING    = "*** 第三階段 - AoE ***";

DBM_NEFARIAN_DRAKONID_DOWN = {};
DBM_NEFARIAN_DRAKONID_DOWN[1] = "黑色龍獸死亡了。";
DBM_NEFARIAN_DRAKONID_DOWN[2] = "藍色龍獸死亡了。";
DBM_NEFARIAN_DRAKONID_DOWN[3] = "綠色龍獸死亡了。";
DBM_NEFARIAN_DRAKONID_DOWN[4] = "青銅龍獸死亡了。";
DBM_NEFARIAN_DRAKONID_DOWN[5] = "紅色龍獸死亡了。";
DBM_NEFARIAN_DRAKONID_DOWN[6] = "多彩龍獸死亡了。";

DBM_NEFARIAN_KILLCOUNT			= "目前擊殺: %d";

--[[DBM_NEFARIAN_BLOCKED_SPELLS    = {
    ["快速治療"]            = 1.5,
    ["強效治療術"]          = 2.5,
    ["治療禱言"]            = 3,
    ["治療術"]              = 2.5,
    ["次級治療術"]          = 1.5,
--  ["神聖新星"]            = 0,
}]]

DBM_NEFARIAN_CAST_SHADOW_FLAME     = "奈法利安開始施放暗影烈焰。";
DBM_NEFARIAN_CAST_FEAR         = "奈法利安開始施放低沉咆哮。";
DBM_NEFARIAN_YELL_PHASE1       = "讓遊戲開始吧！";
DBM_NEFARIAN_YELL_PHASE2       = "幹得好，我的手下。凡人的勇氣開始消退！現在，現在讓我們看看他們如何應對黑石尖塔真正主人的力量！！！";
DBM_NEFARIAN_YELL_PHASE3       = "不可能！出現吧，我的僕人！再次為我的主人服務！";
DBM_NEFARIAN_YELL_SHAMANS      = "薩滿，讓我看看";
DBM_NEFARIAN_YELL_PALAS        = "聖騎士……聽說你有無數條命。讓我看看到底是怎麼樣的吧。";
DBM_NEFARIAN_YELL_DRUIDS       = "德魯伊和你們愚蠢的變形。讓我們看看什麼會發生吧！";
DBM_NEFARIAN_YELL_PRIESTS      = "牧師！如果你要繼續這麼治療的話，那我們來玩點有趣的東西！";
DBM_NEFARIAN_YELL_WARRIORS     = "戰士，我知道你應該比較抗打！讓我們來見識一下吧！";
DBM_NEFARIAN_YELL_ROGUES       = "盜賊？不要躲了，面對我吧！";
DBM_NEFARIAN_YELL_WARLOCKS     = "術士，不要隨便去玩那些你不理解的法術。看看會發生什麼吧？";
DBM_NEFARIAN_YELL_HUNTERS      = "獵人和你那討厭的豌豆射擊！";
DBM_NEFARIAN_YELL_MAGES        = "還有法師？你應該小心使用你的魔法……";
DBM_NEFARIAN_YELL_DEAD         = "這不可能！我是這裡的主人！你們凡人對於我來說一無是處！聽到了沒有？一無是處！";

DBM_SBT["Class call CD"]       = "職業點名 CD";
DBM_SBT["Druid call"]          = "點名德魯伊";
DBM_SBT["Priest call"]         = "點名牧師";
DBM_SBT["Warrior call"]        = "點名戰士";
DBM_SBT["Rogue call"]          = "點名盜賊";
DBM_SBT["Mage call"]           = "點名法師";

end
