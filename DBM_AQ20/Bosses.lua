if not DBM.Bosses[DBM_AQ20] then
	DBM.Bosses[DBM_AQ20] = {};
end

DBM.Bosses[DBM_AQ20]["KURINAXX"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_KURINAXX_NAME,
	["delay"] = 8,
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_AQ20]["RAJAXX"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_RAJAXX_NAME,
	["minCombatTime"] = 60,
	["startTrigger"] = {
		[DBM_RAJAXX_WAVE1_EXPR] = true,
	},
	["BossMods"] = {
		"Rajaxx",
	},
};
DBM.Bosses[DBM_AQ20]["MOAM"] = {
	["startMethod"] = "EMOTE",
	["name"] = DBM_MOAM_NAME,
	["startTrigger"] = {
		[DBM_MOAM_COMBAT_START] = true,
	},
	["BossMods"] = {
		"Moam",
	},
};
DBM.Bosses[DBM_AQ20]["BURU"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_BURU_NAME,
	["delay"] = 20,
	["BossMods"] = {
		"Buru",
	},
};
DBM.Bosses[DBM_AQ20]["AYAMISS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_AYAMISS_NAME,
	["delay"] = 8,
	["BossMods"] = {
		"Ayamiss",
	},
};
DBM.Bosses[DBM_AQ20]["OSSIRIAN"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_OSSIRIAN_NAME,
	["delay"] = 15,
	["BossMods"] = {
		"Ossirian",
	},
};