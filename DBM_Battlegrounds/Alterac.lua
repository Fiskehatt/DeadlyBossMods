DBM.AddOns.Alterac = { 
	["Name"] = DBM_ALTERAC, 
	["Abbreviation1"] = "Alterac", 
	["Version"] = "1.0", 
	["Author"] = "Nitram, LeoLeal, Diablohu", 
	["Description"] = DBM_BGMOD_LANG["AV_DESCRIPTION"],
	["Instance"] = DBM_OTHER, 
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 1, 
	["DropdownMenu"] =  {
--[[	[1] = {
			variable = "DBM.AddOns.Battlegrounds.Options.ShowInviteTimer", 
			text = DBM_BGMOD_LANG.SHOW_INV_TIMER, 
			func = function() DBM.AddOns.Battlegrounds.Options.ShowInviteTimer = not DBM.AddOns.Battlegrounds.Options.ShowInviteTimer; end, 
		},
		[2] = {
			variable = "DBM.AddOns.Battlegrounds.Options.ColorByClass", 
			text = DBM_BGMOD_LANG.COLOR_BY_CLASS, 
			func = function() DBM.AddOns.Battlegrounds.Options.ColorByClass = not DBM.AddOns.Battlegrounds.Options.ColorByClass; end, 
		},]]
		[1] = {
			variable = "DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn", 
			text = DBM_BGMOD_LANG.AV_TURNININFO, 
			func = function() DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn = not DBM.AddOns.Battlegrounds.Options.AVAutoTurnIn; end, 
		},
	},
};