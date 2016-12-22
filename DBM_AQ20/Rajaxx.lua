-- 
-- General Rajaxx v1.0
--

DBM.AddOns.Rajaxx = { 
	["Name"] = DBM_RAJAXX_NAME,
	["Abbreviation1"] = "Rajaxx", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_RAJAXX_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 12,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
	},	
	["OnEvent"] = function(event, arg1) 

		if ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if (    string.find(arg1, DBM_RAJAXX_WAVE1_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 1));
				-- no yell @ wave 2 -.- we could count the mobs killed after wave 1....but....bah.
			elseif (string.find(arg1, DBM_RAJAXX_WAVE3_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 3));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE4_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 4));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE5_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 5));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE6_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 6));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE7_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 7));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE8_EXPR)) then DBM.Announce(DBM_RAJAXX_WAVE_RAJAXX);
			end

			local _, _, sArg1 = string.find(arg1, DBM_RAJAXX_KILL_EXPR);
			if ( sArg1 ) then
				DBM.Announce( string.format(DBM_RAJAXX_KILL_ANNOUNCE, sArg1) );
			end
		end		
	end,		
};
