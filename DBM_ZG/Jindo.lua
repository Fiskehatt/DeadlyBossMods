-- 
-- Jin'do the Hexxer Beta v0.1
--

DBM.AddOns.Jindo = { 
	["Name"] = DBM_JINDO_NAME,
	["Abbreviation1"] = "Jindo", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_JINDO_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Whisper"] = false,
		["HealTotem"] = true,
		["MindControlTotem"] = true,
		["AnnounceCurse"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Jindo.Options.Whisper",
			["text"] = DBM_JINDO_WHISPER_INFO,
			["func"] = function() DBM.AddOns.Jindo.Options.Whisper = not DBM.AddOns.Jindo.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.Jindo.Options.HealTotem",
			["text"] = DBM_JINDO_HEAL_TOTEM_INFO,
			["func"] = function() DBM.AddOns.Jindo.Options.HealTotem = not DBM.AddOns.Jindo.Options.HealTotem; end,
		},
		[3] = {
			["variable"] = "DBM.AddOns.Jindo.Options.MindControlTotem",
			["text"] = DBM_JINDO_MC_TOTEM_INFO,
			["func"] = function() DBM.AddOns.Jindo.Options.MindControlTotem = not DBM.AddOns.Jindo.Options.MindControlTotem; end,
		},
		[4] = {
			["variable"] = "DBM.AddOns.Jindo.Options.AnnounceCurse",
			["text"] = DBM_JINDO_CURSE_INFO,
			["func"] = function() DBM.AddOns.Jindo.Options.AnnounceCurse = not DBM.AddOns.Jindo.Options.AnnounceCurse; end,
		},
	},
	["Sort"] = 7,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if (( 	event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or 
			event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or 
			event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" ) 
			and DBM.AddOns.Jindo.Options.AnnounceCurse) then

			local _, _, sArg1, sArg2 = string.find(arg1, DBM_JINDO_CURSE_EXPR);
			if ( sArg1 and sArg2 ) then
				if ( sArg1 == DBM_YOU and sArg2 == DBM_ARE ) then
					DBM.AddSpecialWarning( DBM_JINDO_CURSE_SELF_ANNOUNCE );
					sArg1 = UnitName("player");	
	
				else
					if DBM.AddOns.Jindo.Options.Whisper then
						DBM.SendHiddenWhisper(DBM_JINDO_WHISPER_TEXT, sArg1);
					end
				end
				DBM.Announce( string.format(DBM_JINDO_CURSE_ANNOUNCE, sArg1) );
			end
		elseif ( event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF" ) then
			if ( arg1 == DBM_JINDO_MIND_CONTROL_TOTEM ) and ( DBM.AddOns.Jindo.Options.MindControlTotem ) then
				DBM.Announce(DBM_JINDO_MC_TOTEM_WARNING);
			elseif ( arg1 == DBM_JINDO_HEAL_TOTEM ) and ( DBM.AddOns.Jindo.Options.HealTotem ) then
				DBM.Announce(DBM_JINDO_HEAL_TOTEM_WARNING);
			end
		end
	end,
};
