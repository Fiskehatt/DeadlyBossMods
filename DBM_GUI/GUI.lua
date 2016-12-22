-- -------------------------------------------------------------------- --
-- Gui for La Vendetta Boss Mods written by DM|Nitram                   --
-- -------------------------------------------------------------------- --
--
-- ChangeLog (releases):
--
--  v0.75: 
-- 	Added Tooltip Support for the Dialog Functions
--
--  v0.80:
--  	Implementation of all Syncronization Options
--	Languagefile for the whole GUI Dialog
--  
--  v0.85:
--  	Added new Tab for BWL
--  	Modified some Functions from Tabbing
--  	Added Dropdown Handling
--
--  v0.90:
--  	Added extra Tabs for Options
--  	Added Pizza Timer (selfmade Timers like "break for x sec" or "pizza in 10 min")
--  	Added Raidwarning Sound Option
--	Removed some Debug Messages
--
--  v0.95:
--  	Added more Options to Setup the RaidWarning Frame
--  	Added Special Effect Warning System to Options
--  	Fixed some Bugs while saving Options Variable
--  	Fixed bug which blocks the scrollframe from scrolling
--  	Fixed Pizza Timer Broadcast Bug
--      Fixed OnValue changed Bug
--
--  v1.00:
--  	Added Molten Core Tab for BossMods
--  	Added Other Tab for BossMods
--  	Added Options to configure Local Warnings
--  	Added Options to configure Raid Warning Frame
--  	Added SideFrame for Options
--  	Added Pos X Slider for Raid and Local Warnings
--  	Added new Function "DBM_Gui_AddTab" to add new Tabs
--  	Rewrote all Options for the new SideFrame
--  	Rewrote MainFrame Tabs for Dynamic Tabbing
--  	Rewrote the most Translations
--  	Modified some Functions to add dynamic Tabs
--  	Modified Dropdown Menu Handling
--  	Modified Broadcast Button from Pizza Timer (now requires Rank)
--  	Fixed so many simple bugs while rewriting the Options
--  	Removed old Functions and Handlers
--  	Removed old Buggy Code
--
--  v1.01:
--  	Added Option to disable RaidWarning and LocalWarning Frame
--	Added Option to set the Scale of the Bars
--	Moved some Options and Buttons
--	Changed a lot of Descriptions
--	Fixed disable Status Bar and hide all bars directly
--  
--  v1.05:
--  	Added Infoframe (DBMGui) System for AddOns
--	Added DistanceFrame via InfoFrame
--	Added Slashcommand /distance
--  	Moved InfoFrame to DBM_GUI_InfoFrame.lua - need wow restart
--  	Added new Slider for StatusBar Width and Scale
--  	Added new Slider for Special Warning Text Size
--
--  v1.10
--  	Added Slashcommand /abstand for de Client as /distance
--  	Build new Frame Positioning System
--  	Modivied default Font Value of the RaidWarningFrame
--  	Added new features for StatusBar Designs
--  	Added new Tab for Auto Reply Message System
--  	Added new Auto Reply Message Options
--  	Updated some XML and Lua Code
--
--  v1.15
--  	Added some new Buttons
--  	Added some new Options :)
--  	Updated some Files for Burning Crusade Support
--  	Updated Font Detection System 
--  	Fixed Bug in ColorSelectors
--
--  v1.20
--  	Added Option to automatical hide Playernames in Raidgroups
--  	Fixed Bug which prevented the scrollframe from scrolling
--
--  v1.25
--  	Added Option ot load AddOns on Demand
--  	Added Combat Log Range Setup
--
-- -------------------------------------------------------------------- --
-- Developer Information
--
--  Howto add new Tabs:
--  	DBM_Gui_AddTab( instancekey, tabtext );		-- this function is not needed, because we added other Tab
--
--	* After this, you simply can find all the Bossmods loaded with DBM.AddOns.ExampleBoss.Instance == instancekey
--	* there is a hard limit of 10 Tabs max, i don't think that all of them are able to be shown at a time
--	RETURN: boolean true|false 
--	* if the Cap is reached it returns false, otherwise true
--	* Title Text is DBMGUI_TAB_(1-10)_TITLE_TEXT		-- will be changed soon
-- -------------------------------------------------------------------- --

DBMGUI_DEBUG = false;
DBMGUI_VERSION = "1.25";
DBMGUI_SIDEFRAME_TABCOUNT = 6;
DBMGUI_LINES_TO_DISPLAY = 10;
DBMGUI_FRAME_HEIGHT = 34;

----------------------------
-- DO NOT CHANGE ANYTHING --
----------------------------

-- DE + EN Possible Fonts
-- Fonts\SKURRI.TTF
-- Fonts\MORPHEUS.TTF
-- Fonts\FRIZQT__.TTF
-- Fonts\ARIALN.TTF
--


DMGUI = { ["MainFrameTabs"] = { } }; 		-- Table for Adding Tabs via DBM.Gui.AddTab( instancekey, text )
DBMGUI_MAINFRAME_TABCOUNT = 0;

DBMSETUPFRAME_SUBFRAMES = { "DBMBossModListFrame" };
DBMOPTIONSFRAME_SUBFRAMES = { 
	"DBMOptionsFramePage1", 
	"DBMOptionsFramePage2", 
	"DBMOptionsFramePage3", 
	"DBMOptionsFramePage4", 
	"DBMOptionsFramePage5",
	"DBMOptionsFramePage6",
};
UIPanelWindows["DBMBossModFrame"] = { area = "left",	pushable = 2,	whileDead = 1 };
table.insert(UIChildWindows, "DBMOptionsFrame");

local datasetInstance = {};

function DBMBossModFrame_ShowSubFrame(frameName)
	for index, value in pairs(DBMSETUPFRAME_SUBFRAMES) do
		if ( value == frameName ) then
			getglobal(value):Show()
		else
			getglobal(value):Hide();
		end	
	end 
end

function DBMBossModFrame_ShowDropdown(mNameId, button)
	HideDropDownMenu(1);

	DMBossModDropDownFrame.initialize = DBMBossModFrameDropDown_Initialize;
	DMBossModDropDownFrame.displayMode = "MENU";
	DMBossModDropDownFrame.Name = datasetInstance[mNameId].Key or false;
	DMBossModDropDownFrame.button = button;

	ToggleDropDownMenu(1, nil, DMBossModDropDownFrame, "cursor");
end

function DBMBossModFrameDropDown_Initialize()
--[[  
List of button attributes
======================================================
info.text = [STRING]  			-- The text of the button
info.value = [ANYTHING]  		-- The value that UIDROPDOWNMENU_MENU_VALUE is set to when the button is clicked
info.func = [function()]  		-- The function that is called when you click the button
info.variable = [STRING (name of a bool var)]	-- a string which contains the name of a boolean variable, used to check the button or not
info.disabled = [nil, 1] 		-- Disable the button and show an invisible button that still traps the mouseover event so menu doesn't time out
info.hasArrow = [nil, 1]  		-- Show the expand arrow for multilevel menus
info.hasColorSwatch = [nil, 1]  	-- Show color swatch or not, for color selection
info.r = [1 - 255] 			-- Red color value of the color swatch
info.g = [1 - 255]  			-- Green color value of the color swatch
info.b = [1 - 255]  			-- Blue color value of the color swatch
info.textR = [1 - 255]  		-- Red color value of the button text
info.textG = [1 - 255]  		-- Green color value of the button text
info.textB = [1 - 255]  		-- Blue color value of the button text
info.swatchFunc = [function()]  	-- Function called by the color picker on color change
info.hasOpacity = [nil, 1]  		-- Show the opacity slider on the colorpicker frame
info.opacity = [0.0 - 1.0]  		-- Percentatge of the opacity, 1.0 is fully shown, 0 is transparent
info.opacityFunc = [function()] 	-- Function called by the opacity slider when you change its value
info.cancelFunc = [function(prevVal)] 	-- Function called by the colorpicker when you click the cancel button (it takes the previous values as its argument)
info.notClickable = [nil, 1]  		-- Disable the button and color the font white
info.notCheckable = [nil, 1]  		-- Shrink the size of the buttons and don't display a check box
info.owner = [Frame]  			-- Dropdown frame that "owns" the current dropdownlist
info.keepShownOnClick = [nil, 1]  	-- Don't hide the dropdownlist after a button is clicked
info.tooltipTitle = [nil, STRING] 	-- Title of the tooltip shown on mouseover
info.tooltipText = [nil, STRING] 	-- Text of the tooltip shown on mouseover
info.justifyH = [nil, "CENTER"] 	-- Justify button text
info.arg1 = [ANYTHING] 			-- This is the first argument used by info.func
info.arg2 = [ANYTHING] 			-- This is the second argument used by info.func
info.textHeight = [NUMBER] 		-- font height for button text
]]	

	if( UIDROPDOWNMENU_MENU_LEVEL == 1 ) then
		local info = {};

		UIDropDownMenu_AddButton{						-- Title
			text = DBM.AddOns[DMBossModDropDownFrame.Name].Name.." "..DBMGUI_DROPDOWNMENU_TITLE,
			notCheckable = 1,
			isTitle = 1,
		}
--		UIDropDownMenu_AddButton{ notCheckable = 1 }				-- Space --> sucks =[

		if( DMBossModDropDownFrame.button == "RightButton" ) then		-- Only show if right clicked
			info["text"] = DBMGUI_ENABLE_ADDON;	-- Enable/Disable AddOn
			if( DBM.AddOns[DMBossModDropDownFrame.Name].Options.Enabled ) then info["checked"] = 1; else info["checked"] = nil; end
			info["func"] = function() 
					if( DBM.AddOns[DMBossModDropDownFrame.Name].Options.Enabled ) then 
						SlashCmdList[DMBossModDropDownFrame.Name]("off");
					else 
						SlashCmdList[DMBossModDropDownFrame.Name]("on");
					end 
					DBMBossModList_Update();
						end;
			info["keepShownOnClick"] = 1;
			UIDropDownMenu_AddButton(info);
	
			info["text"] = DBMGUI_ENABLE_ANNOUNCE;	-- Enable/Disable Announce
			if( DBM.AddOns[DMBossModDropDownFrame.Name].Options.Announce ) then info["checked"] = 1; else info["checked"] = nil; end
			info["func"] = function() 
					if( DBM.AddOns[DMBossModDropDownFrame.Name].Options.Announce ) then 
						SlashCmdList[DMBossModDropDownFrame.Name]("announce off"); 
					else 
						SlashCmdList[DMBossModDropDownFrame.Name]("announce on");
					end 
					DBMBossModList_Update();
				       end;
			info["keepShownOnClick"] = 1;
			UIDropDownMenu_AddButton(info);
		end
			
		local infoTable = DBM.AddOns[DMBossModDropDownFrame.Name].DropdownMenu;
		
		if( infoTable ~= nil ) then
			
			for key, info in pairs(infoTable) do
				if( info.variable ~= nil ) then 
					if( table.getglobal(info.variable) ) then		info.checked = 1; 
					else							info.checked = nil; 
					end 
				end
				info.keepShownOnClick = 1;
				UIDropDownMenu_AddButton( info );
			end
		end
		
	end

end

-- Dropdown for Raidwarning Setup
function DBMOptionsFrame_RaidWarningDropDown_CreateMenu()
	local info = {};
	info.func = function() 
			UIDropDownMenu_SetSelectedID(DBMOptionsFramePage3RaidWarningDropDown, this:GetID()); 
			DBM.Options.Gui.RaidWarnSound = this:GetID();
			DBMBossModFrame_RaidWarningPlaySound(this:GetID());
		    end;
	info.text = DBMGUI_DROPDOWN_RAIDWARNING_OPTION_1;
	UIDropDownMenu_AddButton(info);

	info.text = DBMGUI_DROPDOWN_RAIDWARNING_OPTION_2;
	UIDropDownMenu_AddButton(info);

	info.text = DBMGUI_DROPDOWN_RAIDWARNING_OPTION_3;
	UIDropDownMenu_AddButton(info);
end

function DBMBossModFrame_RaidWarningPlaySound(soundnr)
	if( soundnr == 1 ) then		PlaySound("RaidWarning");					-- RaidWarning (default Sound)
	elseif( soundnr == 2 ) then	PlaySoundFile("Sound\\Doodad\\BellTollNightElf.wav");		-- BellTollNightElf (CT_Raid Sound)
	else				DBM.AddMsg(DBMGUI_DROPDOWN_RAIDWARNING_INFO_DISABLED);
	end
end
-- End Dropdown Raidwarning Setup

local playerLoginExecuted;

function DBMBossModFrame_OnEvent(event)
	if( event == "PLAYER_LOGIN" ) and not playerLoginExecuted then
		playerLoginExecuted = true;

		DBM_Gui_AddTab(DBMGUI_TAB_NAXX, DBMGUI_TAB_NAXX_TEXT);
		DBM_Gui_AddTab(DBMGUI_TAB_AQ40, DBMGUI_TAB_AQ40_TEXT);
		DBM_Gui_AddTab(DBMGUI_TAB_BWL, DBMGUI_TAB_BWL_TEXT);
		DBM_Gui_AddTab(DBMGUI_TAB_MC, DBMGUI_TAB_MC_TEXT);
		DBM_Gui_AddTab(DBMGUI_TAB_20PL, DBMGUI_TAB_20PL_TEXT);
		DBM_Gui_AddTab(DBMGUI_TAB_OTHER, DBMGUI_TAB_OTHER_TEXT);


	elseif( event == "RAID_ROSTER_UPDATE" ) then
		
		if (DBM.Options.Gui["HidePlayerNamesInRaid"] and GetNumRaidMembers() > 0) then
			if (tonumber(GetCVar("UnitNamePlayer")) == 1) then
				DBM.Options.Gui["HidePlayerNames"] = true;
				SetCVar("UnitNamePlayer", 0);
			end

		elseif (DBM.Options.Gui["HidePlayerNamesInRaid"] and GetNumRaidMembers() == 0) then
			if (DBM.Options.Gui["HidePlayerNames"]) then
				SetCVar("UnitNamePlayer", 1);
				DBM.Options.Gui["HidePlayerNames"] = false;
			end
		end

	elseif( event == "PLAYER_LOGOUT" ) then
		if (DBM.Options.Gui["HidePlayerNames"]) then
			SetCVar("UnitNamePlayer", 1);
		end
	end
end
	 
function DBMGUI_SetTabPosition_Update(div, lax, lay, lbx, lby, tabcount)	
	-- div = pixel difference (the ugly part) 
	-- lax = x offset from first 
	-- lay = y offset from first
	-- lbx = x offset from second to n
	-- lby = y offset from second to n
	if( this.OldSelectedTab ~= this.selectedTab ) then
		local ltab = this.selectedTab;
		if( ltab == 1 ) then
			getglobal(this:GetName().."Tab1"):SetPoint("LEFT", this:GetName(), "BOTTOMLEFT", lax, lay-div);
		else
			getglobal(this:GetName().."Tab1"):SetPoint("LEFT", this:GetName(), "BOTTOMLEFT", lax, lay);
		end
		for i=2, tabcount, 1 do
			getglobal(this:GetName().."Tab"..i):SetPoint("LEFT", this:GetName().."Tab"..(i-1), "RIGHT", lbx, 0);
		end
		if( ltab == 1 ) then
			getglobal(this:GetName().."Tab2"):SetPoint("LEFT", this:GetName().."Tab1", "RIGHT", lbx, div);
		else
			getglobal(this:GetName().."Tab"..ltab):SetPoint("LEFT", this:GetName().."Tab"..(ltab-1), "RIGHT", lbx, lby-div);
			if( getglobal(this:GetName().."Tab"..(ltab+1)) ~= nil ) then
				getglobal(this:GetName().."Tab"..(ltab+1)):SetPoint("LEFT", this:GetName().."Tab"..ltab, "RIGHT", lbx, lby+div);
			end
		end
		this.OldSelectedTab = this.selectedTab;
	end
end

function DBMBossModFrame_Update()
	DBMBossModFrameTitleText:SetText(getglobal("DBMGUI_TAB_"..DBMBossModFrame.selectedTab.."_TITLE_TEXT") );
	if type(DBMBossModFrame.lastSelectedBossMod[DBMBossModFrame.selectedTab]) == "number" then
		DBMBossModFrame.selectedBossMod = DBMBossModFrame.lastSelectedBossMod[DBMBossModFrame.selectedTab];
	end
	DBMBossModFrame_ShowSubFrame("DBMBossModListFrame");
	DBMBossModList_Update();
end

function DBMBossModFrame_OnShow()
	DBMBossModFrame.showDBMBossModList = 1;
	DBMBossModFrame_Update();
	UpdateMicroButtons();
	PlaySound("igMainMenuOpen");
end

function DBMBossModFrame_OnHide()
	UpdateMicroButtons();
	PlaySound("igMainMenuClose");
	for index, value in pairs(DBMSETUPFRAME_SUBFRAMES) do
		getglobal(value):Hide();
	end
end

function DBMBossModList_Update()
	local numDBMBossMod = 0;
	datasetInstance = {};

	for key, value in pairs(DBM.SortedAddOns) do
		if( DBM.AddOns[value].GUITab == DMGUI.MainFrameTabs[DBMBossModFrame.selectedTab].Tab) then
			numDBMBossMod = numDBMBossMod + 1;
			datasetInstance[numDBMBossMod] = {};
			datasetInstance[numDBMBossMod]["Key"] = value; 
			datasetInstance[numDBMBossMod]["Name"] = DBM.AddOns[value].Name;
			datasetInstance[numDBMBossMod]["Description"] = DBM.AddOns[value].Description;			
			datasetInstance[numDBMBossMod]["Author"] = string.gsub(DBM.AddOns[value].Author, "La Vendetta|", "");

		end
	end

	local nameLocationText;
	local infoText;
	local bossButton;
	
	local bossOffset = FauxScrollFrame_GetOffset(DBMBossModFrameDBMBossModScrollFrame);
	local bossIndex;
	for i=1, DBMGUI_LINES_TO_DISPLAY, 1 do
		bossIndex = bossOffset + i;

		infoBossMod = getglobal("DBMBossModButton"..i.."ButtonTextBossMod");
		infoAuthor = getglobal("DBMBossModButton"..i.."ButtonTextAuthor");
		infoDescription = getglobal("DBMBossModButton"..i.."ButtonTextDescription");

		if( datasetInstance[bossIndex] ~= nil ) then
			if( DBM.AddOns[datasetInstance[bossIndex].Key].Options.Enabled ) then
				infoBossMod:SetText(datasetInstance[bossIndex]["Name"]);					-- Main Text
			else
				infoBossMod:SetText("|cff999999"..datasetInstance[bossIndex]["Name"].."|r");
			end 
			
			if DBMBossModFrameDBMBossModScrollFrame:IsShown() then
				infoDescription:SetText( DBM.CutText(datasetInstance[bossIndex]["Description"], 50) );			-- Sub Text
			else
				infoDescription:SetText( DBM.CutText(datasetInstance[bossIndex]["Description"], 54) );			-- Sub Text
			end

			infoAuthor:SetText(datasetInstance[bossIndex]["Author"]);
			setglobal("DBMBossModButton"..i.."TTText", datasetInstance[bossIndex]["Name"]);
			setglobal("DBMBossModButton"..i.."TTDesc", datasetInstance[bossIndex]["Description"]);
		end

		bossButton = getglobal("DBMBossModButton"..i);
		bossButton:SetID(bossIndex);
		
		-- Update the highlight
		if ( bossIndex == DBMBossModFrame.selectedBossMod ) then
			bossButton:LockHighlight();
		else
			bossButton:UnlockHighlight();
		end
		
		if ( bossIndex > numDBMBossMod ) then
			bossButton:Hide();
		else
			bossButton:Show();
		end

		if ( numDBMBossMod == 0 ) then
			DBMBossModListFrameLoadAddOnInfo:Show();
			DBMBossModListFrameLoadAddOns:Show();
		else
			DBMBossModListFrameLoadAddOnInfo:Hide();
			DBMBossModListFrameLoadAddOns:Hide();
		end

	end

	-- Update the Buttons on the Bottom Frame for Options
	if( DBMBossModFrame.selectedBossMod > 0 ) then
		local shortkey = datasetInstance[DBMBossModFrame.selectedBossMod].Key;
		local shortvar = DBM.AddOns[shortkey];
	
		if( DBM.AddOns[shortkey].Options.Enabled ) then 					-- Button 1 -> on/off
			DBMBossModListFrameButton1:SetText( DBMGUI_DISABLE_ADDON );
			DBMBossModListFrameButton1:SetScript("OnClick", function() SlashCmdList[shortkey]("off"); DBMBossModList_Update(); end);
		else
			DBMBossModListFrameButton1:SetText( DBMGUI_ENABLE_ADDON );
			DBMBossModListFrameButton1:SetScript("OnClick", function() SlashCmdList[shortkey]("on"); DBMBossModList_Update(); end );
		end
		DBMBossModListFrameButton1:Enable();

		DBMBossModListFrameButton2:SetText( DBMGUI_STOP_ADDON );				-- Button 2 -> stop
		DBMBossModListFrameButton2:SetScript("OnClick", function() SlashCmdList[shortkey]("stop"); DBMBossModList_Update(); end );
		DBMBossModListFrameButton2:Enable();

		if( DBM.AddOns[shortkey].Options.Announce ) then					-- Button 3 -> Announce on/off
			DBMBossModListFrameButton3:SetText( DBMGUI_DISABLE_ANNOUNCE );
			DBMBossModListFrameButton3:SetScript("OnClick", function() SlashCmdList[shortkey]("announce off"); DBMBossModList_Update(); end);
		else
			DBMBossModListFrameButton3:SetText( DBMGUI_ENABLE_ANNOUNCE );
			DBMBossModListFrameButton3:SetScript("OnClick", function() SlashCmdList[shortkey]("announce on"); DBMBossModList_Update(); end );
		end
		DBMBossModListFrameButton3:Enable();

		if( DBM.AddOns[shortkey].DropdownMenu ~= nil ) then
			DBMBossModListFrameButton4:SetText( DBMGUI_SHOW_DROPDOWNMENU );		-- Button 4 -> Show Dropdown
			DBMBossModListFrameButton4:SetScript("OnClick", function() DBMBossModFrame_ShowDropdown( DBMBossModFrame.selectedBossMod ); end );
			DBMBossModListFrameButton4:Enable();
		else 
			DBMBossModListFrameButton4:SetText( DBMGUI_SHOW_DROPDOWNMENU );
			DBMBossModListFrameButton4:Disable();
		end
	else
		-- Set Text and Grey out Buttons
		DBMBossModListFrameButton1:SetText( DBMGUI_ENABLE_ADDON );
		DBMBossModListFrameButton1:Disable();

		DBMBossModListFrameButton2:SetText( DBMGUI_STOP_ADDON );
		DBMBossModListFrameButton2:Disable();

		DBMBossModListFrameButton3:SetText( DBMGUI_ENABLE_ANNOUNCE );
		DBMBossModListFrameButton3:Disable();

		DBMBossModListFrameButton4:SetText( DBMGUI_SHOW_DROPDOWNMENU );
		DBMBossModListFrameButton4:Disable();
	end
	
	-- ScrollFrame stuff
	FauxScrollFrame_Update(DBMBossModFrameDBMBossModScrollFrame, numDBMBossMod, DBMGUI_LINES_TO_DISPLAY, 34 );
end

function DBMBossModButton_OnClick(button)			-- Called on Mouseclick on a Listitem
	DBMBossModFrame.lastSelectedBossMod[DBMBossModFrame.selectedTab] = this:GetID();
	if ( button == "LeftButton" ) then
		DBMBossModFrame.selectedBossMod = this:GetID();
		DBMBossModList_Update();
	else
		DBMBossModFrame.selectedBossMod = this:GetID();
		DBMBossModList_Update();
		DBMBossModFrame_ShowDropdown( this:GetID(), button);
	end
end


function DBM_GUI_LoadAddOn()
	if (DBMBossModFrame.selectedTab == 1) then
		LoadAddOn("DBM_NAXX");

	elseif (DBMBossModFrame.selectedTab == 2) then
		LoadAddOn("DBM_AQ40");

	elseif (DBMBossModFrame.selectedTab == 3) then
		LoadAddOn("DBM_BWL");

	elseif (DBMBossModFrame.selectedTab == 4) then
		LoadAddOn("DBM_MC");

	elseif (DBMBossModFrame.selectedTab == 5) then
		LoadAddOn("DBM_AQ20");
		LoadAddOn("DBM_ZG");
	elseif (DBMBossModFrame.selectedTab == 6) then
		LoadAddOn("DBM_Battlegrounds");
		LoadAddOn("DBM_Outdoor");
	end
	DBM.LoadAddOns();
	HideUIPanel(DBMBossModFrame);
	ShowUIPanel(DBMBossModFrame);
end


----------------------------------------------------------------------------
-- Options Side Frame - Need more freespace? no problem, sideframe 4tw :) --
----------------------------------------------------------------------------
function DBMOptionsFrame_OnShow()
	DBMBossModFrameOptionsButton:SetText(DBMGUI_HIDE_OPTIONS);
	DBMOptionsFrame_Update();
	UpdateMicroButtons();
	PlaySound("igMainMenuOpen");
end

function DBMOptionsFrame_OnHide()
	DBMBossModFrameOptionsButton:SetText(DBMGUI_SHOW_OPTIONS);
	UpdateMicroButtons();
	PlaySound("igMainMenuClose");
	for index, value in pairs(DBMOPTIONSFRAME_SUBFRAMES) do
		getglobal(value):Hide();
	end
end

function DBMOptionsFrame_Update()
	DBMOptionsFrame.selectedTab = tonumber(DBMOptionsFrame.selectedTab);
	if( DBMOptionsFrame.selectedTab == nil ) then DBMOptionsFrame.selectedTab = 1; end

	DBMOptionsFrame_ShowSubFrame("DBMOptionsFramePage"..DBMOptionsFrame.selectedTab);
end

function DBMOptionsFrame_ShowSubFrame(frameName)
	for index, value in pairs(DBMOPTIONSFRAME_SUBFRAMES) do
		if ( value == frameName ) then
			getglobal(value):Show()
		else
			getglobal(value):Hide();
		end	
	end 
end
-- End Side Frame Functions


-- Function to reset MiniMap Button
function DBMMinimapButton_SetDefaultValues()
	DBM.Options["MinimapButton"] = {};
	DBM.Options.MinimapButton["Position"]	= 225;
	DBM.Options.MinimapButton["Radius"]	= 78.1;
	DBM.Options.MinimapButton["Enabled"]	= true;
	DBMMinimapButton_Move();
end

-- Function to get getglobal for Table Values
function table.getglobal(var)
	return(loadstring("return "..tostring(var))());
end


-- Add Tabbing
function DBM_Gui_AddTab(tab, title)
	if( table.getn( DMGUI.MainFrameTabs ) < 10 ) then
		for index, value in pairs(DMGUI.MainFrameTabs) do
			if( value.Tab == tab ) then
				return true;
			end
		end
		DBMGUI_MAINFRAME_TABCOUNT = DBMGUI_MAINFRAME_TABCOUNT + 1;
		table.insert( DMGUI.MainFrameTabs, { ["Tab"] = tab, ["Title"] = title } );
		return true;
	else
		return false;
	end
end



DBM_Gui_ExampleBar_Functions = {
	["OnUpdate"] = function()
		if DBM.Options.FillUpStatusBars then
			getglobal(this:GetName().."Bar"):SetValue(777);
		else
			getglobal(this:GetName().."Bar"):SetValue(1000 - 777);
		end
		getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", getglobal(this:GetName().."Bar"), "LEFT", ((getglobal(this:GetName().."Bar"):GetValue() / 1000) * getglobal(this:GetName().."Bar"):GetWidth()), DBMStatusBars_Designs[DBM.Options.StatusBarDesign].sparkOffset);
	end,
	["OnShow"] = function()
		getglobal(this:GetName().."Bar"):SetMinMaxValues(1, 1000);
		getglobal(this:GetName().."Bar"):SetValue(777);		
		getglobal(this:GetName().."BarSpark"):SetPoint("CENTER", this, "LEFT", ((getglobal(this:GetName().."Bar"):GetValue() / 100) * getglobal(this:GetName().."Bar"):GetWidth()), 0);
		getglobal(this:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
		getglobal(this:GetName().."BarTimer"):SetText("7.31");
	end,
	["OnMouseUp"] = function()
	end,
	["OnEnter"] = function()
	end,
	["OnLeave"] = function()
	end,
};

function DBM_Gui_ChangeExampleBarDesign(newDesign, globalDesignChanged)
	local oldDesign = DBM.Options.StatusBarDesign;
	if globalDesignChanged then
		DBMStatusBars_ChangeDesign(newDesign);
		DBM.StartStatusBarTimer(5, DBMGUI_DROPDOWN_STATUSBAR_EXAMPLE_BAR, true);
	end
	if DBMOptionsFramePage2StatusBarTimerExample then
		DBMOptionsFramePage2StatusBarTimerExample:Hide();
	end
	setglobal("DBMOptionsFramePage2StatusBarTimerExample", nil);
	for index, value in pairs(DBMStatusBars_Designs[oldDesign].subFrameNames) do
		setglobal("DBMOptionsFramePage2StatusBarTimerExample"..value, nil);
	end
	local newBar = CreateFrame("Frame", "DBMOptionsFramePage2StatusBarTimerExample", DBMOptionsFramePage2, DBMStatusBars_Designs[DBM.Options.StatusBarDesign].template);
	newBar:SetScale(1);
	newBar:SetWidth(195);
	getglobal(newBar:GetName().."Bar"):SetWidth(195 - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].widthModifier);
	getglobal(newBar:GetName().."Bar"):SetStatusBarColor(DBM.Options.StatusBarColor.r, DBM.Options.StatusBarColor.g, DBM.Options.StatusBarColor.b, DBM.Options.StatusBarColor.a);
	getglobal(newBar:GetName().."BarText"):SetWidth(195 - DBMStatusBars_Designs[DBM.Options.StatusBarDesign].textWidthModifier);
	newBar:SetPoint("TOPLEFT", 46, -55);
	for index, value in pairs(DBM_Gui_ExampleBar_Functions) do
		newBar:SetScript(index, value);
	end
	if type(DBMStatusBars_Designs[newDesign].initialize) == "function" then
		DBMStatusBars_Designs[newDesign].initialize(newBar);
	end
	newBar:Show();
end
