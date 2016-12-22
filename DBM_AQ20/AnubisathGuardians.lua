-- 
-- Anubisath Guardians v0.1
--

DBM.AddOns.AnubisathGuardians = { 
	["Name"] = DBM_GUARDIAN_NAME,
	["Abbreviation1"] = "guardians", 
	["Version"] = "0.1",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_GUARDIAN_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
		["Summon"] = false,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.AnubisathGuardians.Options.Whisper",
			["text"] = DBM_SEND_WHISPER,
			["func"] = function() DBM.AddOns.AnubisathGuardians.Options.Whisper = not DBM.AddOns.AnubisathGuardians.Options.Whisper; end,
		},
		[2] = {
			["variable"] = "DBM.AddOns.AnubisathGuardians.Options.Summon",
			["text"] = DBM_GUARDIAN_SUMMON_INFO,
			["func"] = function() DBM.AddOns.AnubisathGuardians.Options.Summon = not DBM.AddOns.AnubisathGuardians.Options.Summon; end,
		},
	},
	["Sort"] = 27,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,

		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,

		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,

		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
	
		if (event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS") then
			if (arg1 == DBM_GUARDIAN_EXPLODE_EXPR) then
				DBM.Announce( DBM_GUARDIAN_EXPLODE_ANNOUNCE );
			elseif (arg1 == DBM_GUARDIAN_ENRAGE_EXPR) then
				DBM.Announce( DBM_GUARDIAN_ENRAGE_ANNOUNCE );
			end

		elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE" 
		     or event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" 
		     or event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE") then
			if (string.find(arg1, DBM_GUARDIAN_THUNDERCLAP_EXPR)) then
			 	DBM.Announce( DBM_GUARDIAN_THUNDERCLAP_ANNOUNCE );
			end

		elseif (event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" 
		     or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" 
		     or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" ) then
			local _, _, sArg1, sArg2 = string.find(arg1, DBM_GUARDIAN_PLAGUE_EXPR);
			if ( sArg1 ) then
				if ( sArg2 == DBM_ARE and sArg1 == DBM_YOU ) then
					sArg1 = UnitName("player");
					DBM.AddSpecialWarning(DBM_GUARDIAN_PLAGUE_WHISPER, true, true);
				else
					if (DBM.AddOns.AnubisathGuardians.Options.Whisper) then
						DBM.SendHiddenWhisper(DBM_GUARDIAN_PLAGUE_WHISPER, sArg1)
					end
				end
				DBM.Announce( string.format(DBM_GUARDIAN_PLAGUE_ANNOUNCE, sArg1) );
			end

		elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF" and DBM.AddOns.AnubisathGuardians.Options.Summon ) then
			if ( arg1 == DBM_GUARDIAN_SUMMONGUARD_EXPR ) then
				DBM.Announce( DBM_GUARDIAN_SUMMONEDGUARD_ANNOUNCE );
			elseif ( arg1 == DBM_GUARDIAN_SUMMONWARRIOR_EXPR ) then
				DBM.Announce( DBM_GUARDIAN_SUMMONEDWARRIOR_ANNOUNCE );
			end
		end

		-- Reflection
		-- Sekir's Shadow Word: Pain is reflected back by Anubisath Guardian.
		-- Kjaska's Life Steal is reflected back by Anubisath Guardian.
			
		-- Skills
		-- Anubisath Guardian's Shadow Storm hits Sekir for 2102 Shadow damage.
		-- Anubisath Guardian casts Summon Anubisath Warrior.
	end,		
};
