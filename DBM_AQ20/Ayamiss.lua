-- 
-- Ayamiss the Hunter Beta v0.1
--

DBM.AddOns.Ayamiss = { 
	["Name"] = DBM_AYAMISS_NAME,
	["Abbreviation1"] = "Ayamiss", 
	["Version"] = "0.1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_AYAMISS_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 15,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
			local _, _, sArg1, sArg2 = string.find(arg1, DBM_AYAMISS_SACRIFICE_EXPR);
		
			if ( sArg1 and sArg2 ) then
				if ( sArg1 == DBM_YOU and sArg2 == DBM_ARE ) then
					sArg1 = UnitName("player");
				end
			
				DBM.Announce( string.format(DBM_AYAMISS_SACRIFICE_ANNOUNCE, sArg1) );
			end
	end,		
};
