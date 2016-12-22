--
--	TwinEmps by Tandanu v1.0
--	modified by Nitram to v1.1 with bug explode
--
local TwinEmps = DBM:NewBossMod("TwinEmps", DBM_TWINEMPS_NAME, DBM_TWINEMPS_DESCRIPTION, DBM_AQ40, DBMGUI_TAB_AQ40, 6);

TwinEmps.Version		= "1.2";
TwinEmps.Author			= "Tandanu";
TwinEmps.UpdateInterval	= 0;

TwinEmps:AddOption("BugExplode", true, DBM_TWINEMPS_BUG_EXPLOE);
TwinEmps:RegisterEvents("CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS");
TwinEmps:RegisterCombat("COMBAT", 10, DBM_TWINEMPS_VEKNILASH, DBM_TWINEMPS_REAL_NAME);

function TwinEmps:OnCombatStart(delay)
	self:ScheduleSelf(300 - delay, "EnrageWarning", 10)
	self:ScheduleSelf(600 - delay, "EnrageWarning", 5)
	self:ScheduleSelf(840 - delay, "EnrageWarning", 1)
	self:ScheduleSelf(870 - delay, "EnrageWarning", 0.5)
	self:StartStatusBarTimer(900 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
	
	self:OnEvent("StartTeleportTimer", delay);
end

function TwinEmps:OnEvent(event, arg1)
	if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and string.find(arg1, DBM_TWINEMPS_EXPLODE_EXPR) ) then
		if self.Options.BugExplode then
			self:AddSpecialWarning(DBM_TWINEMPS_EXPLODE_ANNOUNCE);
		end
	elseif event == "StartTeleportTimer" then
		self:Announce(DBM_TWINEMPS_TELEPORT_ANNOUNCE);
		self:StartStatusBarTimer(30 - (arg1 or 0), "Teleport", "Interface\\Icons\\Spell_Arcane_Blink");
		self:ScheduleSelf(20 - (arg1 or 0), "TeleportWarning", 10);
		self:ScheduleSelf(25 - (arg1 or 0), "TeleportWarning", 5);
	elseif event == "TeleportWarning" then
		if arg1 then
			self:Announce(string.format(DBM_TWINEMPS_TELEPORT_WARNING, arg1));
		end
	elseif event == "EnrageWarning" then
		if arg1 and arg1 >= 1 then
			self:Announce(string.format(DBM_TWINEMPS_ENRAGE_WARNING, arg1, DBM_MIN));
		elseif arg1 == 0.5 then
			self:Announce(string.format(DBM_TWINEMPS_ENRAGE_WARNING, 30, DBM_SEC));
		end
	end
end

function TwinEmps:OnUpdate(elapsed)
	if (not self.InCombat) then		
		return;
	end
	
	if self.teleportSpamProtection then
		self.teleportSpamProtection = self.teleportSpamProtection - elapsed;
		if self.teleportSpamProtection <= 0 then
			self.teleportSpamProtection = nil;
		end
	end
	
	local newTarget, foundTwin;
		
	if UnitName("target") == DBM_TWINEMPS_VEKNILASH and CheckInteractDistance("target", 4) and UnitAffectingCombat("target") then -- the target's target function returns nil if the targets target is out of range
		newTarget = UnitName("targettarget");
		foundTwin = true;
	elseif UnitName("target") == DBM_TWINEMPS_VEKLOR and CheckInteractDistance("target", 4) and UnitAffectingCombat("target") then
		newTarget = UnitName("targettarget");
		foundTwin = true;
	else
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == DBM_TWINEMPS_VEKNILASH and CheckInteractDistance("raid"..i.."target", 4) and UnitAffectingCombat("raid"..i.."target") then
				newTarget = UnitName("raid"..i.."targettarget");
				foundTwin = true;
				break;
			elseif UnitName("raid"..i.."target") == DBM_TWINEMPS_VEKLOR and CheckInteractDistance("raid"..i.."target", 4) and UnitAffectingCombat("raid"..i.."target") then
				newTarget = UnitName("raid"..i.."targettarget");
				foundTwin = true;
				break;
			end
		end
	end
	
	if not foundTwin or newTarget then
		self.noTargetTime = nil;
		return;
	end
	
	if not self.noTargetTime then
		self.noTargetTime = 0;
	end
	

	
	self.noTargetTime = self.noTargetTime + elapsed;
	
	if self.noTargetTime >= 0.25 then
		self.noTargetTime = nil;
		
		if not self.teleportSpamProtection then
			self.teleportSpamProtection = 20;
			self:OnEvent("StartTeleportTimer", 0.5);
		end
	end	
end
