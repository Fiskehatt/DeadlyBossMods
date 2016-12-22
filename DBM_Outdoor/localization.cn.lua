-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/28/2007                   --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then

-- LVOnyxia
	DBM_ONYXIA_NAME				= "奥妮克希亚";
	DBM_ONYXIA_INFO				= "警报深呼吸";
	DBM_ONYXIA_BREATH_EMOTE 	= "%s深深地吸了一口气……";
	DBM_ONYXIA_BREATH_ANNOUNCE	= "*** 深呼吸 ***"
	DBM_ONYXIA_PHASE2_YELL		= "这毫无意义的行动让我很厌烦。我会从上空把你们都烧成灰！";
	DBM_ONYXIA_PHASE2_ANNOUNCE	= "*** 第二阶段 ***"
	DBM_ONYXIA_PHASE3_YELL		= "看起来需要再给你一次教训，凡人！";
	DBM_ONYXIA_PHASE3_ANNOUNCE	= "*** 第三阶段 ***"


-- LVLordKazzak
	DBM_KAZZAK_NAME					= "卡扎克";
	DBM_KAZZAK_INFO					= "警报上帝模式剩余时间";
	DBM_KAZZAK_START_YELL			= "为了军团！为了基尔加丹！";
	DBM_KAZZAK_NAME					= "卡扎克";
	DBM_KAZZAK_BAR_TEXT				= "上帝模式";
	DBM_KAZZAK_DIES					= "卡扎克死亡了。";
	DBM_KAZZAK_ANNOUNCE_START		= "*** 3分钟后卡扎克进入上帝模式 ***";
	DBM_KAZZAK_ANNOUNCE_TIMENEEDED	= "*** %d秒内干掉它！ ***";
	DBM_KAZZAK_ANNOUNCE_SEC			= "*** %d秒后卡扎克进入上帝模式 ***";


-- LVAzuregos
	DBM_AZUREGOS_NAME					= "艾索雷葛斯";
	DBM_AZUREGOS_INFO					= "警报传送和魔法反射";
	DBM_AZUREGOS_SHIELDUP_EXPR			= "艾索雷葛斯获得了反射的效果。";
	DBM_AZUREGOS_SHIELDUP_ANNOUNCE		= "*** 魔法反射 - 停止对其施法 ***";
	DBM_AZUREGOS_SHIELDDOWN_EXPR 		= "反射效果从艾索雷葛斯身上消失。";
	DBM_AZUREGOS_SHIELDDOWN_ANNOUNCE	= "*** 魔法反射消失 ***";
	DBM_AZUREGOS_PORT_EXPR 				= "来吧，小家伙们。面对我！"
	DBM_AZUREGOS_PORT_ANNOUNCE			= "*** 传送 ***";

--Outdoor Dragons
	DBM_OUTDOOR_NAME			= "梦魇巨龙";
	DBM_OUTDOOR_DESCRIPTION		= "警报毒性吐息和艾莫莉丝的快速传染";
	DBM_OUTDOOR_YSONDRE			= "伊森德雷";
	DBM_OUTDOOR_EMERISS			= "艾莫莉丝";
	DBM_OUTDOOR_TAERAR			= "泰拉尔";
	DBM_OUTDOOR_LETHON			= "莱索恩";
	
	DBM_OUTDOOR_BREATH_NOW		= "*** 毒性吐息 - 30秒后再次施放 ***";
	DBM_OUTDOOR_BREATH_WARNING	= "*** 毒性吐息 - %秒后施放 ***";
	DBM_OUTDOOR_INFECT_WARN		= "*** %s受到了快速传染 ***";
	DBM_OUTDOOR_INFECT_SPECIAL	= "你受到了快速传染！";
	
	DBM_OUTDOOR_NOX_BREATH		= "([^%s]+)受([^%s]+)毒性吐息效果的影响。";
	DBM_OUTDOOR_NOX_RESIST		= "([^%s]+)毒性吐息被([^%s]+)抵抗了。";
	DBM_OUTDOOR_INFECTION		= "([^%s]+)受([^%s]+)快速传染效果的影响。";
	
	DBM_OUTDOOR_LOCATION_1		= DBM_DUSKWOOD;
	DBM_OUTDOOR_LOCATION_2		= DBM_ASHENVALE;
	DBM_OUTDOOR_LOCATION_3		= DBM_FERALAS;
	DBM_OUTDOOR_LOCATION_4		= DBM_HINTERLANDS;
	
	DBM_SBT["Noxious Breath"]	= "毒性吐息";
	
end
