if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
	ace_sys_wounds_enabled = true;
	ace_sys_repair_default_tyres= true;
	ace_sys_tracking_markers_enabled_override = true;
	ace_sys_tracking_markers_enabled = false;
	ace_sys_spectator_playable_only = true;
	ace_sys_spectator_can_exit_spectator = false;
	ace_sys_spectator_no_butterfly_mode = true;
	ace_sys_spectator_ShownSides = [playerSide];
	ace_sys_spectator_NoMarkersUpdates = true;
	//ace_sys_nvg_rangelimit_enabled = true;
	ace_settings_enable_vd_change = true;
	missionNamespace setVariable ["ace_viewdistance_limit",getNumber(missionConfigFile >> "MAMaS_const" >> "viewDistance")];
	//ACE_NoStaminaEffects = true;
	//[] spawn {_s = time+100;waitUntil{sleep 1;!ACE_SYS_STAMINA||_s>time};ACE_SYS_STAMINA=true;};
};