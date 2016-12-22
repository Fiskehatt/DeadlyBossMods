DBM.AddOns.Vaelastrasz = {
	["Name"] = DBM_VAEL_NAME,
	["Abbreviation1"] = "vael",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_VAEL_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 2,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
		["SetIcon"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Vaelastrasz.Options.Whisper",
			["text"] = DBM_VAEL_SEND_WHISPER,
			["func"] = function() DBM.AddOns.Vaelastrasz.Options.Whisper = not DBM.AddOns.Vaelastrasz.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Vaelastrasz.Options.SetIcon",
			["text"] = DBM_VAEL_SET_ICON,
			["func"] = function() DBM.AddOns.Vaelastrasz.Options.SetIcon = not DBM.AddOns.Vaelastrasz.Options.SetIcon; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_SELF"] = true,
	},	
	["OnCombatEnd"] = function()
		if( DBM.AddOns.Vaelastrasz.Options.SetIcon ) then
			DBM.CleanUp();
		end
	end,		
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" 
		or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" 
		or event ==  "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" then	

			local _, _, name = string.find(arg1, DBM_VAEL_BA_REGEXP);
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
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Vaelastrasz.Options.SetIcon then
					if GetRaidTargetIndex("raid"..targetID) ~= 8 then
						SetRaidTargetIcon("raid"..targetID, 8);
					end
				end	
					
				DBM.Announce(string.format(DBM_VAEL_BA_WARNING, name));
				if name == UnitName("player") then
					DBM.AddSpecialWarning(DBM_VAEL_BA, true, true);
				else
					if DBM.AddOns.Vaelastrasz.Options.Whisper then
						DBM.SendHiddenWhisper(DBM_VAEL_BA_WHISPER, name);
					end
				end
			end
			
		elseif ((event == "CHAT_MSG_SPELL_AURA_GONE_OTHER") or (event == "CHAT_MSG_SPELL_AURA_GONE_SELF")) and arg1 then
			local name;
			_, _, name = string.find(arg1, DBM_VAEL_BA_FADES_REGEXP);
			if Name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == name then
						targetID = i;
						break;
					end
				end	
				if targetID and DBM.Rank >= 1 then
					if GetRaidTargetIndex("raid"..targetID) == 8 and DBM.AddOns.Vaelastrasz.Options.SetIcon then
						SetRaidTargetIcon("raid"..targetID, 0);
					end
				end	
			end			
		end
	end,
};
