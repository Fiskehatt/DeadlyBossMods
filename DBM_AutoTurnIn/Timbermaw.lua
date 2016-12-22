--
-- Auto Return of Timbermaw Reputation v0.1
--

DBM.AddOns.Timbermaw = { 
	["Name"] = DBM_TIMBERMAW_NAME, 
	["Abbreviation1"] = "Timbermaw", 
	["Version"] = "0.1", 
	["Author"] = "Diablohu",
	["Description"] = DBM_TIMBERMAW_DESCRIPTION,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Options"] = {
		["Enabled"] = true, 
		["Announce"] = false, 
	}, 
	["Events"] = {
		["GOSSIP_SHOW"] = true, 	-- Turn In
		["QUEST_PROGRESS"] = true, 	-- Turn In
		["QUEST_COMPLETE"] = true, 	-- Turn In
	}, 	
	["GetItemName"] = function(bag,  slot)
		local itemlink;
		if (bag == -1) then	itemlink = GetInventoryItemLink("player",  slot);
		else			itemlink = GetContainerItemLink(bag,  slot);
		end
		if (itemlink) then
			local _,  _,  name = string.find(itemlink,  "^.*%[(.*)%].*$");
			return name;
		else	return "";
		end
	end, 
	["GetItemCount"] = function(ItemName)
		local anzl,  bagNr,  bagSlot = 0;
		for bagNr = 0,  10,  1 do
			for bagSlot = 1,  GetContainerNumSlots(bagNr),  1 do
				if( DBM.AddOns.Timbermaw.GetItemName(bagNr,  bagSlot) == ItemName) then
					local _,  itemCount = GetContainerItemInfo(bagNr,  bagSlot);
					anzl = anzl + itemCount;
				end
			end
		end
		return anzl;
	end, 
	["OnEvent"] = function(event,  arg1)
		local target = UnitName("target");
		if (event == "GOSSIP_SHOW") then
			if (target == DBM_SALFA and DBM.AddOns.Timbermaw.GetItemCount(DBM_TIMBERMAW_WS_NAME) >= 5) then		-- Winterspring
				SelectGossipAvailableQuest(1);
			elseif ( (target == DBM_NAFIEN or target == DBM_GRAZLE ) and DBM.AddOns.Timbermaw.GetItemCount(DBM_TIMBERMAW_FW_NAME) >= 5) then	-- Felwood
				SelectGossipAvailableQuest(1);
			end
		end
		
		if (event=="QUEST_PROGRESS") then
			if (target == DBM_SALFA) then
				if( DBM.AddOns.Timbermaw.GetItemCount(DBM_TIMBERMAW_WS_NAME) == 0 ) then
					return;
				end
				CompleteQuest();
			end
			if (target == DBM_NAFIEN or target == DBM_GRAZLE ) then
				if(  DBM.AddOns.Timbermaw.GetItemCount(DBM_TIMBERMAW_FW_NAME) == 0 ) then
					return;
				end
				CompleteQuest();
			end
		end
		
		if (event=="QUEST_COMPLETE") then
			if (target == DBM_SALFA or target == DBM_NAFIEN or target == DBM_GRAZLE) then
				GetQuestReward(0);
				DBM.AddMsg(DBM_TIMBERMAW_THANKS);
			end
		end
	end,
};


