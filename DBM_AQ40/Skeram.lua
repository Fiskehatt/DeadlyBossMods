
-- End Yell :  You only delay the inevitable!

DBM.AddOns.Skeram = {
	["Name"] = DBM_SKERAM_NAME,
	["Abbreviation1"] = "Prophet",
	["Version"] = "1.5",
	["Author"] = "Tandanu",
	["Description"] = DBM_SKERAM_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 1,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},	
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
	},
	["CharmedPlayers"] = {};
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") then
			if (arg1 == DBM_SKERAM_CAST_SPELL_AE) then
				DBM.Announce(DBM_SKERAM_AE);
	--			DBM.StartStatusBarTimer(1.5, "Arcane Explosion Cast"); --timer?
			end
		elseif (event == "ClearMindControl") and type(arg1) == "string" then
			DBM.AddOns.Skeram.CharmedPlayers[arg1] = nil;
		end
	end,		
	["OnUpdate"] = function(elapsed)
		if GetRealZoneText() ~= DBM_AQ40 then
			return;
		end
		for i = 1, GetNumRaidMembers() do
			if DBM.GetDebuff("raid"..i, DBM_SKERAM_MIND_CONTROL_DEBUFF) and (not DBM.AddOns.Skeram.CharmedPlayers[UnitName("raid"..i)]) then
				DBM.AddOns.Skeram.CharmedPlayers[UnitName("raid"..i)] = true;
				DBM.Schedule(21, "DBM.AddOns.Skeram.OnEvent", "ClearMindControl", UnitName("raid"..i));
				DBM.Announce(string.format(DBM_SKERAM_MC, UnitName("raid"..i)));
			end
		end
	end,
	["UpdateInterval"] = 0.66,
};
