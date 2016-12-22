-- 
-- Onyxia Beta v1.0
--

DBM.AddOns.Onyxia = { 
	["Name"] = DBM_ONYXIA_NAME,
	["Abbreviation1"] = "ony", 
	["Version"] = "1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_ONYXIA_INFO,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 6,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( (event == "CHAT_MSG_MONSTER_EMOTE") and ( arg1 == DBM_ONYXIA_BREATH_EMOTE ) ) then
			DBM.Announce(DBM_ONYXIA_BREATH_ANNOUNCE);

		elseif ( (event == "CHAT_MSG_MONSTER_YELL") and (arg1 == DBM_ONYXIA_PHASE2_YELL) ) then
			DBM.Announce(DBM_ONYXIA_PHASE2_ANNOUNCE);

		elseif ( (event == "CHAT_MSG_MONSTER_YELL") and (arg1 == DBM_ONYXIA_PHASE3_YELL) ) then
			DBM.Announce(DBM_ONYXIA_PHASE3_ANNOUNCE);

		end
	end,		
};
