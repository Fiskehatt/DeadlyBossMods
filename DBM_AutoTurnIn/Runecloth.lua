--
-- Auto Return of Reputation v0.2
--

DBM.AddOns.Runecloth = { 
	["Name"] = DBM_RUNECLOTH_NAME, 
	["Abbreviation1"] = "runecloth", 
	["Version"] = "0.2", 
	["Author"] = "Nitram",
	["Description"] = DBM_RUNECLOTH_DESCRIPTION,
	["Instance"] = DBM_OTHER,
	["GUITab"] = DBMGUI_TAB_OTHER,
	["Sort"] = 99,
	["Options"] = {
		["Enabled"] = false, 
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
				if( DBM.AddOns.Runecloth.GetItemName(bagNr,  bagSlot) == ItemName) then
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
			if (target == DBM_RAEDONDUSKSTRIKER		-- Darnassus Cloth Quartermaster
			 or target == DBM_CLAVICUSKNAVINGHAM		-- Stormwind Cloth Quartermaster
			 or target == DBM_BUBULOACERBUS		-- Gnomeregan Cloth Quartermaster
			 or target == DBM_MISTINASTEELSHIELD) then	-- Ironforge Cloth Quartermaster

				if (DBM.AddOns.Runecloth.GetItemCount(DBM_RUNECLOTH_NAME) >= 20) then SelectGossipAvailableQuest(1);	end
			end
		end
		if (event=="QUEST_PROGRESS") then
			if (target == DBM_RAEDONDUSKSTRIKER 
			  or target == DBM_CLAVICUSKNAVINGHAM
			  or target == DBM_BUBULOACERBUS
			  or target == DBM_MISTINASTEELSHIELD) then

			 	 if( DBM.AddOns.Runecloth.GetItemCount(DBM_RUNECLOTH_NAME) == 0) then return; end

				CompleteQuest();
			end
		end
		if (event=="QUEST_COMPLETE") then
			if (target == DBM_RAEDONDUSKSTRIKER
			 or target == DBM_CLAVICUSKNAVINGHAM
			 or target == DBM_BUBULOACERBUS
			 or target == DBM_MISTINASTEELSHIELD) then

				GetQuestReward(0);
				DBM.AddMsg(DBM_RUNECLOTH_THANKS);
			end
		end
	end,
};


