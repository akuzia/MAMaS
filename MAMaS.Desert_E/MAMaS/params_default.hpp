class timeOfDay {
	title = "$STR_timeOfDay";
	values[] = {0,1,2,3,4,5,6,7,8};
	texts[] = {$STR_timeOfDay_Option0,$STR_timeOfDay_Option1,$STR_timeOfDay_Option2,$STR_timeOfDay_Option3,$STR_timeOfDay_Option4,$STR_timeOfDay_Option5,$STR_timeOfDay_Option6,$STR_timeOfDay_Option7,$STR_timeOfDay_Option8};
	default = 8;
};
class weather {
	title = "$STR_weather";
	values[] = {0,1,2,3,4,5};
	texts[] = {$STR_weather_Option0,$STR_weather_Option1,$STR_weather_Option2,$STR_weather_Option3,$STR_weather_Option4,$STR_weather_Option5};
	default = 5;
};
class briefing_mode {
	title = "$STR_briefing_mode";
	values[] = {0,1,2,3,4,5};
	texts[] = {$STR_briefing_mode_Option0,$STR_briefing_mode_Option1,$STR_briefing_mode_Option2,$STR_briefing_mode_Option3,$STR_briefing_mode_Option4,$STR_briefing_mode_Option5};
	default = 5;
};
class loading {
	title = "$STR_MAMaS_loading";
	values[] = {0,1,2};
	texts[] = {$STR_MAMaS_loading_Option0,$STR_MAMaS_loading_Option1,$STR_MAMaS_loading_Option2};
	default = 1;
};
class endMission {
	title = "$STR_MAMaS_endMission";
	values[] = {1,0};
	texts[] = {$STR_On,$STR_Off};
	default = 1;
};
class spectator {
	title = "$STR_MAMaS_SpectatorLimitations";
	values[] = {1,0};
	texts[] = {$STR_On,$STR_Off};
	default = 1;
};
class spawnZoneType {
	title = "$STR_MAMaS_SpawnZoneType";
	values[] = {0,1};
	texts[] = {$STR_MAMaS_SpawnZoneType_1,$STR_MAMaS_SpawnZoneType_2};
	default = 0;
	code = "MAMaS_spawnZoneType = %1";
};
class changeOptics {
	title = "$STR_MAMaS_ChangeOptics";
	values[] = {0,1};
	texts[] = {$STR_Off,$STR_On};
	default = 1;
};
class HardFreeze {
	title = "$STR_MAMaS_HardFreeze";
	values[] = {0,1,2,3,4,5};
	texts[] = {$STR_Off,$STR_MAMaS_HardFreeze_1,$STR_MAMaS_HardFreeze_2,$STR_MAMaS_HardFreeze_3,$STR_MAMaS_HardFreeze_4,$STR_MAMaS_HardFreeze_5};
	default = 1;
};