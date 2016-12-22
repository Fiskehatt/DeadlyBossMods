DBM.AddOns.Geddon = { 
	["Name"] = DBM_BARON_NAME,
	["Abbreviation1"] = "Geddon", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_BARON_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 5,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
		["SetIcon"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Geddon.Options.Whisper",
			["text"] = DBM_BARON_SEND_WHISPER,
			["func"] = function() DBM.AddOns.Geddon.Options.Whisper = not DBM.AddOns.Geddon.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Geddon.Options.SetIcon",
			["text"] = DBM_BARON_SET_ICON,
			["func"] = function() DBM.AddOns.Geddon.Options.SetIcon = not DBM.AddOns.Geddon.Options.SetIcon; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},	
	["OnCombatEnd"] = function()
		if( DBM.AddOns.Geddon.Options.SetIcon ) then
			DBM.CleanUp();
		end
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or 
		     event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or 
		     event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" ) then
		     
			local Name, Type
			_, _, Name, Type = string.find(arg1, DBM_BARON_BOMB_REGEXP);
			if ( Name and Type ) then
				if ( Name == DBM_YOU and Type == DBM_ARE ) then
					Name = UnitName("player");
					DBM.AddSpecialWarning(DBM_BARON_BOMB_WHISPER);					
				else
					if( DBM.AddOns.Geddon.Options.Whisper ) then
						DBM.SendHiddenWhisper(DBM_BARON_BOMB_WHISPER, Name);
					end				
				end
				DBM.Announce(string.format(DBM_BARON_BOMB_WARNING, Name));
				if DBM.AddOns.Geddon.Options.SetIcon then
					local targetID;
					for i = 1, GetNumRaidMembers() do
						if UnitName("raid"..i) == Name then
							targetID = i;
							break;
						end
					end
					if targetID and DBM.Rank >= 1 then
						if GetRaidTargetIndex("raid"..targetID) ~= 8 then
							SetRaidTargetIcon("raid"..targetID, 8);
						end
					end	
				end
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" ) then
			if arg1 == DBM_BARON_INFERNO then
				DBM.Announce(DBM_BARON_INFERNO_WARNING);
				DBM.StartStatusBarTimer(8, "Inferno", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
		end
	end,		
};
