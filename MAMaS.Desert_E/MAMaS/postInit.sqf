#include "Functions\blnd_macros.h"
#include "Scripts\const.h"

["PostInit", ""] call FNC(EventHandlers);

if (isServer) then {
	diag_log "STARTING SERVER MISSION";
	[] call compile preprocessFileLineNumbers "MAMaS\Scripts\srv_RemoveUnassignedVehicles.sqf";
	[] call compile preprocessFilelineNumbers "MAMaS\Scripts\srv_RandomizeSpawn.sqf";
	["PostInit", "server"] call FNC(EventHandlers);
	[] execVM "MAMaS\startmission_server.sqf";
};

if (!isDedicated) then {
	["Loading postInit..."] call FNC(Status);
	["PostInit", "client"] call FNC(EventHandlers);
	
	// CREW CONTROL
	crewIndex = false;
	arrRelCrew = [];
	arrRelCommander = ["US_Soldier_SL_EP1","US_Soldier_Officer_EP1","mas_us_rangs_ace_acu_tl","mas_us_rangs_ace_des_tl","mas_us_rangs_ace_mul_tl","mas_us_rangs_ace_pcu_tl","mas_us_rangs_ace_wod_tl","ACE_USMC_Soldier_SL_D","ACE_USMC_Soldier_Officer_D","USMC_Soldier_SL","USMC_Soldier_Officer","BAF_Soldier_SL_MTP","BAF_Soldier_Officer_MTP","BAF_Soldier_SL_DDPM","BAF_Soldier_Officer_DDPM","BAF_Soldier_SL_W","BAF_Soldier_Officer_W","usm_marine_80s_d_h_off","usm_marine_80s_d_l_off","usm_marine_80s_w_h_off","usm_marine_80s_w_l_off","usm_marine_90s_d_h_off","usm_marine_90s_d_l_off","usm_marine_90s_w_h_off","usm_marine_90s_w_l_off","usm_soldier_80s_d_h_off","usm_soldier_80s_d_l_off","usm_soldier_80s_w_h_off","usm_soldier_80s_w_l_off","usm_soldier_90s_d_h_off","usm_soldier_90s_d_l_off","usm_ranger_90s_d_h_off","usm_ranger_90s_d_l_off","usm_soldier_90s_w_h_off","usm_soldier_90s_w_l_off","usm_ranger_90s_w_h_off","usm_ranger_90s_w_l_off","usm_ranger_90s_w_l_ftl","usm_ranger_93_d_h_off","ACE_RU_Commander_D","ACE_RU_Soldier_SL_D","ACE_RU_Soldier_Officer_D","RU_Commander","RU_Soldier_SL","RU_Soldier_Officer","odkb_RU_Commander","odkb_RU_Soldier_SL","odkb_RU_Soldier_Officer","pxl_RU_Commander","pxl_RU_Soldier_SL","pxl_RU_Soldier_Officer","tusg_P85_ussr_vest_team","tusg_P85_ussr_9c_lc1","tusg_P85_ussr_regular_officer","tusg_P85_ussr_specnaz_team","tusg_P85_ussr_specnaz_kzs","p85_new_ussr_vdv","TK_INS_Warlord_EP1","MOL_Soldier_Officer","Ins_Commander","Soldier_TL_PMC","GUE_Soldier_CO","GUE_Commander","TK_GUE_Soldier_TL_EP1","TK_GUE_Warlord_EP1","UN_CDF_Soldier_Officer_EP1","cwr2_OfficerE_W","cwr2_OfficerE_Night_W","cwr2_OfficerG_W","cwr2_OfficerG_Night_W","CWR2_OfficerW_W","CWR2_OfficerW_Night_W","CDF_Commander","CDF_Soldier_Officer","GER_Soldier_TL_EP1","CZ_Soldier_SL_DES_EP1","CZ_Soldier_Office_DES_EP1"];
	if (!isnil{relCrew}) then { arrRelCrew = arrRelCrew + relCrew; };
	if (!isnil{relCommander}) then { arrRelCommander = arrRelCommander + relCommander; };
	// END CREW CONTROL

	[] execVM "MAMaS\startmission_client.sqf";
	
	if (isMultiplayer) then { enableRadio false; };
	[["AllVehicles"], [ace_sys_interaction_key], 2, ["MAMaS\scripts\interactionMenu.sqf", "main"]] call CBA_ui_fnc_add;
	[["player"], [ace_sys_interaction_key_self], 2, ["MAMaS\scripts\selfInteractionMenu.sqf", "main"]] call CBA_ui_fnc_add;

	call compile preprocessFileLineNumbers "MAMaS\scripts\spectator.sqf";
	["Client postInit loaded."] call FNC(Status);
};

//testing
if (isServer && !isDedicated) then {
	[] call compile preprocessFileLineNumbers "MAMaS\scripts\template_test.sqf";
};

[] spawn {
	waitUntil {sleep 0.1; missionNameSpace getVariable ["warbegins", 0] == 1};
	["WarBegins", ""] call FNC(EventHandlers);
};