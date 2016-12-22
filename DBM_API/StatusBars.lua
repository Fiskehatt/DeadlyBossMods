DBMStatusBars_DragFrameFunctions = { --we need these functions because we have to re-create the drag frame dynamically when we want to change the design
	["OnLoad"] = function(frame)
		frame.isMoving = false;
		frame.elapsed = 0;
		frame.timer = 20;
		frame:RegisterEvent("PLAYER_ENTERING_WORLD");
		getglobal(frame:GetName().."Bar"):SetMinMaxValues(0, 20);
		getglobal(frame:GetName().."BarText"):SetText("Drag me!");
		getglobal(frame:GetName().."BarTimer"):SetText(DBM.SecondsToTime(this.timer));
	end,
	["OnUpdate"] = function()
		this.elapsed = this.elapsed + arg1;
		if this.elapsed >= this.timer then
			this.elapsed = 0;
			this.timer = 20;
			this:Hide();
			getglobal(this:GetName().."BarTimer"):SetText(DBM.SecondsToTime(this.timer));					
		else
			getglobal(this:GetName().."BarTimer"):SetText(DBM.SecondsToTime(this.timer - this.elapsed));
			
			if DBM.Options.FillUpStatusBars then
				getglobal(this:GetName().."Bar"):SetValue(this.elapsed);
			else
				getglobal(this:GetName().."Bar"):SetValue(this.timer - this.elapsed);
			end
		end				
		
		if DBM_StatusBarTimer1 and DBM_StatusBarTimer1:IsShown() and DBM_StatusBarTimer1:GetAlpha() >= 0.1 then
			DBM_StatusBarTimer1:SetAlpha(0);
			if DBM_StatusBarTimer1.table and DBM_StatusBarTimer1.table.isFlashing then
				UIFrameFadeRemoveFrame(DBM_StatusBarTimer1);
				UIFrameFlashRemoveFrame(DBM_StatusBarTimer1);
				DBM_StatusBarTimer1.flashTimer = nil;
				DBM_StatusBarTimer1.fadeInTime = nil;
				DBM_StatusBarTimer1.fadeOutTime = nil;
				DBM_StatusBarTimer1.flashDuration = nil;
				DBM_StatusBarTimer1.showWhenDone = nil;
				DBM_StatusBarTimer1.flashTimer = nil;
				DBM_StatusBarTimer1.flashMode = nil;
				DBM_StatusBarTimer1.flashInHoldTime = nil;
				DBM_StatusBarTimer1.flashOutHoldTime = nil;
				DBM_StatusBarTimer1.fadeInfo = nil;
				DBM_StatusBarTimer1.table.isFlashing = nil;
			end
			DBM.Schedule(20.1, function() DBM_StatusBarTimer1:SetAlpha(1); end)
		end
		
		local minValue, maxValue;
		minValue, maxValue = getglobal(this:GetName().."Bar"):GetMinMaxValues();
		if DBM.Options.FillUpStatusBars then
			getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", getglobal(this:GetName().."Bar"), "LEFT", (((getglobal(this:GetName().."Bar"):GetValue() - arg1) / maxValue) * getglobal(this:GetName().."Bar"):GetWidth()), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].sparkOffset);
		else
			getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", getglobal(this:GetName().."Bar"), "LEFT", ((getglobal(this:GetName().."Bar"):GetValue() / maxValue) * getglobal(this:GetName().."Bar"):GetWidth()), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].sparkOffset);
		end
	end,	
	["OnHide"] = function()
		if this.isMoving then
			DBM_StatusBarTimerAnchor:StopMovingOrSizing();
			this.isMoving = false;
		end
		this.elapsed = 0;
		this.timer = 20;
		getglobal(this:GetName().."BarTimer"):SetText(DBM.SecondsToTime(this.timer));
		if DBM_StatusBarTimer1 then
			DBM_StatusBarTimer1:SetAlpha(1);
		end
	end,
	["OnEvent"] = function()
		if event == "PLAYER_ENTERING_WORLD" then
			this:SetUserPlaced(nil); --this sucks a bit...:O
			this:ClearAllPoints();
			this:SetPoint("CENTER", "DBM_StatusBarTimerAnchor", "CENTER");
		end
	end,
	["OnMouseUp"] = function()
		if this.isMoving then
			DBM_StatusBarTimerAnchor:StopMovingOrSizing();
			this.isMoving = false;
		end
		if arg1 == "RightButton" then
			this:Hide();
		end
	end,	
	["OnMouseDown"] = function()
		if arg1 == "LeftButton" then
			DBM_StatusBarTimerAnchor:StartMoving();
			this.isMoving = true;
		end
	end,
	["OnEnter"] = function()
	end,
	["OnLeave"] = function()
	end,
};

DBMStatusBars_Designs = {
	[1] = {
		["name"] = DBM_BAR_STYLE_DEFAULT,
		["template"] = "DBM_StatusBarTimerDefaultTemplate",
		["widthModifier"] = 8,
		["textWidthModifier"] = 59,
		["distance"] = -3,
		["sparkOffset"] = 0,
		["color"] = {
			["r"] = 1.0,
			["g"] = 0.7,
			["b"] = 0.0,
			["a"] = 1.0,
		},
		["iconSize"] = 16,
		["width"] = 195,
		["scale"] = 1,
		["subFrameNames"] = {
			"Bar", "BarText", "BarTimer", "BarSpark", "BarBackground", "BarBar"
		},
		["initialize"] = function(frame)
			getglobal(frame:GetName().."BarSpark"):SetVertexColor(1, 1, 1, 1);
		end
	},
	[2] = {
		["name"] = DBM_BAR_STYLE_MODERN,
		["template"] = "DBM_StatusBarTimerExtraTemplate1",
		["widthModifier"] = 8,
		["textWidthModifier"] = 59,
		["distance"] = 0,
		["sparkOffset"] = -1,
		["color"] = {
			["r"] = 1.0,
			["g"] = 0.7,
			["b"] = 0.0,
			["a"] = 0.95,
		},
		["iconSize"] = 23,
		["iconOffsetX"] = 3.8,
		["width"] = 215,
		["scale"] = 1,
		["subFrameNames"] = {
			"Bar", "BarText", "BarTimer", "BarSpark", "BarBackground", "BarBar"
		},
		["onColorChanged"] = function(frame, r, g, b, a)
			getglobal(frame:GetParent():GetName().."BarSpark"):SetVertexColor(r, g, b, a);
		end,
		["initialize"] = function(frame)
			getglobal(frame:GetName().."BarSpark"):SetVertexColor(DBMStatusBars_Designs[2].color.r, DBMStatusBars_Designs[2].color.g, DBMStatusBars_Designs[2].color.b, DBMStatusBars_Designs[2].color.a);
		end
	},
	[3] = {
		["name"] = DBM_BAR_STYLE_CLOUDS,
		["template"] = "DBM_StatusBarTimerExtraTemplate2",
		["widthModifier"] = 8,
		["textWidthModifier"] = 59,
		["distance"] = 0,
		["sparkOffset"] = -1,
		["color"] = {
			["r"] = 0.0,
			["g"] = 1.0,
			["b"] = 1.0,
			["a"] = 1.0,
		},
		["iconSize"] = 23,
		["iconOffsetX"] = 3.8,
		["width"] = 215,
		["scale"] = 1,
		["subFrameNames"] = {
			"Bar", "BarText", "BarTimer", "BarSpark", "BarBackground", "BarBar"
		},
		["onColorChanged"] = function(frame, r, g, b, a)
			getglobal(frame:GetParent():GetName().."BarSpark"):SetVertexColor(r, g, b, a);
		end,
		["initialize"] = function(frame)
			getglobal(frame:GetName().."BarSpark"):SetVertexColor(DBMStatusBars_Designs[3].color.r, DBMStatusBars_Designs[3].color.g, DBMStatusBars_Designs[3].color.b, DBMStatusBars_Designs[3].color.a);
		end,
	},
	[4] = {
		["name"] = DBM_BAR_STYLE_GLAZE,
		["template"] = "DBM_StatusBarTimerGlazeTemplate",
		["widthModifier"] = 8,
		["textWidthModifier"] = 59,
		["distance"] = 0,
		["sparkOffset"] = -1,
		["color"] = {
			["r"] = 1.0,
			["g"] = 0.7,
			["b"] = 0.0,
			["a"] = 0.95,
		},
		["iconSize"] = 23,
		["iconOffsetX"] = 3.8,
		["width"] = 215,
		["scale"] = 1,
		["subFrameNames"] = {
			"Bar", "BarText", "BarTimer", "BarSpark", "BarBackground", "BarBar"
		},
		["onColorChanged"] = function(frame, r, g, b, a)
			getglobal(frame:GetParent():GetName().."BarSpark"):SetVertexColor(r, g, b, a);
		end,
		["initialize"] = function(frame)
			getglobal(frame:GetName().."BarSpark"):SetVertexColor(DBMStatusBars_Designs[2].color.r, DBMStatusBars_Designs[2].color.g, DBMStatusBars_Designs[2].color.b, DBMStatusBars_Designs[2].color.a);
		end
	},
	[5] = {
		["name"] = DBM_BAR_STYLE_PERL,
		["template"] = "DBM_StatusBarTimerExtraTemplate3",
		["widthModifier"] = 8,
		["textWidthModifier"] = 59,
		["distance"] = -3,
		["sparkOffset"] = 0,
		["color"] = {
			["r"] = 1.0,
			["g"] = 0.7,
			["b"] = 0.0,
			["a"] = 1.0,
		},
		["iconSize"] = 16,
		["width"] = 195,
		["scale"] = 1,
		["subFrameNames"] = {
			"Bar", "BarText", "BarTimer", "BarSpark", "BarBackground", "BarBar"
		},		
		["initialize"] = function(frame)
			getglobal(frame:GetName().."BarSpark"):SetVertexColor(DBMStatusBars_Designs[4].color.r, DBMStatusBars_Designs[4].color.g, DBMStatusBars_Designs[4].color.b, DBMStatusBars_Designs[4].color.a);
		end,
	},
};

function DBMStatusBars_OnUpdate(elapsed)
	if this.isUsed and this.table then

		this.table.elapsed = this.table.elapsed + elapsed;
		if DBM.Options.FillUpStatusBars then
			getglobal(this:GetName().."Bar"):SetValue(this.table.elapsed);
		else
			getglobal(this:GetName().."Bar"):SetValue(this.table.timer - this.table.elapsed);
		end
		
		local goodTimer = this.table.timer - this.table.elapsed;
		if goodTimer < 0 then
			goodTimer = 0;
		end
		
		getglobal(this:GetName().."BarTimer"):SetText(DBM.SecondsToTime(goodTimer));
		if DBM.Options.FlashBars and not this.table.isFlashing and this.table.timer - this.table.elapsed < 7.5 and this.table.timer > 12.5 then
			this.table.isFlashing = true;
			UIFrameFlash(this, 0.3, 0.3, this.table.timer - this.table.elapsed, 1, 0, 0.75);
		end
		if this.table.elapsed >= this.table.timer then
			if GameTooltip:IsShown() and GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText() == getglobal(this:GetName().."BarText"):GetText() and ((not this.table.repetitions) or this.table.repetitions <= 1) then
				GameTooltip:Hide();
			end
			DBM.EndStatusBarTimer(this.usedBy, true);
			return;
		end
		if DBM.Options.AutoColorBars and this.startedBy ~= "Battlegrounds" then
			local percent = (this.table.timer - this.table.elapsed) / this.table.timer;
			if this.specialColor then
				getglobal(this:GetName().."Bar"):SetStatusBarColor(this.table.color.R + ((1 - this.table.color.R) * (1 - percent)), this.table.color.G * percent, this.table.color.B * percent, this.table.color.A);
			else
				getglobal(this:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r + ((1 - DBM.Options.StatusBarColor.r) * (1 - percent)), DBM.Options.StatusBarColor.g * percent, DBM.Options.StatusBarColor.b * percent, DBM.Options.StatusBarColor.a);
			end
		end
		local minValue, maxValue;
		minValue, maxValue = getglobal(this:GetName().."Bar"):GetMinMaxValues();
		getglobal(this:GetName().."BarSpark"):ClearAllPoints();
		if DBM.Options.FillUpStatusBars then
			getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", (this:GetName().."Bar"), "LEFT", (((getglobal(this:GetName().."Bar"):GetValue() - elapsed) / maxValue) * getglobal(this:GetName().."Bar"):GetWidth()), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].sparkOffset);
		else
			getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", (this:GetName().."Bar"), "LEFT", (((getglobal(this:GetName().."Bar"):GetValue()) / maxValue) * getglobal(this:GetName().."Bar"):GetWidth()), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].sparkOffset);
		end
		
		if GameTooltip:IsShown() and GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText() == getglobal(this:GetName().."BarText"):GetText() then
			if GameTooltipTextRight2 then
				GameTooltipTextRight2:SetText(DBM.SecondsToTime(this.table.timer - this.table.elapsed));
			end
			if GameTooltipTextRight3 then
				GameTooltipTextRight3:SetText(DBM.SecondsToTime(this.table.elapsed));
			end
			if GameTooltipTextLeft5 and GameTooltipTextRight5 and GameTooltipTextLeft5:GetText() == DBM_SBT_REPETITIONS then
				if not this.table.infinite then
					GameTooltipTextRight5:SetText(this.table.repetitions);
				end
			end
		end
	end
end

function DBMStatusBars_OnEnter()
	if not this.table then
		return;
	end
	GameTooltip:Hide();
	GameTooltip:ClearLines();
	GameTooltip_SetDefaultAnchor(GameTooltip, UIParent);
	GameTooltip:SetText(getglobal(this:GetName().."BarText"):GetText());
	GameTooltip:AddDoubleLine(DBM_SBT_TIMELEFT, DBM.SecondsToTime(this.table.timer - this.table.elapsed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DBM_SBT_TIMEELAPSED, DBM.SecondsToTime(this.table.elapsed), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	GameTooltip:AddDoubleLine(DBM_SBT_TOTALTIME, DBM.SecondsToTime(this.table.timer), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	if this.table.isRepeating and this.table.repetitions then
		if this.table.infinite then
			GameTooltip:AddDoubleLine(DBM_SBT_REPETITIONS, DBM_SBT_INFINITE, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
		else
			GameTooltip:AddDoubleLine(DBM_SBT_REPETITIONS, this.table.repetitions, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
		end
	end
	if this.table.startedBy and this.table.startedBy ~= "UNKNOWN" then
		GameTooltip:AddDoubleLine(DBM_SBT_BOSSMOD, this.table.startedBy, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	end
	if this.table.syncedBy and this.table.syncedBy ~= DBM_LOCAL then	
		GameTooltip:AddDoubleLine(DBM_SBT_STARTEDBY, this.table.syncedBy, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	else
		GameTooltip:AddDoubleLine(DBM_SBT_STARTEDBY, UnitName("player"), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	end
	GameTooltip:AddLine(DBM_SBT_LEFTCLICK, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:AddLine(DBM_SBT_RIGHTCLICK, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	GameTooltip:Show();
end

function DBMStatusBars_SetDefaultValues()
	DBM.Options.StatusBarColor.r = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.r;
	DBM.Options.StatusBarColor.g = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.g;
	DBM.Options.StatusBarColor.b = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.b;
	DBM.Options.StatusBarColor.a = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.a;
	DBM.Options.StatusBarSize.Width = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].width;
	DBM.Options.StatusBarSize.Scale = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].scale;	
	DBM.Options.StatusBarsFlippedOver = false;
	DBM.Options.FillUpStatusBars = true;
	DBM.Options.EnableStatusBars = true;
end

function DBMStatusBars_FlipOver()
	if DBM.Options.StatusBarsFlippedOver then
		for i = 2, DBM.StatusBarCount do
			getglobal("DBM_StatusBarTimer"..i):ClearAllPoints()
			getglobal("DBM_StatusBarTimer"..i):SetPoint("BOTTOM", "DBM_StatusBarTimer"..(i - 1), "TOP", 0, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].distance);
		end
	else
		for i = 2, DBM.StatusBarCount do
			getglobal("DBM_StatusBarTimer"..i):ClearAllPoints()
			getglobal("DBM_StatusBarTimer"..i):SetPoint("TOP", "DBM_StatusBarTimer"..(i - 1), "BOTTOM", 0, -DBMStatusBars_Designs[DBM.Options.StatusBarDesign].distance);
		end
	end
end

function DBMStatusBars_PullTogether()
	for i = 2, DBM.StatusBarCount do
		if getglobal("DBM_StatusBarTimer"..i).isUsed and (not getglobal("DBM_StatusBarTimer"..(i-1)).isUsed) then
			local j = i - 1;
			
			if getglobal("DBM_StatusBarTimer"..i).specialColor then
				getglobal("DBM_StatusBarTimer"..i.."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
			end
			
			for index, value in pairs(getglobal("DBM_StatusBarTimer"..i)) do
				if type(value) ~= "userdata" then
					getglobal("DBM_StatusBarTimer"..j)[index] = value;
				end
			end
			
			getglobal("DBM_StatusBarTimer"..i):Hide();	
			local iconWasShown = getglobal("DBM_StatusBarTimer"..i.."Icon"):IsShown();
			getglobal("DBM_StatusBarTimer"..i.."Icon"):Hide();
			getglobal("DBM_StatusBarTimer"..i).isUsed = false;
			getglobal("DBM_StatusBarTimer"..i).usedBy = "";
			getglobal("DBM_StatusBarTimer"..i).isRepeating = false;
			getglobal("DBM_StatusBarTimer"..i).repetitions = 0;
			getglobal("DBM_StatusBarTimer"..i).specialColor = false;
			if getglobal("DBM_StatusBarTimer"..i).table.isFlashing then
				UIFrameFadeRemoveFrame(getglobal("DBM_StatusBarTimer"..i));
				UIFrameFlashRemoveFrame(getglobal("DBM_StatusBarTimer"..i));
				getglobal("DBM_StatusBarTimer"..i):SetAlpha(1.0);
				getglobal("DBM_StatusBarTimer"..i).flashTimer = nil;
				getglobal("DBM_StatusBarTimer"..i).fadeInTime = nil;
				getglobal("DBM_StatusBarTimer"..i).fadeOutTime = nil;
				getglobal("DBM_StatusBarTimer"..i).flashDuration = nil;
				getglobal("DBM_StatusBarTimer"..i).showWhenDone = nil;
				getglobal("DBM_StatusBarTimer"..i).flashTimer = nil;
				getglobal("DBM_StatusBarTimer"..i).flashMode = nil;
				getglobal("DBM_StatusBarTimer"..i).flashInHoldTime = nil;
				getglobal("DBM_StatusBarTimer"..i).flashOutHoldTime = nil;
				getglobal("DBM_StatusBarTimer"..i).fadeInfo = nil;
				
				UIFrameFlash(getglobal("DBM_StatusBarTimer"..j), 0.3, 0.3, getglobal("DBM_StatusBarTimer"..i).table.timer - getglobal("DBM_StatusBarTimer"..i).table.elapsed, 1, 0, 0.75);
			else
				UIFrameFadeRemoveFrame(getglobal("DBM_StatusBarTimer"..j));
				UIFrameFlashRemoveFrame(getglobal("DBM_StatusBarTimer"..j));
				getglobal("DBM_StatusBarTimer"..j):SetAlpha(1.0);
				getglobal("DBM_StatusBarTimer"..j).flashTimer = nil;
				getglobal("DBM_StatusBarTimer"..j).fadeInTime = nil;
				getglobal("DBM_StatusBarTimer"..j).fadeOutTime = nil;
				getglobal("DBM_StatusBarTimer"..j).flashDuration = nil;
				getglobal("DBM_StatusBarTimer"..j).showWhenDone = nil;
				getglobal("DBM_StatusBarTimer"..j).flashTimer = nil;
				getglobal("DBM_StatusBarTimer"..j).flashMode = nil;
				getglobal("DBM_StatusBarTimer"..j).flashInHoldTime = nil;
				getglobal("DBM_StatusBarTimer"..j).flashOutHoldTime = nil;
				getglobal("DBM_StatusBarTimer"..j).fadeInfo = nil;
			end
			getglobal("DBM_StatusBarTimer"..i).table = nil;

			if getglobal("DBM_StatusBarTimer"..j).specialColor and getglobal("DBM_StatusBarTimer"..j).table and type(getglobal("DBM_StatusBarTimer"..j).table.color) == "table" then
				getglobal("DBM_StatusBarTimer"..j.."Bar"):SetStatusBarColor(getglobal("DBM_StatusBarTimer"..j).table.color.R, getglobal("DBM_StatusBarTimer"..j).table.color.G, getglobal("DBM_StatusBarTimer"..j).table.color.B, getglobal("DBM_StatusBarTimer"..j).table.color.A);
			else
				getglobal("DBM_StatusBarTimer"..j.."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
			end
			getglobal("DBM_StatusBarTimer"..j.."Bar"):SetMinMaxValues(0, getglobal("DBM_StatusBarTimer"..j).table.timer);
			if type(DBM_SBT[getglobal("DBM_StatusBarTimer"..j).usedBy]) == "string" then
				getglobal("DBM_StatusBarTimer"..j.."BarText"):SetText(DBM_SBT[getglobal("DBM_StatusBarTimer"..j).usedBy]);

			elseif type(DBM_SBT[getglobal("DBM_StatusBarTimer"..j).startedBy]) == "table" then
				-- Translation System for Bars with Dynamic Content "Injection: xxxx"
				local tempname = getglobal("DBM_StatusBarTimer"..j).usedBy;
				for index, value in pairs(DBM_SBT[getglobal("DBM_StatusBarTimer"..j).startedBy]) do
					tempname = string.gsub(tempname, value[1], value[2]);
				end
				getglobal("DBM_StatusBarTimer"..j.."BarText"):SetText(tempname);
			else
				getglobal("DBM_StatusBarTimer"..j.."BarText"):SetText(getglobal("DBM_StatusBarTimer"..j).usedBy);
			end
			getglobal("DBM_StatusBarTimer"..j.."BarTimer"):SetText(DBM.SecondsToTime(getglobal("DBM_StatusBarTimer"..j).table.timer));
			if iconWasShown then
				getglobal("DBM_StatusBarTimer"..j.."Icon"):SetTexture(getglobal("DBM_StatusBarTimer"..i.."Icon"):GetTexture());
				getglobal("DBM_StatusBarTimer"..j.."Icon"):Show();
			end
			getglobal("DBM_StatusBarTimer"..j):Show();
	
			getglobal("DBM_StatusBarTimer"..j).table.barId = j;
			getglobal("DBM_StatusBarTimer"..j).table.frame = getglobal("DBM_StatusBarTimer"..j);
		end
	end
end

function DBMStatusBars_Resize()
	DBM_StatusBarTimerDrag:SetScale(DBM.Options.StatusBarSize.Scale);
	DBM_StatusBarTimerDrag:SetWidth(DBM.Options.StatusBarSize.Width);
	DBM_StatusBarTimerDragBar:SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].widthModifier);
	DBM_StatusBarTimerDragBarTimer:SetJustifyH("RIGHT");
	DBM_StatusBarTimerDragBarText:SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].textWidthModifier);	
	for i = 1, DBM.StatusBarCount do
		getglobal("DBM_StatusBarTimer"..i):SetScale(DBM.Options.StatusBarSize.Scale);
		getglobal("DBM_StatusBarTimer"..i):SetWidth(DBM.Options.StatusBarSize.Width);
		getglobal("DBM_StatusBarTimer"..i.."Bar"):SetWidth(DBM.Options.StatusBarSize.Width -  DBMStatusBars_Designs[DBM.Options.StatusBarDesign].widthModifier);
		getglobal("DBM_StatusBarTimer"..i.."BarText"):SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].textWidthModifier);		
	end
end

function DBMStatusBars_CreateNewBar()
	if (DBM.StatusBarCount + 1) > DBM.Options.MaxStatusBars then
		return;
	end
	DBM.StatusBarCount = DBM.StatusBarCount + 1;
	local newBar = CreateFrame("Frame", "DBM_StatusBarTimer"..DBM.StatusBarCount, UIParent, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].template);
	newBar:SetScale(DBM.Options.StatusBarSize.Scale);
	newBar:SetWidth(DBM.Options.StatusBarSize.Width);
	getglobal(newBar:GetName().."Bar"):SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].widthModifier);
	getglobal(newBar:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
	getglobal(newBar:GetName().."BarText"):SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].textWidthModifier);
	
	--icon stuff
	local newIcon = newBar:CreateTexture("DBM_StatusBarTimer"..DBM.StatusBarCount.."Icon", "OVERLAY");
	newIcon:SetHeight(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconSize or 18);
	newIcon:SetWidth(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconSize or 18);
	if DBM.Options.IconRight then
		newIcon:SetPoint("LEFT", "DBM_StatusBarTimer"..DBM.StatusBarCount, "RIGHT", -(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetX or 0), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetY or 0);
	else
		newIcon:SetPoint("RIGHT", "DBM_StatusBarTimer"..DBM.StatusBarCount, "LEFT", DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetX or 0, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetY or 0);
	end
	----
	
	if DBM.StatusBarCount == 1 then
		newBar:SetPoint("CENTER", "DBM_StatusBarTimerDrag", "CENTER", 0, 0);
	else
		if DBM.Options.StatusBarsFlippedOver then
			newBar:SetPoint("BOTTOM", "DBM_StatusBarTimer"..(DBM.StatusBarCount - 1), "TOP", 0, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].distance);
		else
			newBar:SetPoint("TOP", "DBM_StatusBarTimer"..(DBM.StatusBarCount - 1), "BOTTOM", 0, -DBMStatusBars_Designs[DBM.Options.StatusBarDesign].distance);
		end
	end
	
	if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].initialize) == "function" then
		DBMStatusBars_Designs[DBM.Options.StatusBarDesign].initialize(getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount));
	end
		
	if not DBM.Hooks.oldSetStatusBarColor then
		DBM.Hooks.oldSetStatusBarColor = getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetStatusBarColor;
	end
	if not DBM.Hooks.oldSetMinMaxValues then
		DBM.Hooks.oldSetMinMaxValues = getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetMinMaxValues;
	end
	if not DBM.Hooks.oldSetValue then
		DBM.Hooks.oldSetValue = getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetValue;
	end
		
	getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetStatusBarColor = function(frame, r, g, b, a)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onColorChanged) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onColorChanged(frame, r, g, b, a);
		end
		DBM.Hooks.oldSetStatusBarColor(frame, r, g, b, a);
	end
	
	getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetMinMaxValues = function(frame, minValue, maxValue)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetMinMaxValues) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetMinMaxValues(frame, minValue, maxValue);
		end
		DBM.Hooks.oldSetMinMaxValues(frame, minValue, maxValue);
	end
	
	getglobal("DBM_StatusBarTimer"..DBM.StatusBarCount.."Bar").SetValue = function(frame, value)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetValue) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetValue(frame, value);
		end
		DBM.Hooks.oldSetValue(frame, value);
	end
	
	DBMGuiUpdateStatusbars();
	
	return DBM.StatusBarCount;
end

function DBMStatusBars_ChangeDesign(designID, forceReload)
	local oldDesign = DBM.Options.StatusBarDesign;
	local oldBarCount = DBM.StatusBarCount;
	local oldFrameSettings;
	if oldDesign == designID and not forceReload then
		return;
	end
	if oldDesign ~= designID then --don't need to reset the options if we forced a re-creation of the frames
		DBM.Options.StatusBarDesign = designID;
		DBM.StatusBarCount = 0;
		DBM.Options.StatusBarColor.r = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.r;
		DBM.Options.StatusBarColor.g = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.g;
		DBM.Options.StatusBarColor.b = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.b;
		DBM.Options.StatusBarColor.a = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].color.a;
		DBM.Options.StatusBarSize.Width = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].width;
		DBM.Options.StatusBarSize.Scale = DBMStatusBars_Designs[DBM.Options.StatusBarDesign].scale;
	end
	if DBM_StatusBarTimerDrag then
		DBM_StatusBarTimerDrag:Hide();
	end

	for index, value in pairs(DBMStatusBars_Designs[oldDesign].subFrameNames) do
		setglobal("DBM_StatusBarTimerDrag"..value, nil);
	end
	setglobal("DBM_StatusBarTimerDragIcon", nil);
	setglobal("DBM_StatusBarTimerDrag", nil);

	local newDragBar = CreateFrame("Frame", "DBM_StatusBarTimerDrag", UIParent, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].template);
	newDragBar:SetScale(DBM.Options.StatusBarSize.Scale);
	newDragBar:SetWidth(DBM.Options.StatusBarSize.Width);
	getglobal(newDragBar:GetName().."Bar"):SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].widthModifier);
	getglobal(newDragBar:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
	getglobal(newDragBar:GetName().."BarText"):SetWidth(DBM.Options.StatusBarSize.Width - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].textWidthModifier);
	newDragBar:EnableMouse(true);
	newDragBar:SetMovable(true);
	newDragBar:SetFrameStrata("HIGH");
	newDragBar:CreateTexture("DBM_StatusBarTimerDragIcon", "OVERLAY");
	getglobal(newDragBar:GetName().."Icon"):SetTexture("Interface\\Icons\\Spell_Nature_WispSplode");
	getglobal(newDragBar:GetName().."Icon"):SetHeight(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconSize or 18);
	getglobal(newDragBar:GetName().."Icon"):SetWidth(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconSize or 18);
	
	if DBM.Options.IconRight then
		getglobal(newDragBar:GetName().."Icon"):SetPoint("LEFT", "DBM_StatusBarTimerDrag", "RIGHT", -(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetX or 0), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetY or 0);
	else
		getglobal(newDragBar:GetName().."Icon"):SetPoint("RIGHT", "DBM_StatusBarTimerDrag", "LEFT", DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetX or 0, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].iconOffsetY or 0);
	end
	
	for index, value in pairs(DBMStatusBars_DragFrameFunctions) do
		newDragBar:SetScript(index, value);
	end
	
	DBMStatusBars_DragFrameFunctions["OnLoad"](DBM_StatusBarTimerDrag);
	if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].initialize) == "function" then
		DBMStatusBars_Designs[DBM.Options.StatusBarDesign].initialize(DBM_StatusBarTimerDrag);
	end	
	
	if not DBM.Hooks.oldSetStatusBarColor then
		DBM.Hooks.oldSetStatusBarColor = newDragBar.SetStatusBarColor;
	end
	if not DBM.Hooks.oldSetMinMaxValues then
		DBM.Hooks.oldSetMinMaxValues = newDragBar.SetMinMaxValues;
	end
	if not DBM.Hooks.oldSetValue then
		DBM.Hooks.oldSetValue = newDragBar.SetValue;
	end
		
	newDragBar.SetStatusBarColor = function(frame, r, g, b, a)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onColorChanged) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onColorChanged(frame, r, g, b, a);
		end
		DBM.Hooks.oldSetStatusBarColor(frame, r, g, b, a);
	end
	
	newDragBar.SetMinMaxValues = function(frame, minValue, maxValue)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetMinMaxValues) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetMinMaxValues(frame, minValue, maxValue);
		end
		DBM.Hooks.oldSetMinMaxValues(frame, minValue, maxValue);
	end
	
	newDragBar.SetValue = function(frame, value)
		if type(DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetValue) == "function" then
			DBMStatusBars_Designs[DBM.Options.StatusBarDesign].onSetValue(frame, value);
		end
		DBM.Hooks.oldSetValue(frame, value);
	end	
	
	newDragBar:SetPoint("CENTER", "DBM_StatusBarTimerAnchor", "CENTER");
	
	
	for i = 1, oldBarCount do
		local minValue, maxValue = getglobal("DBM_StatusBarTimer"..i.."Bar"):GetMinMaxValues();
		oldFrameSettings = {
			["isUsed"] = getglobal("DBM_StatusBarTimer"..i).isUsed,
			["usedBy"] = getglobal("DBM_StatusBarTimer"..i).usedBy,
			["syncedBy"] = getglobal("DBM_StatusBarTimer"..i).syncedBy,
			["startedBy"] = getglobal("DBM_StatusBarTimer"..i).startedBy,
			["isRepeating"] = getglobal("DBM_StatusBarTimer"..i).isRepeating,
			["repetitions"] = getglobal("DBM_StatusBarTimer"..i).repetitions,
			["specialColor"] = getglobal("DBM_StatusBarTimer"..i).specialColor,
			["text"] = getglobal("DBM_StatusBarTimer"..i.."BarText"):GetText(),
			["timerText"] = getglobal("DBM_StatusBarTimer"..i.."BarTimer"):GetText(),
			["table"] = getglobal("DBM_StatusBarTimer"..i).table,
			["minValue"] = minValue,
			["maxValue"] = maxValue,
			["value"] = getglobal("DBM_StatusBarTimer"..i.."Bar"):GetValue(),
			["shown"] = getglobal("DBM_StatusBarTimer"..i):IsShown(),
			["iconShown"] = getglobal("DBM_StatusBarTimer"..i.."Icon"):IsShown(),
			["iconTexture"] = getglobal("DBM_StatusBarTimer"..i.."Icon"):GetTexture(),
		};		

		for index, value in pairs(DBMStatusBars_Designs[oldDesign].subFrameNames) do
			setglobal("DBM_StatusBarTimer"..i..value, nil);
		end
		getglobal("DBM_StatusBarTimer"..i):Hide(); --there is no way to delete frames! but a status bar needs ony a few kb memory, so old hidden bars are no problem :)
		setglobal("DBM_StatusBarTimer"..i.."Icon", nil);
		setglobal("DBM_StatusBarTimer"..i, nil); --wtf? i need to set the old variables to nil before I create a new frame...

		DBMStatusBars_CreateNewBar();
		if getglobal("DBM_StatusBarTimer"..i) then
			getglobal("DBM_StatusBarTimer"..i).isUsed = oldFrameSettings.isUsed;
			getglobal("DBM_StatusBarTimer"..i).usedBy = oldFrameSettings.usedBy;
			getglobal("DBM_StatusBarTimer"..i).syncedBy = oldFrameSettings.syncedBy;
			getglobal("DBM_StatusBarTimer"..i).startedBy = oldFrameSettings.startedBy;
			getglobal("DBM_StatusBarTimer"..i).isRepeating = oldFrameSettings.isRepeating;
			getglobal("DBM_StatusBarTimer"..i).repetitions = oldFrameSettings.repetitions;
			getglobal("DBM_StatusBarTimer"..i).specialColor = oldFrameSettings.specialColor;
			getglobal("DBM_StatusBarTimer"..i).table = oldFrameSettings.table;
			if getglobal("DBM_StatusBarTimer"..i).table and getglobal("DBM_StatusBarTimer"..i).table.frame then
				getglobal("DBM_StatusBarTimer"..i).table.frame = getglobal("DBM_StatusBarTimer"..i);
			end
			getglobal("DBM_StatusBarTimer"..i.."BarText"):SetText(oldFrameSettings.text);
			getglobal("DBM_StatusBarTimer"..i.."BarTimer"):SetText(oldFrameSettings.timerText);
			getglobal("DBM_StatusBarTimer"..i.."Bar"):SetMinMaxValues(oldFrameSettings.minValue, oldFrameSettings.maxValue);
			getglobal("DBM_StatusBarTimer"..i.."Bar"):SetValue(oldFrameSettings.value);
			if oldFrameSettings.shown then
				getglobal("DBM_StatusBarTimer"..i):Show();
			end
			if oldFrameSettings.iconShown then
				getglobal("DBM_StatusBarTimer"..i.."Icon"):Show();
				getglobal("DBM_StatusBarTimer"..i.."Icon"):SetTexture(""); --clear texture before setting a new one to prevent an old icon to be displayed when the new texture does not exist
				getglobal("DBM_StatusBarTimer"..i.."Icon"):SetTexture(oldFrameSettings.iconTexture);
			end
		end
	end
end


function DBMStatusBars_AnnounceToChat(bar)
	local msg;
	msg = getglobal(bar:GetName().."BarText"):GetText().." - "..DBM.SecondsToTime(bar.table.timer - bar.table.elapsed, nil, true);
	
	if bar.table and bar.table.bossModID == "Battlegrounds" and bar.table.color and bar.usedBy and not string.find(getglobal(bar:GetName().."BarText"):GetText(), ": ") then
		if bar.table.color.R == 1 and bar.table.color.G == 0 and bar.table.color.B == 0 then
			msg = DBM_HORDE..": "..msg;
		elseif bar.table.color.R == 0 and bar.table.color.G == 0 and bar.table.color.B == 1 then
			msg = DBM_ALLIANCE..": "..msg;
		end
	end
	
	if ChatFrameEditBox:IsShown() then
		ChatFrameEditBox:Insert(msg);
	else
		if bar.startedBy == "Battlegrounds" then
			SendChatMessage(msg, "BATTLEGROUND");
		else
			SendChatMessage(msg, "RAID");
		end
	end
end
