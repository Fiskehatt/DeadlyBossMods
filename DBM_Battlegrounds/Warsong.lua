--dummy mod, the real mod is still the "battlegrounds" mod, but I don't want to rewrite it :>
DBM.AddOns.Warsong = { 
	["Name"] = DBM_WARSONG, 
	["Abbreviation1"] = "Warsong", 
	["Version"] = "1.0", 
	["Author"] = "Nitram, LeoLeal, Diablohu, Tandanu", 
	["Description"] = DBM_BGMOD_LANG["WS_DESCRIPTION"],
	["Instance"] = DBM_OTHER, 
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 3, 
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
			variable = "DBM.AddOns.Battlegrounds.Options.ShowWsgFrame", 
			text = DBM_BGMOD_LANG.WSG_INFOFRAME_INFO, 
			func = function()
				DBM.AddOns.Battlegrounds.Options.ShowWsgFrame = not DBM.AddOns.Battlegrounds.Options.ShowWsgFrame;
				if DBM.AddOns.Battlegrounds.Options.ShowWsgFrame and GetRealZoneText() == DBM_WARSONG then
					DBM.AddOns.Battlegrounds.WSGInfoFrame(true);
				else
					DBM.AddOns.Battlegrounds.WSGInfoFrame(false);
				end
			end, 
		},
	},
};