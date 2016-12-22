DBM.AddOns.Arathi = { 
	["Name"] = DBM_ARATHI, 
	["Abbreviation1"] = "Arathi", 
	["Version"] = "1.0", 
	["Author"] = "Nitram, LeoLeal, Diablohu", 
	["Description"] = DBM_BGMOD_LANG["AB_DESCRIPTION"],
	["Instance"] = DBM_OTHER, 
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 2, 
	["DropdownMenu"] =  {
--[[	[1] = {
			variable = "DBM.AddOns.Battlegrounds.Options.ShowInviteTimer", 
			text = DBM_BGMOD_LANG.SHOW_INV_TIMER, 
			func = function() DBM.AddOns.Battlegrounds.Options.ShowInviteTimer = not DBM.AddOns.Battlegrounds.Options.ShowInviteTimer; end, 
		},]]
--[[	[2] = {
			variable = "DBM.AddOns.Battlegrounds.Options.ColorByClass", 
			text = DBM_BGMOD_LANG.COLOR_BY_CLASS, 
			func = function() DBM.AddOns.Battlegrounds.Options.ColorByClass = not DBM.AddOns.Battlegrounds.Options.ColorByClass; end, 
		},]]
		[1] = {
			variable = "DBM.AddOns.Battlegrounds.Options.ShowAbFrame", 
			text = DBM_BGMOD_LANG.AB_INFOFRAME_INFO, 
			func = function()
				DBM.AddOns.Battlegrounds.Options.ShowAbFrame = not DBM.AddOns.Battlegrounds.Options.ShowAbFrame;
				if DBM.AddOns.Battlegrounds.Options.ShowAbFrame and GetRealZoneText() == DBM_ARATHI then
					DBM.AddOns.Battlegrounds.ABInfoFrame(true);
				else
					DBM.AddOns.Battlegrounds.ABInfoFrame(false);
				end
			end, 
		},
	},
};
