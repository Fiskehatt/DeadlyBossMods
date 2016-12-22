if not DBM.Bosses[DBM_ZG] then
	DBM.Bosses[DBM_ZG] = {};
end


DBM.Bosses[DBM_ZG]["JEKLIK"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_JEKLIK_NAME,
	["delay"] = 7,
	["BossMods"] = {
		"Jeklik",
	},
};
DBM.Bosses[DBM_ZG]["VENOXIS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_VENOXIS_NAME,
	["delay"] = 15,
	["BossMods"] = {
		"Venoxis",
	},
};
DBM.Bosses[DBM_ZG]["MARLI"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_MARLI_NAME,
	["startTrigger"] = {
		[DBM_MARLI_SPIDER_EXPR] = true,
	},
	["BossMods"] = {
		"Marli",
	},
};
DBM.Bosses[DBM_ZG]["MANDOKIR"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_MANDOKIR_NAME,
	["startTrigger"] = {
		[DBM_MANDOKIR_YELL_PULL] = true,
	},
	["BossMods"] = {
		"Mandokir",
	},
};
DBM.Bosses[DBM_ZG]["THEKAL"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_THEKAL_NAME,
	["delay"] = 7,
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_ZG]["ARLOKK"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_ARLOKK_NAME,
	["startTrigger"] = {
		[DBM_ARLOKK_YELL_PULL] = true,
	},		
	["BossMods"] = {
		"Arlokk",
	},
};
DBM.Bosses[DBM_ZG]["JINDO"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_JINDO_NAME,
	["delay"] = 10,
	["BossMods"] = {
		"Jindo",
	},
};

DBM.Bosses[DBM_ZG]["HAKKAR"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_HAKKAR_NAME,
	["delay"] = 5,
	["BossMods"] = {
		"Hakkar",
	},
};