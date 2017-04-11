
_veh = _this select 0;
_loadout = toUpper (_this select 1);
_count = if (count(_this)>2) then {_this select 2}else{1};
for "_i" from 1 to _count do {
	switch _loadout do {
	//NATO
		case "556M_BIG" : {//5.56x45 magazine
			[_veh,"5.56x45 magazine","ACE_Tbox_US",[["30Rnd_556x45_Stanag",30],["ACE_30Rnd_556x45_T_Stanag",6]]] call MAMaS_addCargoBox;
		};
		case "556B" : {//5.56x45 Belt
			[_veh,"5.56x45 Belt", "ACE_Tbox_US", [["200Rnd_556x45_M249",5],["100Rnd_556x45_M249",5]]] call MAMaS_addCargoBox;
		};
		case "762X51B" : {// 7.62x51 Belt
			[_veh,"7.62x51 Belt", "ACE_Tbox_US", [["100Rnd_762x51_M240",10]]] call MAMaS_addCargoBox;
		};
		case "GREN_WEST" : {// Grenade
			[_veh,"Grenade", "ACE_Tbox_US", [["HandGrenade_West",15], ["SmokeShell",10]]] call MAMaS_addCargoBox;
		};
		case "60MMHE" : {// M224 60 mm HE
			[_veh,"M224 60 mm HE", "ACE_Tbox_US", [["ACE_M224HE_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "60MMWP" : {// M224 60 mm WP
			[_veh,"M224 60 mm WP", "ACE_Tbox_US", [["ACE_M224WP_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "81MMHE" : {// M251 81 mm HE
			[_veh,"M224 60 mm HE", "ACE_Tbox_US", [["ACE_M252HE_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "81MMWP" : {// M251 81 mm WP
			[_veh,"M224 60 mm WP", "ACE_Tbox_US", [["ACE_M252WP_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "M2CSWDM" : {// M2 ammo box
			[_veh,"M2 ammo box", "ACE_Tbox_US", [["ACE_M2_CSWDM",5]]] call MAMaS_addCargoBox;
		};
		case "MK19CSWDM" : {// Mk 19 ammo box
			[_veh,"Mk 19 ammo box", "ACE_Tbox_US", [["ACE_MK19_CSWDM",5]]] call MAMaS_addCargoBox;
		};
		case "FIM92" : {// FIM-92F Stinger
			[_veh,"FIM-92F Stinger","ACE_Tbox_RU", [["Stinger",1]],[["Stinger",1]]] call MAMaS_addCargoBox;
		};
		case "FIM92_AMMO" : {// FIM-92F Stinger ammo
			[_veh,"FIM-92F Stinger","ACE_Tbox_RU", [["Stinger",2]]] call MAMaS_addCargoBox;
		};

	//RUS
		case "545M_BIG" : {// 5.45x39 AK
			[_veh,"5.45x39 AK", "ACE_Tbox_RU", [["30Rnd_545x39_AK",20],["ACE_30Rnd_545x39_T_AK",6]]] call MAMaS_addCargoBox;
		};
		case "762M_BIG" : {// 7.62x39 AK
			[_veh,"7.62x39 AK ", "ACE_Tbox_RU", [["30Rnd_762x39_AK47",20],["ACE_30Rnd_762x39_T_AK47",6]]] call MAMaS_addCargoBox;
		};
		case "762X54B" : {// 7.62x54 Belt
			[_veh,"762X54B", "ACE_Tbox_RU", [["100Rnd_762x54_PK",5]]] call MAMaS_addCargoBox;
		};
		case "GREN_EAST" : {// Grenades
			[_veh,"Grenades", "ACE_Tbox_RU", [["HandGrenade_East",15]]] call MAMaS_addCargoBox;
		};
		case "GP25_AMMO" : {// GP25 ammo
			[_veh,"GP25 ammo", "ACE_Tbox_RU", [["1Rnd_SMOKE_GP25",10],["1Rnd_SmokeRed_GP25",3],["1Rnd_SmokeGreen_GP25",3],["ACE_1Rnd_CS_GP25",10],["ACE_SSWhite_GP25",3],["ACE_SSRed_GP25",3],["ACE_SSGreen_GP25",3],["FlareWhite_GP25",3],["FlareRed_GP25",3],["FlareGreen_GP25",3]]] call MAMaS_addCargoBox;
		};
		case "RPG7_AMMO" : {// RPG7 ammo
			[_veh,"RPG7 ammo", "ACE_Tbox_RU", [["ACE_PG7VM_PGO7",6],["ACE_OG7_PGO7",6]]] call MAMaS_addCargoBox;
		};
		case "82MMHE" : {// 2B14 82 mm HE
			[_veh,"2B14 82 mm HE", "ACE_Tbox_RU", [["ACE_2B14HE_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "82MMWP" : {// 2B14 82 mm HE
			[_veh,"2B14 82 mm HE", "ACE_Tbox_RU", [["ACE_2B14WP_CSWDM",10]]] call MAMaS_addCargoBox;
		};
		case "9M32" : {// 9M32 Strela
			[_veh,"9M32 Strela", "ACE_Tbox_RU", [["Strela",1]],[["Strela",1]]] call MAMaS_addCargoBox;
		};
		case "9M39" : {// 9M39 Igla
			[_veh,"9M39 Igla","ACE_Tbox_RU", [["Igla",1]],[["Igla",1]]] call MAMaS_addCargoBox;
		};
		case "9M39_AMMO" : {// 9M39 Igla Ammo
			[_veh,"9M39 Igla","ACE_Tbox_RU", [["Igla",2]]] call MAMaS_addCargoBox;
		};
		case "9M115" : {// 9К131 Metis-M Ammo HEAT
			[_veh,"9К131 Metis-M Ammo HEAT","ACE_Tbox_RU",[["AT13",3]]] call MAMaS_addCargoBox;
		};
		case "9M131" : {// 9К131 Metis-M Ammo TB
			[_veh,"9К131 Metis-M Ammo TB","ACE_Tbox_RU",[["ACE_AT13TB",3]]] call MAMaS_addCargoBox;
		};
		case "9P151" : {// 9K113 Metis-M Launcher
			[_veh,"9K113 Metis-M Launcher","ACE_Tbox_RU",[["AT13",2]],[["MetisLauncher",1]]] call MAMaS_addCargoBox;
		};
		case "9M113" : {// 9K113 Konkurs-M Ammo
			[_veh,"9K113 Konkurs-M Ammo","ACE_Tbox_RU",[["ACE_KonkursM_CSWDM",3]]] call MAMaS_addCargoBox;
		};
		case "9P135" : {// 9K113 Konkurs-M Launcher
			[_veh,"9K113 Konkurs-M Launcher","ACE_Tbox_RU",[["ACE_KonkursM_CSWDM",2]],[["ACE_KonkursTripodProxy",1]]] call MAMaS_addCargoBox;
		};
		case "AGS30" : {// AGS30
			[_veh,"AGS30","ACE_Tbox_RU",[],[["ACE_AGS30Proxy",1],["ACE_AGS30TripodProxy",1]]] call MAMaS_addCargoBox;
		};
		case "AGS30_AMMO" : {// AGS30 ammo
			[_veh,"AGS30 AMMO","ACE_Tbox_RU",[["ACE_AGS30_CSWDM",2]],[]] call MAMaS_addCargoBox;
		};
	//Other
		case "FLARE" : {// Flaregun
			[_veh,"Flaregun", "ACE_Tbox_RU", [["ACE_SSGreen_FG",20],["ACE_SSRed_FG",20]], [["ACE_Flaregun",3]]] call MAMaS_addCargoBox;
		};
		case "IEDS" : {// IEDS
			[_veh,"IEDS", "ACE_Tbox_RU", [["BAF_ied_v2",3],["BAF_ied_v4",3],["BAF_ied_v1",5], ["BAF_ied_v3",5]]] call MAMaS_addCargoBox;
		};
		default {diag_log format ["MAMaS\equipment\_cargoCrateProcessor.sqf, undefined box type - %1", _loadout];};
	};
};
