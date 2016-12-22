if not DBM.Bosses[DBM_BWL] then
	DBM.Bosses[DBM_BWL] = {};
end
DBM.Bosses[DBM_BWL]["RAZORGORE"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_RG_NAME,
	["startTrigger"] = {
		[DBM_RG_YELL] = true,
	},
	["minCombatTime"] = 120,
	["BossMods"] = {
		"Razorgore",
	},
};
DBM.Bosses[DBM_BWL]["VAELASTRASZ"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_VAEL_NAME,
	["delay"] = 5,
	["BossMods"] = {
		"Vaelastrasz",
	},
};
DBM.Bosses[DBM_BWL]["LASHLAYER"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_LASHLAYER_NAME,
	["startTrigger"] = {
		[DBM_LASHLAYER_YELL] = true,
	},
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_BWL]["FIREMAW"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_FIREMAW_NAME,
	["delay"] = 10,
	["BossMods"] = {
		"Firemaw",
	},
};
DBM.Bosses[DBM_BWL]["EBONROC"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_EBONROC_NAME,
	["delay"] = 15,
	["BossMods"] = {
		"Ebonroc",
	},
};
DBM.Bosses[DBM_BWL]["FLAMEGOR"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_FLAMEGOR_NAME,
	["delay"] = 15,
	["BossMods"] = {
		"Flamegor",
	},
};
DBM.Bosses[DBM_BWL]["CHROMAGGUS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_CHROMAGGUS_NAME,
	["delay"] = 6,
	["BossMods"] = {
		"Chromaggus",
	},
};
DBM.Bosses[DBM_BWL]["NEFARIAN"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_NEFARIAN_NAME,
	["startTrigger"] = {
		[DBM_NEFARIAN_YELL_PHASE1] = true,
	},
	["BossMods"] = {
		"Nefarian",
	},
};