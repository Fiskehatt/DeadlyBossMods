

if (GetLocale() == "zhTW") then

--classes
DBM_MAGE           = "法師";
DBM_PRIEST         = "牧師";
DBM_PALADIN        = "聖騎士";
DBM_DRUID          = "德魯伊";
DBM_WARLOCK        = "術士";
DBM_ROGUE          = "盜賊";
DBM_HUNTER         = "獵人";
DBM_WARRIOR        = "戰士";
DBM_SHAMAN         = "薩滿";

--zones
DBM_NAXX           = "納克薩瑪斯";
DBM_AQ40           = "安其拉";
DBM_BWL            = "黑翼之巢";
DBM_MC             = "熔火之心";
DBM_AQ20           = "安其拉廢墟";
DBM_ZG             = "祖爾格拉布";
DBM_ONYXIAS_LAIR   = "奧妮克希亞的巢穴";
DBM_DUSKWOOD       = "暮色森林";
DBM_ASHENVALE      = "梣谷";
DBM_FERALAS        = "菲拉斯";
DBM_HINTERLANDS    = "辛特蘭";
DBM_BLASTED_LANDS  = "詛咒之地";
DBM_AZSHARA        = "艾薩拉";
DBM_ARATHI			= "阿拉希盆地";
DBM_WARSONG		= "戰歌峽谷";
DBM_ALTERAC		= "奧特蘭克山谷";
DBM_OTHER          = "其他";

--Gui Tabs
DBMGUI_TAB_NAXX				= "Naxxramas";		-- DONT TRANSLATE !!!
DBMGUI_TAB_AQ40				= "Ahn'Qiraj";		-- DONT TRANSLATE !!!
DBMGUI_TAB_BWL					= "BlackWingLair";	-- DONT TRANSLATE !!!
DBMGUI_TAB_MC					= "Molten Core";	-- DONT TRANSLATE !!!
DBMGUI_TAB_20PL				= "20 Player";		-- DONT TRANSLATE !!!
DBMGUI_TAB_OTHER				= "Other";		-- DONT TRANSLATE !!!


--spells/buffs
DBM_CHARGE         = "衝鋒";
DBM_FERALCHARGE    = "野性衝鋒";
DBM_BLOODRAGE      = "血性狂暴";
DBM_REDEMPTION     = "救贖之魂";
DBM_FEIGNDEATH     = "假死";
DBM_MINDCONTROL    = "精神控制";

--create status bar timer localization table
DBM_SBT = {};

--key bindings
BINDING_HEADER_DBM     = "La Vendetta Boss Mods";
BINDING_NAME_DBMTOGGLE     = "開啟圖形界面";

--OnLoad messages
DBM_LOADED             = "La Vendetta Boss Mods v%s 由 La Vendetta|Nitram @ EU-Azshara 與 DeadlyMinds|Tandanu @ EU-Aegwynn 製作, 已載入.";
DBM_MODS_LOADED        = "%s %s boss mods 已載入."

--Slash command messages
DBM_MOD_ENABLED        = "Boss mod 已啟用.";
DBM_MOD_DISABLED       = "Boss mod 已禁用.";
DBM_ANNOUNCE_ENABLED   = "開啟廣播";
DBM_ANNOUNCE_DISABLED  = "關閉廣播";
DBM_MOD_STOPPED        = "計時停止";
DBM_MOD_INFO           = "Boss mod v%s 由 %s";
DBM_SLASH_HELP1        = " 開啟/關閉";
DBM_SLASH_HELP2        = " 廣播 開啟/關閉";
DBM_SLASH_HELP3        = " 停止";
DBM_SLASH_HELP4        = "你可以使用 %s 替代 /%s.";
DBM_RANGE_CHECK        = "超過30碼外: ";
DBM_FOUND_CLIENTS      = "發現 %s 個玩家使用 Vendetta Boss Mods";

--Sync options
DBM_SOMEONE_SET_SYNC_CHANNEL   = "%s 設置同步頻道為: %s";
DBM_SET_SYNC_CHANNEL           = "同步頻道設為: %s";
DBM_CHANNEL_NOT_SET            = "未設置頻道, 無法廣播.";
DBM_NEED_LEADER                = "你必須為助理或團長才能對頻道廣播!";
DBM_NEED_LEADER_STOP_ALL       = "你必須為助理或團長才能使用此功能!";
DBM_ALL_STOPPED                = "停止所有計時器.";
DBM_REC_STOP_ALL               = "停止接收來自 %s 的所有命令.";

--Update dialog
DBM_UPDATE_DIALOG              = "你的 La Vendetta Boss Mod 已經過期!\n%s 和 %s 有版本 %s.\n請參觀 www.curse-gaming.com 以取得最新版本.";
DBM_YOUR_VERSION_SUCKS         = "你的 La Vendetta Boss Mod 已經過期! 請參觀 www.curse-gaming.com 以取得最新版本.";
DBM_REQ_PATCHNOTES             = "向 %s 請求改版記錄...請稍待.";
DBM_SHOW_PATCHNOTES            = "顯示改版記錄";
DBM_PATCHNOTES                 = "改版記錄";
DBM_COPY_PASTE_URL             = "複製與貼上網址";
DBM_COPY_PASTE_NOW             = "按下 ctrl-c 複製網址到剪貼簿"

--Status Bar Timers
DBM_SBT_TIMELEFT               = "剩餘時間:"
DBM_SBT_TIMEELAPSED            = "已用時間:"
DBM_SBT_TOTALTIME              = "總時間:"
DBM_SBT_REPETITIONS            = "循環:";
DBM_SBT_INFINITE               = "無限";
DBM_SBT_BOSSMOD                = "Boss mod:"
DBM_SBT_STARTEDBY              = "開始於:"
DBM_SBT_RIGHTCLICK             = "在控制條上右鍵點擊以隱藏它.";
DBM_SBT_LEFTCLICK              = "Shift + 左鍵點擊控制條以廣播它";
DBM_TIMER_IS_ABOUT_TO_EXPIRE   = "計時器 \"%s\" 快要過期了!";
DBM_BAR_STYLE_DEFAULT          = "預設";
DBM_BAR_STYLE_MODERN           = "現代";
DBM_BAR_STYLE_CLOUDS           = "朦朧";
DBM_BAR_STYLE_PERL             = "Perl";


--Combat messages
DBM_BOSS_ENGAGED               = "%s 開戰. 祝好運與盡興! :)";
DBM_BOSS_SYNCED_BY             = "(從 %s 接收同步訊息)";
DBM_BOSS_DOWN                  = "%s 倒地, 經過 %s!";
DBM_COMBAT_ENDED               = "戰鬥經過 %s 結束.";
DBM_DEFAULT_BUSY_MSG           = "%P 正在忙碌. (正在進行戰鬥 %B - %HP - %ALIVE/%RAID 人還活著) 等戰鬥結束之後將回應你.";
DBM_RAID_STATUS_WHISPER        = "%B - %HP - %ALIVE/%RAID 人還活著.";
DBM_SEND_STATUS_INFO           = "密語 \"status\" 取得團隊的狀態.";
DBM_AUTO_RESPOND_SHORT         = "已自動回應.";
DBM_AUTO_RESPOND_LONG          = "已自動回應 %s 的密語.";
DBM_MISSED_WHISPERS            = "在戰鬥中沒有看到的密語:";
DBM_SHOW_MISSED_WHISPER        = "|Hplayer:%1\$s|h[%1\$s]|h: %2\$s";
DBM_BALCONY_PHASE              = "上看台, 階段 #%s";

--Misc stuff
DBM_YOU                        = "你";
DBM_ARE                        = "了";
DBM_IS                         = "受到";
DBM_OR                         = "或";
DBM_AND                        = "和";
DBM_UNKNOWN                    = "未知";
DBM_LOCAL                      = "本地";
DBM_DEFAULT_DESCRIPTION        = "無描述.";
DBM_SEC                        = "秒";
DBM_MIN                        = "分";
DBM_SECOND                     = "秒";
DBM_SECONDS                    = "秒";
DBM_MINUTES                    = "分鐘";
DBM_MINUTE                     = "分鐘";
DBM_HIT                        = "命中";
DBM_HITS                       = "擊中";
DBM_CRIT                       = "致命一擊";
DBM_CRITS                      = "致命";
DBM_MISS                       = "未命中";
DBM_DODGE                      = "閃躲";
DBM_PARRY                      = "招架";
DBM_FROST                      = "冰霜";
DBM_ARCANE                     = "祕法";
DBM_FIRE                       = "火焰";
DBM_HOLY                       = "神聖";
DBM_NATURE                     = "自然";
DBM_SHADOW                     = "暗影";
DBM_CLOSE                      = "關閉";
DBM_AGGRO_FROM                 = "盯上你了！";
DBM_SET_ICON                   = "設定圖示";
DBM_SEND_WHISPER               = "發送密語";
DBM_DEAD                       = "死亡";
DBM_OFFLINE                    = "離線";
DBM_PHASE                      = "階段 %s";
DBM_WAVE                       = "第 %s 波";


-- Added 11.11.06
DBM_NOGUI_ERROR				= "抱歉, 請啟用 DBM GUI 以便存取這個函式";
DBM_NOSYNCBARS					= "現在沒有任何狀態條";

-- Added 1.12.06
DBMGUI_DISTANCE_FRAME_TITLE        = "距離";
DBMGUI_DISTANCE_FRAME_TEXT         = "過近:";

DBMGUI_INFOFRAME_TOOLTIP_TITLE     = "資訊框";
DBMGUI_INFOFRAME_TOOLTIP_TEXT      = "右鍵拖曳移動\nShift + 右鍵隱藏";

DBMGUI_STATUSBAR_WIDTH_SLIDER      = "條寬";
DBMGUI_STATUSBAR_SCALE_SLIDER      = "條的縮放比";

DBMGUI_BUTTON_RANGECHECK           = "距離檢查";
DBMGUI_TOOLTIP_RANGECHECK_TITLE    = "距離檢查";
DBMGUI_TOOLTIP_RANGECHECK_TEXT     = "檢查誰離你超過30碼";

DBMGUI_BUTTON_DISTANCEFRAME        = "距離框";
DBMGUI_TOOLTIP_DISTANCEFRAME_TITLE = "距離框";
DBMGUI_TOOLTIP_DISTANCEFRAME_TEXT  = "顯示或關閉距離檢查框。這是檢查誰離你太近(低於10碼)用的。打類似哈霍蘭或是克蘇恩之類的王會很有用。";

DBM_GUI_COMBATLOG_RANGE_TITLE      = "戰鬥紀錄距離";
DBM_GUI_COMBATLOG_MIN_RANGE        = "戰鬥紀錄距離設定為最短距離";
DBM_GUI_COMBATLOG_MAX_RANGE        = "戰鬥紀錄距離設定為最大距離";
DBM_GUI_COMBATLOG_LONG_RANGE       = "戰鬥紀錄距離設定為長距離";
DBM_GUI_COMBATLOG_DEFAULT_RANGE    = "戰鬥紀錄距離設定為預設距離";

end

