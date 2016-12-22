-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

-- 1. Lucifron
	DBM_LUCIFRON_NAME				= "鲁西弗隆";
	DBM_LUCIFRON_INFO				= "警报鲁西弗隆的诅咒和末日降临";
	DBM_LUCIFRON_CURSE_SOON_WARNING	= "*** 鲁西弗隆的诅咒 - %s秒后施放 ***";
	DBM_LUCIFRON_DOOM_SOON_WARNING	= "*** 末日降临 - %s秒后施放 ***";
	DBM_LUCIFRON_CURSE_WARNING		= "*** 鲁西弗隆的诅咒 - 20秒后再次施放 ***";
	DBM_LUCIFRON_DOOM_WARNING		= "*** 末日降临 - 20秒后再次施放 ***";
	DBM_LUCIFRON_CURSE_REGEXP		= "([^%s]+)受到了鲁西弗隆的诅咒效果的影响。";
	DBM_LUCIFRON_DOOM_REGEXP		= "([^%s]+)受到了末日降临效果的影响。";
	
	DBM_SBT["Curse"]				= "诅咒";
	DBM_SBT["Impending Doom"]		= "末日降临";


-- 2. Magmadar
	DBM_MAGMADAR_NAME				= "玛格曼达";
	DBM_MAGMADAR_INFO				= "警报恐慌和狂暴";
	DBM_MAGMADAR_ANNOUNCE_FRENZY	= "警报狂暴";
	DBM_MAGMADAR_FRENZY_WARNING		= "*** 疯狂 ***";
	DBM_MAGMADAR_FEAR_WARNING1		= "*** 恐慌 - 30秒后再次施放 ***";
	DBM_MAGMADAR_FEAR_WARNING2		= "*** 恐慌 - 5秒后施放 ***";
	DBM_MAGMADAR_FRENZY 			= "%s变得极为狂暴！";
	DBM_MAGMADAR_FEAR				= "([^%s]+)受到了恐慌效果的影响。";
	
	DBM_SBT["Frenzy"]				= "疯狂";
	DBM_SBT["Fear"]					= "恐慌";


-- 3. Gehennas
	DBM_GEHENNAS_NAME				= "基赫纳斯";
	DBM_GEHENNAS_INFO				= "警报基赫纳斯的诅咒";
	DBM_GEHENNAS_CURSE_SOON_WARN	= "*** 基赫纳斯的诅咒 - %s秒后施放 ***";
	DBM_GEHENNAS_CURSE_WARNING		= "*** 基赫纳斯的诅咒 - 30秒后再次施放 ***";	
	DBM_GEHENNAS_CURSE_REGEXP		= "([^%s]+)受到了基赫纳斯的诅咒效果的影响。";
	
	DBM_SBT["Curse"]				= "诅咒";


-- 4. Garr
	DBM_GARR_NAME	= "加尔";


-- 5. Geddon
	DBM_BARON_NAME				= "迦顿男爵";
	DBM_BARON_INFO 				= "警报活化炸弹";
	DBM_BARON_SEND_WHISPER		= "密语玩家";
	DBM_BARON_SET_ICON			= "添加标注";
	DBM_BARON_BOMB_WHISPER		= "你是炸弹！";
	DBM_BARON_BOMB_WARNING    	= "*** %s变成了炸弹 ***";
	DBM_BARON_INFERNO_WARNING	= "*** 地狱火 ***";
	DBM_BARON_BOMB_REGEXP	 	= "([^%s]+)受([^%s]+)活化炸弹效果的影响。";
	DBM_BARON_INFERNO			= "迦顿男爵获得了地狱火的效果。";
	
	DBM_SBT["Inferno"]			= "地狱火";


-- 6. Shazzrah
	DBM_SHAZZRAH_NAME				= "沙斯拉尔";
	DBM_SHAZZRAH_INFO				= "警报沙斯拉尔的诅咒和衰减魔法";
	DBM_SHAZZRAH_BLINK_WARN1		= "*** 闪现术 - 30秒后再次施放 ***";
	DBM_SHAZZRAH_BLINK_WARN2		= "*** 闪现术 - %秒后施放 ***";
	DBM_SHAZZRAH_DEADEN_WARN		= "*** 衰减魔法 - 牧师和萨满祭司驱散 ***";
	DBM_SHAZZRAH_CURSE_WARNING		= "*** 沙斯拉尔的诅咒 - 20秒后再次施放 ***";
	DBM_SHAZZRAH_CURSE_SOON_WARNING	= "*** 沙斯拉尔的诅咒 - %秒后施放 ***";
	DBM_SHAZZRAH_BLINK		 		= "沙斯拉尔获得了闪现术的效果。";
	DBM_SHAZZRAH_DEADEN_MAGIC		= "沙斯拉尔获得了衰减魔法的效果。";
	DBM_SHAZZRAH_CURSE_REGEXP		= "沙斯拉尔的诅咒";
	--DBM_SHAZZRAH_CURSE_REGEXP		= "([^%s]+)受到了沙斯拉尔的诅咒效果的影响。";
	
	DBM_SBT["Curse"]				= "诅咒";


-- 7. Sulfuron
	DBM_SULFURON_NAME	= "萨弗隆先驱者";


-- 8. Golemagg
	DBM_GOLEMAGG_NAME	= "焚化者古雷曼格";


-- 9. Majordomo
	DBM_DOMO_NAME				= "管理者埃克索图斯";
	DBM_DOMO_INFO 				= "警报伤害反射护盾和魔法反射";
	DBM_DOMO_SHIELD_WARNING1 	= "*** %s施放 - 持续10秒 ***";
	DBM_DOMO_SHIELD_FADED		= "*** %s消失 ***";
	DBM_DOMO_DAMAGE_SHIELD		= "伤害反射护盾";
	DBM_DOMO_MAGIC_REFLECTION	= "魔法反射";
	DBM_DOMO_GAIN_MAGIC			= "烈焰行者([^%s]+)获得了魔法反射的效果。";
	DBM_DOMO_GAIN_DAMAGE		= "烈焰行者([^%s]+)获得了伤害反射护盾的效果。";
	DBM_DOMO_FADE_MAGIC 		= "魔法反射效果从烈焰行者([^%s]+)身上消失。";
	DBM_DOMO_FADE_DAMAGE	 	= "伤害反射护盾效果从烈焰行者([^%s]+)身上消失。";
	DBM_DOMO_SHIELD_WARNING_NEW	= "*** 反射护盾 - 5秒后再次施放 ***";

	DBM_SBT["Damage shield"]	= "伤害反射护盾";
	DBM_SBT["Magic reflection"]	= "魔法反射";
	DBM_SBT["Shield CD"]		= "护盾冷却";


-- 10. Ragnaros
	DBM_RAGNAROS_NAME				= "拉格纳罗斯";
	DBM_RAGNAROS_INFO				= "警报拉格纳罗斯之怒和下潜";
	DBM_RAGNAROS_EMERGED			= "*** 拉格纳罗斯重新出现 - 3分钟后再次下潜 ***";
	DBM_RAGNAROS_SUBMERGE_WARN		= "*** %s%s后下潜 ***";
	DBM_RAGNAROS_SUBMERGED			= "*** 拉格纳罗斯下潜90秒 ***";
	DBM_RAGNAROS_EMERGE_WARN		= "*** %s%s后重新出现 ***";
	DBM_RAGNAROS_WRATH_WARN1		= "*** 拉格纳罗斯之怒 - 30秒后再次施放 ***";
	DBM_RAGNAROS_WRATH_WARN2		= "*** 拉格纳罗斯之怒 - %s秒后施放 ***";
	DBM_RAGNAROS_HITS				= "拉格纳罗斯([hitscr]+)([^%s]+)造成(%d+)";
	DBM_RAGNAROS_WRATH	 			= "尝尝萨弗隆的火焰吧！";
	DBM_RAGNAROS_SUBMERGE 			= "出现吧，我的奴仆！保卫你们的主人！";
	
	DBM_SBT["Wrath of Ragnaros"]	= "拉格纳罗斯之怒";
	DBM_SBT["Submerge"]				= "下潜";
	DBM_SBT["Emerge"]				= "重新出现";

end
