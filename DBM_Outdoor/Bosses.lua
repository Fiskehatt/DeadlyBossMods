
DBM.Bosses[DBM_ONYXIAS_LAIR] = {
	["ONYXIA"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_ONYXIA_NAME,
		["delay"] = 5,
		["BossMods"] = {
			"Onyxia",
		},
	},
};


DBM.Bosses[DBM_BLASTED_LANDS] = {
	["KAZZAK"] = {
		["startMethod"] = "YELL",
		["name"] = DBM_KAZZAK_NAME,
		["startTrigger"] = {
			[DBM_KAZZAK_START_YELL] = true,
		},
		["BossMods"] = {
			"Kazzak",
		},
	},
};

DBM.Bosses[DBM_AZSHARA] = {
	["AZUREGOS"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_AZUREGOS_NAME,
		["delay"] = 5,
		["BossMods"] = {
			"Azuregos",
		},
	},
};


DBM.Dragons = {
	["YSONDRE"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_OUTDOOR_YSONDRE,
		["delay"] = 5,
		["BossMods"] = {
			"OutdoorDragons",
		},
	},
	["EMERISS"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_OUTDOOR_EMERISS,
		["delay"] = 5,
		["BossMods"] = {
			"OutdoorDragons",
		},
	},
	["TAERAR"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_OUTDOOR_TAERAR,
		["delay"] = 5,
		["BossMods"] = {
			"OutdoorDragons",
		},
	},
	["LETHON"] = {
		["startMethod"] = "COMBAT",
		["name"] = DBM_OUTDOOR_LETHON,
		["delay"] = 5,
		["BossMods"] = {
			"OutdoorDragons",
		},
	},
}

DBM.Bosses[DBM_DUSKWOOD] = DBM.Dragons;
DBM.Bosses[DBM_ASHENVALE] = DBM.Dragons;
DBM.Bosses[DBM_FERALAS] = DBM.Dragons;
DBM.Bosses[DBM_HINTERLANDS] = DBM.Dragons;
