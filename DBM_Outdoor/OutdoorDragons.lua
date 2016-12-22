DBM.AddOns.OutdoorDragons = { 
	["Name"] = DBM_OUTDOOR_NAME,
	["Abbreviation1"] = "Dragons", 
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_OUTDOOR_DESCRIPTION,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 7,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["SetIcon"] = true,
		["SendWhisper"] = false,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.OutdoorDragons.Options.Whisper",
			["text"] = DBM_SEND_WHISPER,
			["func"] = function() DBM.AddOns.OutdoorDragons.Options.Whisper = not DBM.AddOns.OutdoorDragons.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.OutdoorDragons.Options.SetIcon",
			["text"] = DBM_SET_ICON,
			["func"] = function() DBM.AddOns.OutdoorDragons.Options.SetIcon = not DBM.AddOns.OutdoorDragons.Options.SetIcon; end,
		},
	},
	["CastingBreath"] = false,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},
	["OnCombatStart"] = function()
		DBM.AddOns.OutdoorDragons.CastingBreath = false;
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.OutdoorDragons.CastingBreath = false;
		if( DBM.AddOns.OutdoorDragons.Options.SetIcon ) then
			DBM.CleanUp();
		end
	end,
	["OnEvent"] = function(event, arg1)

		if event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" 
		or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"
		or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" then

			if (string.find(arg1, DBM_OUTDOOR_NOX_BREATH) 
			 or string.find(arg1, DBM_OUTDOOR_NOX_RESIST)) 
			 and not DBM.AddOns.OutdoorDragons.CastingBreath then

				DBM.AddOns.OutdoorDragons.CastingBreath = true;
				DBM.Announce(DBM_OUTDOOR_BREATH_NOW);
				DBM.Schedule(25, "DBM.AddOns.OutdoorDragons.OnEvent", "BreathWarning", 5);
				DBM.StartStatusBarTimer(30, "Noxious Breath", "Interface\\Icons\\Spell_Shadow_LifeDrain02");

			elseif string.find(arg1, DBM_OUTDOOR_INFECTION) 
			   and ( GetRealZoneText() == DBM_OUTDOOR_LOCATION_1
			    or   GetRealZoneText() == DBM_OUTDOOR_LOCATION_2
			    or   GetRealZoneText() == DBM_OUTDOOR_LOCATION_3
			    or   GetRealZoneText() == DBM_OUTDOOR_LOCATION_4 ) then

				local _, _, name = string.find(arg1, DBM_OUTDOOR_INFECTION);
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
					if targetID and DBM.Rank >= 1 and DBM.AddOns.OutdoorDragons.Options.SetIcon then
						if GetRaidTargetIndex("raid"..targetID) ~= 8 then
							SetRaidTargetIcon("raid"..targetID, 8);
						end
					end	
						
					DBM.Announce(string.format(DBM_OUTDOOR_INFECT_WARN, name));
					if name == UnitName("player") then
						DBM.AddSpecialWarning(DBM_OUTDOOR_INFECT_SPECIAL, true, true);
					else
						if DBM.AddOns.OutdoorDragons.Options.Whisper and DBM.AddOns.OutdoorDragons.Options.Announce then
							DBM.SendHiddenWhisper(DBM_OUTDOOR_INFECT_SPECIAL, name);
						end
					end
				end
			end

		elseif event == "BreathWarning" then
			if arg1 then
				DBM.AddOns.OutdoorDragons.CastingBreath = false;
				DBM.Announce(string.format(DBM_OUTDOOR_BREATH_WARNING, arg1));
			end
		end
	end,		
};
