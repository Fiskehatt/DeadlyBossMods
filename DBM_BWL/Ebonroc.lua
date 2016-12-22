DBM.AddOns.Ebonroc = {
	["Name"] = DBM_EBONROC_NAME,
	["Abbreviation1"] = "ebon",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_EBONROC_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 5,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["SetIcon"] = true,
	},
	["DropdownMenu"] = {	
		[1] = {
			["variable"] = "DBM.AddOns.Ebonroc.Options.SetIcon",
			["text"] = DBM_EBONROC_SET_ICON,
			["func"] = function() DBM.AddOns.Ebonroc.Options.SetIcon = not DBM.AddOns.Ebonroc.Options.SetIcon; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_SELF"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(31 - delay, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
		DBM.Schedule(28 - delay, "DBM.AddOns.Ebonroc.OnEvent", "WingBuffetWarning", 3);
	end,
	["OnCombatEnd"] = function()
		if( DBM.AddOns.Ebonroc.Options.SetIcon ) then
			DBM.CleanUp();
		end
	end,
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" then
			if arg1 == DBM_EBONROC_WING_BUFFET then
				DBM.Announce(string.format(DBM_WING_BUFFET_WARNING, 1));
				DBM.StartStatusBarTimer(1, "Wing Buffet Cast", "Interface\\Icons\\INV_Misc_MonsterScales_14");
				DBM.Schedule(29, "DBM.AddOns.Ebonroc.OnEvent", "WingBuffetWarning", 3);
				DBM.Schedule(1, "DBM.AddOns.Ebonroc.OnEvent", "WingBuffetWarning", 31);
			elseif arg1 == DBM_EBONROC_SHADOW_FLAME then
				DBM.Announce(DBM_SHADOW_FLAME_WARNING);
				DBM.StartStatusBarTimer(2, "Shadow Flame Cast", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
			
		elseif event == "WingBuffetWarning" then
			if arg1 == 3 then
				DBM.Announce(string.format(DBM_WING_BUFFET_WARNING, 3));
			elseif arg1 == 31 then
				DBM.EndStatusBarTimer("Wing Buffet");
				DBM.StartStatusBarTimer(31, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
			end
			
		elseif event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" then
			local _, _, name = string.find(arg1, DBM_EBONROC_SHADOW_REGEXP);
			if name == DBM_YOU then
				name = UnitName("player");
			end		
			
			if name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == name then
						targetID = i;
						break;
					end
				end
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Ebonroc.Options.SetIcon then
					if GetRaidTargetIndex("raid"..targetID) ~= 8 then
						SetRaidTargetIcon("raid"..targetID, 8);
					end
				end	
					
				DBM.Announce(string.format(DBM_EBONROC_SHADOW_WARNING, name));
			end
		elseif ((event == "CHAT_MSG_SPELL_AURA_GONE_OTHER") or (event == "CHAT_MSG_SPELL_AURA_GONE_SELF")) and arg1 then
			local name;
			_, _, name = string.find(arg1, DBM_EBONROC_SHADOW_REGEXP2);
			if Name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == name then
						targetID = i;
						break;
					end
				end	
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Ebonroc.Options.SetIcon then
					if GetRaidTargetIndex("raid"..targetID) == 8 then
						SetRaidTargetIcon("raid"..targetID, 0);
					end
				end	
			end
		end
	end,
};
