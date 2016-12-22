DBM.AddOns.Razorgore = {
	["Name"] = DBM_RG_NAME,
	["Abbreviation1"] = "rg",
	["Abbreviation2"] = "razor",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_RG_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 1,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(45 - delay, "Add Spawn");
	end,
};
