#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "WL": {// Warlord
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_47_M","ACE_Glock18","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "SL": {// Squad Lider
		addMagazines("ACE_10Rnd_762x39_B_SKS",6);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_SKS","ACE_Glock18","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "TL": {// Watch Leader
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["AK_47_S","ACE_Glock18","Binocular","NVGoggles"];
		addItems ["R","B","M","F"];
	};
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x54_PK",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["PK"];
		addItems ["R","N","M","E"];
	};
	case "AG": {//Asst. Machinegunner
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["AK_47_M","ACE_BackPack"];
		addItems ["R","B","F","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2]],true];
	};
	case "MGM60": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_M60"];
		addItems ["R","N","M","E"];
	};
	case "AGM60": {//Asst. Machinegunner
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["AK_47_M","ACE_BackPack"];
		addItems ["R","B","F","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]],true];
	};
	case "AR": {// Automatic Rifleman
		addMagazines("75Rnd_545x39_RPK",4);
		addMagazines("HandGrenade_East",3);
		addWeapons ["RPK_74"];
		addItems ["R","B","F","M"];
	};
	case "AT": {//AT Operator
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",3);
		addMagazines("PG7V",4);
		addWeapons ["AK_47_S", "RPG7V"];
		addItems ["R","N","M","E"];
	};
	case "AAT": {// Asst. AT Operator
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AK_47_M", "ACE_BackPack"];
		addItems ["R","F","E","M"];
		_unit setVariable ["ACE_RuckMagContents", [["PG7V",2],["OG7",2]],true];
	};
	case "LAT": {// Rifleman AT
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AK_47_S","ACE_RPG22"];
		addItems ["R","F","M"];
	};
	case "SAB": {// Saboteur
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S","ACE_BackPack"];
		addItems ["R","F","M"];
		_unit setVariable ["ACE_RuckMagContents", [["PipeBomb",2]],true];
	};
	case "SAP": {// Sapper
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "NVGoggles","ACE_BackPack"];
		addItems ["R","F","M"];
		_unit setVariable ["ACE_RuckMagContents", [["BAF_ied_v2",2],["BAF_ied_v4",2]],true];
	};
	case "ASAP": {// Asst. Sapper
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S","ACE_BackPack"];
		addItems ["R","F","M"];
		_unit setVariable ["ACE_RuckMagContents", [["BAF_ied_v1",2],["BAF_ied_v3",2]],true];
	};
	case "RF": {// Rifleman
		addMagazines("ACE_10Rnd_762x39_B_SKS",6);
		addMagazines("HandGrenade_East",4);
		addWeapons ["ACE_SKS"];
		addItems ["R","F","M"];
	};
	case "RC": {// Recon
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("BAF_ied_v3",1);
		addMagazines("HandGrenade_East",4);
		addWeapons ["AK_47_M", "ACE_Glock18","ACE_PRC119_ACU"];
		addItems ["R","F","M"];
	};
	case "MR": {// Lee-Endfield
		addMagazines("10x_303",4);
		addMagazines("HandGrenade_East",4);
		addWeapons ["LeeEnfield","RPG18"];
		addItems ["R","F","M"];
	};
	case "SN": {// Sniper
		addMagazines("5x_22_LR_17_HMR",6);
		addMagazines("ACE_Pomz_M",2);
		addMagazines("SmokeShell",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addWeapons ["huntingrifle", "Makarov"];
		addItems ["R","F","M","B"];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S","ACE_BackPack"];
		addItems ["R","F","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
	case "GL": {//Grenadier
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("1Rnd_HE_M203",5);
		addMagazines("HandGrenade_West",4);
		addWeapons ["AK_47_S"];
		addItems ["R","F","M"];
		_unit setVariable ["ACE_weapononback","M79_EP1",true];
	};
	case "AA": {//Pzrk Operator
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("Strela",1);
		addWeapons ["AK_47_S","Strela"];
		addItems ["R","F","M","E"];
	};
//DSHKM
	case "HMG" : {//DSHKM Gunner
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_DSHKM_CSWDM",1);
		addWeapons ["AK_47_S", "ACE_DSHKMProxy"];
		addItems ["R","N","M","E"];
	};
	case "HMGAG" : {//DSHKM Asst. Gunner
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_DSHKM_CSWDM",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["AK_47_S", "ACE_DSHKMTripodProxy"];
		addItems ["R","F","M","E","B"];
	};
	case "HMGAB" : {
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_47_S","ACE_BackPack_ACR"];
		addItems ["R","F","M","E"];
		_unit setVariable ["ACE_RuckMagContents", [["ACE_DSHKM_CSWDM",4]],true];
	};
//голодранцы
	case "L_PM" : {
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PM"];
	};
	case "L_RV" : {
		addMagazines("6Rnd_45ACP",4);
		addMagazines("HandGrenade_East",2);
		addWeapons ["revolver_EP1"];
	};
	case "L_GLOCK" : {
		addMagazines("ACE_33Rnd_9x19_G18",4);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Glock18"];
	};
	case "L_UZI" : {
		addMagazines("30Rnd_9x19_UZI",4);
		addMagazines("HandGrenade_East",2);
		addWeapons ["UZI_EP1"];
	};
	case "L_SCORP" : {
		addMagazines("20Rnd_B_765x17_Ball",4);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Sa61_EP1"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
