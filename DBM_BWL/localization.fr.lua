-- -------------------------------------------- --
-- La Vendetta Boss Mods / French Localization  --
--  By Destiny|Tandanu  / By Proreborn et cr0k  --
-- -------------------------------------------- --

if ( GetLocale() == "frFR" ) then	

--Razorgore
DBM_RG_NAME		= "Tranchetripe l'Indompt\195\169";
DBM_RG_DESCRIPTION	= "Affiche un timer au d\195\169but du spawn d'adds.";

DBM_RG_CONTROLLER	= "Grethok le Controleur";


--Vaelastrasz
DBM_VAEL_NAME		= "Vaelastrasz le Corrompu";
DBM_VAEL_DESCRIPTION	= "Annonce <Mont\195\169e d'adrenaline>.";
DBM_VAEL_SEND_WHISPER	= "Envoyer des whisps";
DBM_VAEL_SET_ICON	= "Mettre ic\195\180ne";

DBM_VAEL_BA_WARNING	= "*** !! %s a la bombe !! ***";
DBM_VAEL_BA_WHISPER	= "Vous avez la bombe !";
DBM_VAEL_BA		= "Mont\195\169e d'adr\195\169naline";

DBM_VAEL_BA_REGEXP		= "([^%s]+) (%w+) les effets de Mont\195\169e d'adr\195\169naline.";
DBM_VAEL_BA_FADES_REGEXP	= "Mont\195\169e d'Adr\195\169naline dispara\195\174t de ([^%s]+)%.";

--Lashlayer
DBM_LASHLAYER_NAME	= "Seigneur des Couv\195\169es Lanistaire";
DBM_LASHLAYER_YELL	= "Aucun membre de votre esp\195\168ce ne devra\195\174t \195\170tre ici!";

--Firemaw/Ebonroc/Flamegor
DBM_FIREMAW_NAME				= "Gueule-de-feu";
DBM_FIREMAW_DESCRIPTION		= "Affiche un timer pour la Frappe d'Aile.";
DBM_EBONROC_NAME				= "Roch\195\169b\195\168ne";
DBM_EBONROC_DESCRIPTION		= "Affiche un timer pour la Frappe d'Aile et la Ombre de Roch\195\169b\195\168ne.";
DBM_EBONROC_SET_ICON			= "Mettre ic\195\180ne"
DBM_FLAMEGOR_NAME			= "Flamegor";
DBM_FLAMEGOR_DESCRIPTION		= "Affiche un timer pour<Frappe d'aile et annonce Fr\195\169n\195\169sie";
DBM_FLAMEGOR_ANNOUNCE_FRENZY	      = "Annonce Fr\195\169n\195\169sie";

DBM_FIREMAW_FIREMAW			= "Gueul-de-feu";
DBM_EBONROC_EBONROC			= "Roch\195\169b\195\168ne";
DBM_FLAMEGOR_FLAMEGOR			= "Flamegor";

DBM_FIREMAW_WING_BUFFET		= "Gueule-de-feu commence \195\160 lancer Frappe des ailes.";
DBM_EBONROC_WING_BUFFET		= "Roch\195\169b\195\168ne commence \195\160 lancer Frappe des ailes.";
DBM_FLAMEGOR_WING_BUFFET		= "Flamegor commence \195\160 lancer Frappe des ailes.";

DBM_FIREMAW_SHADOW_FLAME		= "Gueule-de-feu commence \195\160 lancer Flamme d'ombre.";
DBM_EBONROC_SHADOW_FLAME		= "Roch\195\169b\195\168ne commence \195\160 lancer Flamme d'ombre.";
DBM_FLAMEGOR_SHADOW_FLAME		= "Flamegor commence \195\160 lancer Flamme d'ombre.";

DBM_SHADOW_FLAME_WARNING		= "*** Flamme d'Ombre dans 2 sec ***";
DBM_WING_BUFFET_WARNING		= "*** Frappe d'Aile dans %s sec ***";
DBM_EBONROC_SHADOW_WARNING		= "*** %s a l'Ombre de Roch\195\169b\195\168ne ***";
DBM_FLAMEGOR_FRENZY			= "%s est pris de Fr\195\169n\195\169sie !";
DBM_FLAMEGOR_FRENZY_ANNOUNCE   	= "*** Fr\195\169n\195\169sie !! ***";

DBM_EBONROC_SHADOW_REGEXP		= "([^%s]+) (%w+) les effets de Ombre de Roch\195\169b\195\168ne";
DBM_EBONROC_SHADOW_REGEXP2		= "Ombre de Roch\195\169b\195\168ne disparaît de ([^%s]+)%.";

DBM_SBT["Wing Buffet"]		= "Frappe des ailes";
DBM_SBT["Wing Buffet Cast"]	= "lancer Frappe des ailes";
DBM_SBT["Shadow Flame Cast"]	= "lancer Flamme d'ombre";


--Chromaggus
DBM_CHROMAGGUS_NAME				= "Chromaggus";
DBM_CHROMAGGUS_DESCRIPTION			= "Affiche un timer pour les Souffles et annonce la vuln\195\169rabilit\195\169.";
DBM_CHROMAGGUS_ANNOUNCE_FRENZY		= "Annonce <Fr\195\169n\195\169sie>";
DBM_CHROMAGGUS_ANNOUNCE_VULNERABILITY	= "Annonce la vuln\195\169rabilit\195\169"
DBM_CHROMAGGUS_BREATH_1			= "Souffle 1";
DBM_CHROMAGGUS_BREATH_2			= "Souffle 2";

DBM_CHROMAGGUS_BREATH_CAST_WARNING		= "*** Chromaggus commence \195\160 lancer %s ***"
DBM_CHROMAGGUS_BREATH_WARNING		= "*** %s dans 10 sec ***"

DBM_CHROMAGGUS_BREATH_REGEXP			= "Chromaggus commence \195\160 lancer ([%w%s]+)";
DBM_CHROMAGGUS_VULNERABILITY_REGEXP	= "[^%s]+ [^%s]+ (%w+) Chromaggus et (%d+) ([^%s]+) points de d\195\169g\195\162ts";
DBM_CHROMAGGUS_CHROMAGGUS			= "Chromaggus";

DBM_CHROMAGGUS_FRENZY_EXPR			= "%s entre dans une fr\195\169n\195\169sie sanglante !";
DBM_CHROMAGGUS_FRENZY_ANNOUNCE		= "*** Fr\195\169n\195\169sie ***";

DBM_CHROMAGGUS_VULNERABILITY_EXPR		= "%s grimace lorsque sa peau se met \195\160 briller.";
DBM_CHROMAGGUS_VULNERABILITY_ANNOUNCE		= "*** Changement de vuln\195\169rabilit\195\169 ***";
DBM_CHROMAGGUS_NEW_VULNERABILITY_ANNOUNCE  = "*** Nouvelle vuln\195\169rabilit\195\169: ";

DBM_SBT["Breath 1"]	= "Souffle 1";
DBM_SBT["Breath 2"]	= "Souffle 2";

--Nefarian
DBM_NEFARIAN_NAME		= "Nefarian";
DBM_NEFARIAN_DESCRIPTION	= "Affiche un timer pour chaque <Appel de Classe>.";
DBM_NEFARIAN_BLOCK_HEALS	= "Bloquer les heals pendant l' <Appel de Classe Pr\195\170tres>";
DBM_NEFARIAN_UNEQUIP_BOW	= "D\195\169s\195\169quiper arcs/fusils avant chaque <Appel de classe>";

DBM_NEFARIAN_SYNCKILLS_INFO		= "Annonce et synchronise la mort des draconides en phase 1";
DBM_NEFARIAN_SYNCKILLS_ANNOUNCE	= "*** %d Draconides morts ***";

DBM_NEFARIAN_FEAR_WARNING		= "*** Fear dans 1.5 sec ***";
DBM_NEFARIAN_PHASE2_WARNING		= "*** Nefarian arrive dans - 15 sec ***";
DBM_NEFARIAN_CLASS_CALL_WARNING	= "*** Appel de classe IMMINENT ***";
DBM_NEFARIAN_SHAMAN_WARNING		= "*** Appel Shaman - totems ***";
DBM_NEFARIAN_PALA_WARNING		= "*** Appel Paladin - B\195\169n\195\169diction de Protection sur Nefarian pendant 10 secs ***";
DBM_NEFARIAN_DRUID_WARNING		= "*** Appel Druide - En forme de F\195\169lin ***";
DBM_NEFARIAN_PRIEST_WARNING		= "*** Appel Priest - Arr\195\170tez de heal ***";
DBM_NEFARIAN_WARRIOR_WARNING		= "*** Appel Warrior - Posture Berserker ***";
DBM_NEFARIAN_ROGUE_WARNING		= "*** Appel Rogue - T\195\169l\195\169port\195\169s et Immobilis\195\169s ***";
DBM_NEFARIAN_WARLOCK_WARNING		= "*** Appel Warlock - Arriv\195\169e des Infernaux ***";
DBM_NEFARIAN_HUNTER_WARNING		= "*** Appel Hunter - Arcs/Fusils \195\160 0 Durabilit\195\169 ***";
DBM_NEFARIAN_MAGE_WARNING		= "*** Appel Mage - Polymorph Imminent DISPELL ***";
DBM_NEFARIAN_PRIEST_CALL		= "Appel de classe Pr\195\170tre";
--DBM_NEFARIAN_HEAL_BLOCKED		= "Vous n'\195\170tes pas autoris\195\169 \195\160 cast %s pendant l'Appel de Classe Pr\195\170tre!";
DBM_NEFARIAN_UNEQUIP_ERROR		= "Erreur survenue lors du changement de votre arc/fusil."
DBM_NEFARIAN_EQUIP_ERROR		= "Erreur survenue lors de l'\195\169quipement de votre arc/fusil."
DBM_NEFARIAN_PHASE3_WARNING        = "*** Phase 3 - AoE ***";

DBM_NEFARIAN_DRAKONID_DOWN = {};
DBM_NEFARIAN_DRAKONID_DOWN[1] = "Drak\195\180nide noir meurt.";
DBM_NEFARIAN_DRAKONID_DOWN[2] = "Drak\195\180nide bleu meurt.";
DBM_NEFARIAN_DRAKONID_DOWN[3] = "Drak\195\180nide vert meurt.";
DBM_NEFARIAN_DRAKONID_DOWN[4] = "Drak\195\180nide bronze meurt.";
DBM_NEFARIAN_DRAKONID_DOWN[5] = "Drak\195\180nide rouge meurt.";
DBM_NEFARIAN_DRAKONID_DOWN[6] = "Drak\195\180nide chromatique meurt.";

DBM_NEFARIAN_KILLCOUNT			= "Draconides morts: %d";

--[[DBM_NEFARIAN_BLOCKED_SPELLS	= {
	["Flash Heal"]			= 1.5,
	["Greater Heal"]		= 2.5,
	["Prayer of Healing"]	= 3,
	["Heal"]				= 2.5,
	["Lesser Heal"]			= 1.5,
--	["Holy Nova"]			= 0,
}]]

DBM_NEFARIAN_CAST_SHADOW_FLAME	= "Nefarian commence \195\160 lancer Flamme d'ombre.";
DBM_NEFARIAN_CAST_FEAR			= "Nefarian commence \195\160 lancer Rugissement puissant.";
DBM_NEFARIAN_YELL_PHASE1		= "Que les jeux commencent !";
DBM_NEFARIAN_YELL_PHASE2		= "Beau travail ! Le courage des mortels commence \195\160 faiblir ! Voyons maintenant s'ils peuvent lutter contre le v\195\169ritable seigneur du pic Blackrock !";
DBM_NEFARIAN_YELL_PHASE3		= "C'est impossible ! Relevez-vous, serviteurs ! Servez une nouvelle fois votre maître !";
DBM_NEFARIAN_YELL_SHAMANS		= "Chamans, montrez%-moi";
DBM_NEFARIAN_YELL_PALAS		= "Les paladins... J'en entendu dire que vous aviez de nombreuses vie... Montrez-moi.";
DBM_NEFARIAN_YELL_DRUIDS		= "Les druides et leur stupides changements de forme. Voyons ce qu'ils donnent en vrai...";
DBM_NEFARIAN_YELL_PRIESTS		= "Pr\195\170tres ! Si vous continuez \195\160 soigner comme ça, nous pourrions rendre le processus plus int\195\169ressant !";
DBM_NEFARIAN_YELL_WARRIORS		= "Guerriers, je sais que vous pouvez frapper plus fort que ça ! Voyons ça !";
DBM_NEFARIAN_YELL_ROGUES		= "Voleurs, arr\195\170tez de vous cacher et affrontez-moi !";
DBM_NEFARIAN_YELL_WARLOCKS		= "D\195\169monistes, vous ne devriez pas jouer avec une magie qui vous d\195\169passe. Vous voyez ce qui arrive ?";
DBM_NEFARIAN_YELL_HUNTERS		= "Ah, les chasseurs et les stupides sarbacanes !";
DBM_NEFARIAN_YELL_MAGES		= "Les mages aussi ? Vous devriez \195\170etre plus prudents lorsque vous jouez avec la magie.";
DBM_NEFARIAN_YELL_DEAD			= "C'est impossible ! Je suis le Maître ici ! Vous, mortels, n'êtes rien pour nous ! Vous entendez ? Rien !";

DBM_SBT["Class call CD"] 	= "Appel de classe CD";
DBM_SBT["Druid call"] 		= "Appel de classe Druide";
DBM_SBT["Priest call"] 	= "Appel de classe Pr\195\170tre";
DBM_SBT["Warrior call"] 	= "Appel de classe Guerrier";
DBM_SBT["Rogue call"] 		= "Appel de classe Voleur";
DBM_SBT["Mage call"] 		= "Appel de classe Mage";

DBM_NEFARIAN_ERROR_NO_SYNC	= "Erreur: Le compteur de Draconides morts ne marche seulement si deux personnes minimum dans le raid on une version 2.20 de vendetta ou sup\195\169rieure."

end

