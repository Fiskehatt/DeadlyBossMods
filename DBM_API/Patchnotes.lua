DBM_PN = {
	["en"] = {
		[221] = {
			[1] = "fixed \"stack overflow\" bug",
			[2] = "fixed a possible bug in the ChatFrame_AddMessage function",
			[3] = "fixed bad variable name for key bindings",
			[4] = "fixed some minor bugs in the battleground addon",
		},
		[220] = {
			[1] = "2.20",
			[2] = "fixed some patch 2.0 issues",
			[3] = "fixed some ZG combat detections",
			[4] = "fixed a bug that could produce an error message while looting",
			[5] = "fixed possible bug in the function that executes scheduled functions",
			[6] = "fixed a possible Heigan sync issue",
			[7] = "fixed some sync issues in Battlegrounds",
			[8] = "fixed some minor bugs in the combat detection code",
			[9] = "fixed some bugs in some boss mods",
			[10] = "fixed a bug that could cause strange errors",
			[11] = "fixed the Nefarian kill counter",
			[12] = " ",
			[13] = "removed Alliance:/Horde: prefix from BG bars, because its useless since the bars are red/blue",
			[14] = "updated C'Thun mod (thanks to Tsew@EU-Kirin-Tor)",
			[15] = "removed C'Thun Dark Glare target announce because it's very unreliable since patch 2.0",
			[16] = "updated Sapphiron mod :)",
			[17] = "updated some localizations (thanks to Navarra, Sadie, Miawen)",
			[18] = " ",
			[19] = "added a Twin Emp teleport timer that works without events! (the teleport event has been removed in patch 2.0)",
			[20] = "added timers with icons",
			[21] = "added some new functions to the API and moved the documentation to http://www.wowwiki.com/La_Vendetta_Boss_Mods",
			[22] = "added slash commands to start timers: /lv timer <time> <name> and /lv broadcast timer <time> <name>",
			[23] = "added Hakkar Mind Control announce & timer",
			[24] = "added \"Game starts in...\" timer for Arenas",
			[25] = "added a spam block feature, use /lvrt spamblock for more information",
		},
	},
}

StaticPopupDialogs["COPY_DBM_URL"] = {
	text = DBM_COPY_PASTE_NOW,
	button1 = DBM_CLOSE,
	hasEditBox = 1,	
	button2 = "",
	
	OnShow = function()
		getglobal(this:GetName().."EditBox"):SetText("http://wow.curse-gaming.com/en/files/details/4940/la-vendetta-boss-mods/");
		getglobal(this:GetName().."EditBox"):SetFocus();
		getglobal(this:GetName().."EditBox"):HighlightText();
		getglobal(this:GetName().."Button2"):Hide();
		getglobal(this:GetName().."Button1"):ClearAllPoints();
		getglobal(this:GetName().."Button1"):SetPoint("TOP", getglobal(this:GetName().."EditBox"), "BOTTOM", 0, -8);		
	end,
	OnHide = function()
		if ( ChatFrameEditBox:IsVisible() ) then
			ChatFrameEditBox:SetFocus();
		end
		getglobal(this:GetName().."EditBox"):SetText("");
		getglobal(this:GetName().."Button2"):Show();
	end,
	EditBoxOnEnterPressed = function()
		this:GetParent():Hide();
	end,
	EditBoxOnEscapePressed = function()
		this:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
