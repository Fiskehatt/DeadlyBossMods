if (GetLocale() == "zhTW") then

-- 1. Lucifron
DBM_LUCIFRON_NAME                  = "魯西弗隆";
DBM_LUCIFRON_INFO                  = "詛咒/末日降臨 警報";
DBM_LUCIFRON_CURSE_SOON_WARNING    = "*** %s 秒後發動群體詛咒 ***";
DBM_LUCIFRON_DOOM_SOON_WARNING     = "*** %s 秒後發動末日降臨 ***";
DBM_LUCIFRON_CURSE_WARNING         = "*** 群體詛咒 - 20 秒後再次發動 ***";
DBM_LUCIFRON_DOOM_WARNING          = "*** 末日降臨 - 20 秒後再次發動 ***";
DBM_LUCIFRON_CURSE_REGEXP          = "受到了魯西弗隆的詛咒";
DBM_LUCIFRON_DOOM_REGEXP           = "魯西弗隆的末日降臨使";

-- 2. Magmadar
DBM_MAGMADAR_NAME                  = "瑪格曼達";
DBM_MAGMADAR_INFO                  = "狂暴/群體恐懼 警報";
DBM_MAGMADAR_ANNOUNCE_FRENZY       = "群體恐懼警告";
DBM_MAGMADAR_FRENZY_WARNING        = "*** 狂暴狀態！ 獵人立刻使用寧神射擊！ ***";
DBM_MAGMADAR_FEAR_WARNING1         = "*** 群體恐懼 - 30 秒後再次發動 ***";
DBM_MAGMADAR_FEAR_WARNING2         = "*** 5 秒後發動群體恐懼 ***";
DBM_MAGMADAR_FRENZY                = "%s變得極為狂暴！";
DBM_MAGMADAR_FEAR                  = "受到恐慌的傷害";

-- 3. Gehennas
DBM_GEHENNAS_NAME                  = "基赫納斯";
DBM_GEHENNAS_INFO                  = "反治療詛咒警報";
DBM_GEHENNAS_CURSE_SOON_WARN       = "*** %s 秒後發動群體反治療詛咒 ***";
DBM_GEHENNAS_CURSE_WARNING         = "*** 群體詛咒 - 30 秒後再次發動 ***";
DBM_GEHENNAS_CURSE_REGEXP          = "(.+)受到(.*)基赫納斯的詛咒";

-- 4. Garr
DBM_GARR_NAME  = "加爾";

-- 5. Geddon
DBM_BARON_NAME             = "迦頓男爵";
DBM_BARON_INFO             = "炸彈人警報";
DBM_BARON_SEND_WHISPER         = "通知目標";
DBM_BARON_SET_ICON         = "設置圖標";
DBM_BARON_BOMB_WHISPER         = "你是炸彈人！ 遠離人群！";
DBM_BARON_BOMB_WARNING         = "*** %s 是炸彈人！ 遠離人群！ ***";
DBM_BARON_INFERNO_WARNING  = "*** 地獄火 ***";
DBM_BARON_BOMB_REGEXP          = "^(.+)受到(.*)活化炸彈";
DBM_BARON_INFERNO          = "迦頓男爵獲得了地獄火的效果。";

-- 6. Shazzrah
DBM_SHAZZRAH_NAME          = "沙斯拉爾";
DBM_SHAZZRAH_INFO          = "閃現術/衰減魔法 警報";
DBM_SHAZZRAH_BLINK_WARN1       = "*** 閃現術 - 30 秒後再次發動 ***";
DBM_SHAZZRAH_BLINK_WARN2       = "***  %s 秒後發動閃現術 ***";
DBM_SHAZZRAH_DEADEN_WARN       = "*** 沙斯拉爾自身BUFF - 牧師/薩滿 驅散 ***";
DBM_SHAZZRAH_CURSE_WARNING     = "*** 群體詛咒 - 30 秒後再次發動 ***";
DBM_SHAZZRAH_CURSE_SOON_WARNING    = "***  %s 秒後發動群體詛咒 ***";
DBM_SHAZZRAH_BLINK         = "沙斯拉爾施放了沙斯拉爾之門。";
DBM_SHAZZRAH_DEADEN_MAGIC      = "沙斯拉爾獲得了衰減魔法的效果。";
DBM_SHAZZRAH_CURSE_REGEXP      = "(.+)受到(.*)沙斯拉爾";

-- 7. Sulfuron
DBM_SULFURON_NAME  = "薩弗隆先驅者";

-- 8. Golemagg
DBM_GOLEMAGG_NAME  = "焚化者古雷曼格";

-- 9. Majordomo
DBM_DOMO_NAME              = "管理者埃克索圖斯";
DBM_DOMO_INFO              = "魔法反射與傷害護盾警報";
DBM_DOMO_SHIELD_WARNING1       = "*** %s 持續 10 秒 ***";
DBM_DOMO_SHIELD_WARNING2       = "*** %s 在 %s 秒 ***";
DBM_DOMO_SHIELD_FADED          = "*** %s 警報解除 ***";
DBM_DOMO_DAMAGE_SHIELD         = "傷害護盾";
DBM_DOMO_MAGIC_REFLECTION      = "魔法反射";
DBM_DOMO_GAIN_MAGIC            = "烈焰行者(.*)獲得了魔法反射的效果。";
DBM_DOMO_GAIN_DAMAGE           = "烈焰行者(.*)獲得了傷害護盾的效果。";
DBM_DOMO_FADE_MAGIC            = "魔法反射效果從(.*)身上消失。";
DBM_DOMO_FADE_DAMAGE           = "傷害護盾效果從(.*)身上消失。";

-- 10. Ragnaros
DBM_RAGNAROS_NAME          = "拉格納羅斯";
DBM_RAGNAROS_INFO          = "群體擊退/召喚烈焰之子 警報";
DBM_RAGNAROS_EMERGED           = "*** 拉格納羅斯已經喚醒，3 分鐘後暫時消失並召喚烈焰之子 ***";
DBM_RAGNAROS_SUBMERGE_WARN     = "*** %s %s後拉格納羅斯將暫時消失並召喚烈焰之子 ***";
DBM_RAGNAROS_SUBMERGED         = "*** 拉格納羅斯消失 90 秒！ 烈焰之子出現！ ***";
DBM_RAGNAROS_EMERGE_WARN       = "*** %s %s 秒後發動群體擊退技能，近戰後退！ ***";
DBM_RAGNAROS_WRATH_WARN1       = "*** 群體擊退！近戰後退！ ***";
DBM_RAGNAROS_WRATH_WARN2       = "*** %s 秒後發動群體擊退技能，近戰後退！ ***";
DBM_RAGNAROS_HITS          = "拉格納羅斯的(.+)擊中(.+)造成(%d+)點傷害";
DBM_RAGNAROS_WRATH         = "感受薩弗隆的烈焰吧！";
DBM_RAGNAROS_SUBMERGE          = "出現吧，我的奴僕! 保衛你們的主人!";

end                    
