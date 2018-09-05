/*
	Function: a3ru_fnc_uavView
	Author: Blender
	Web-site: http://arma3.ru
	Parameters:
	1 - target (OBJECT)
	2 - altitude (NUMBER)
	3 - radius (NUMBER)
	4 - angle (NUMBER)
*/

#define IDC_UAV_TEXT_ALT	1333
#define IDC_UAV_TEXT_DIR	1334
#define IDC_UAV_TEXT_OBJ	1335
#define IDC_UAV_TEXT_HEADER	1336
#define IDC_UAV_TEXT_MISSION	1337
#define IDC_UAV_TEXT_AUTHOR	1338
#define IDC_UAV_TEXT_DATE	1339
#define IDC_UAV_TEXT_LOC	1340
#define IDC_UAV_BACK		1533
#define IDC_UAV_CROSS		1534
#define IDC_UAV_POS			1535
#define IDC_UAV_SPACE		1433

#define UAV_DESERT_WORLDS ["Desert_E", "Zargabad", "lingor", "Takistan", "clafghan", "fallujahint", "esbekistan"]
#define UAV_TRACKS_NORMAL [	["EP1_Track03D", 0, 0.5], ["EP1_Track12", 0, 0.4], ["EP1_Track09", 0, 0.3], ["EP1_Track07D", 0, 0.5] ]
#define UAV_TRACKS_DESERT [ ["EP1_Track03", 0, 0.7], ["EP1_Track05", 16, 0.5], ["EP1_Track06", 13, 0.7], ["EP1_Track12", 168, 1], ["EP1_Track13", 91, 0.8], ["EP1_Track13V", 0, 1] ]

a3ru_var_uav_keyPressed = false;

private ["_target", "_altitude", "_radius", "_angle", "_dir", "_tracks", "_tracks_desert", "_pos", "_coords", "_track_index"];

_target = _this select 0;
_altitude = _this select 1;
_radius = _this select 2;
_angle = _this select 3;
_dir = round random 1;

if (isNil "A3RU_UAV_CAMERA") then { A3RU_UAV_CAMERA = "Camera" camCreate [10,10,10] };

A3RU_UAV_CAMERA cameraEffect ["INTERNAL", "BACK"];

cameraEffectEnableHUD true;

private ["_pos", "_coords"];
_pos = position _target;
_coords = [_pos, _radius, _angle] call BIS_fnc_relPos;
_coords SET [2, (_coords select 2) + _altitude];

if (worldName in UAV_DESERT_WORLDS) then { _tracks = UAV_TRACKS_DESERT } else { _tracks = UAV_TRACKS_NORMAL };
_track_sel 		= _tracks select (floor (random (count _tracks)));
_track_name 	= _track_sel select 0;
_track_startPos	= _track_sel select 1;
//_track_volume	= _track_sel select 2;
_track_volume = 0.3;

1 fadeMusic _track_volume;
if (_track_startPos != 0) then { playMusic [_track_name, 0] }; // No music play bug fix
playMusic [_track_name, _track_startPos];

A3RU_UAV_CAMERA camPrepareTarget _target;
A3RU_UAV_CAMERA camPreparePos _coords;
A3RU_UAV_CAMERA camPrepareFOV 0.700;
A3RU_UAV_CAMERA camCommitPrepared 0;
A3RU_UAV_CAMERA camPreload 3;

private ["_ppColor"];
_ppColor = ppEffectCreate ["colorCorrections", 1999];
_ppColor ppEffectEnable true;
_ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [0.8, 0.8, 0.8, 0.65], [1, 1, 1, 1.0]];
_ppColor ppEffectCommit 0;

private ["_ppGrain"];
_ppGrain = ppEffectCreate ["filmGrain", 2012];
_ppGrain ppEffectEnable true;
_ppGrain ppEffectAdjust [0.1, 1, 1, 0, 1];
_ppGrain ppEffectCommit 0;

showCinemaBorder false;
enableEnvironment false;

// ------------------------------------- RSC --------------------------------------
_layer = "A3RU_UAV_INTEL" call BIS_fnc_rscLayer;
_layer cutRsc ["A3RU_UAV_INTEL", "PLAIN"];

a3ru_var_uav_active = true;
disableSerialization;
_display = uiNameSpace getVariable "A3RU_UAV_INTEL";
_keyEH = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 57) then { a3ru_var_uav_keyPressed = true; a3ru_var_uav_active = false }"];
[] spawn {
	sleep 30;
	if (!isNil "a3ru_var_uav_active") then { a3ru_var_uav_active = false };
};

_obj_text = _display displayCtrl IDC_UAV_TEXT_OBJ;
_obj_text ctrlSetText "OBJ: " + (name _target);
_obj_text ctrlSetScale 1.3;
_obj_text ctrlCommit 0;

// Search location
_configFile = (configFile >> "CfgWorlds" >> worldName >> "Names");
_location_name = "";
for "_i" from 0 to ((count _configFile) - 1) do {
	private ["_element", "_loc_pos"];
	_element = _configFile select _i;
	_loc_pos = getArray (_element >> "position");
	if (_loc_pos distance _pos <= 500) exitWith { _location_name = getText (_element >> "name") };
};
if (_location_name == "") then { _location_name = "UNKNOWN" };

_loc_text = _display displayCtrl IDC_UAV_TEXT_LOC;
_loc_text ctrlSetText ("LOC: " + _location_name);
_loc_text ctrlSetScale 1.3;
_loc_text ctrlCommit 0;

_header_text = _display displayCtrl IDC_UAV_TEXT_HEADER;
_header_text ctrlSetScale 1.3;
_header_text ctrlCommit 0;

_ctrl_mission_text = _display displayCtrl IDC_UAV_TEXT_MISSION;
_ctrl_mission_text ctrlSetScale 1.3;
_ctrl_mission_text ctrlSetText "_";
_ctrl_mission_text ctrlCommit 0;
_ctrl_author_text = _display displayCtrl IDC_UAV_TEXT_AUTHOR;
_ctrl_author_text ctrlSetScale 1.3;
_ctrl_author_text ctrlSetText "";
_ctrl_author_text ctrlCommit 0;

_ctrl_space_text = _display displayCtrl IDC_UAV_SPACE;
_ctrl_space_text ctrlSetFade 1;
_ctrl_space_text ctrlCommit 0;

[_display, _ctrl_mission_text, _ctrl_author_text, _ctrl_space_text] spawn {
	disableSerialization;
	_display			=	_this select 0;
	_ctrl_mission_text	=	_this select 1;
	_ctrl_author_text	=	_this select 2;
	_ctrl_space_text	=	_this select 3;
	
	_cursor = true;
	for "_i" from 0 to 7 do {
		if (isNull _display) exitWith {};
		if (_cursor) then {
			_cursor = false;
			_ctrl_mission_text ctrlSetText "";
		} else {
			_cursor = true;
			_ctrl_mission_text ctrlSetText "_";
		};
		sleep 0.4;
	};
	_mission_text_local = toArray ("MISSION: " + localize "STR_missionname");
	_mission_text = "";
	_mission_text_count = (count _mission_text_local) - 1;
	for "_i" from 0 to _mission_text_count do {
		if (isNull _display) exitWith {};
		_mission_text = _mission_text + (toString [_mission_text_local select _i]);
		_postFix = "_";
		if (_i == _mission_text_count) then { _postFix = "" };
		_ctrl_mission_text ctrlSetText (_mission_text + _postFix);
		playSound "counter";
		sleep 0.116;
	};
	
	_author_text_local = toArray ("AUTHOR: " + localize "STR_credits");
	_author_text = "";
	for "_i" from 0 to ((count _author_text_local) - 1) do {
		if (isNull _display) exitWith {};
		_author_text = _author_text + (toString [_author_text_local select _i]);
		_ctrl_author_text ctrlSetText (_author_text + "_");
		playSound "counter";
		sleep 0.112;
	};
	
	//-------------- SPACE HINT ---------------
	if (isNull _display) exitWith {};
	_ctrl_space_text ctrlSetFade 0;
	_ctrl_space_text ctrlSetStructuredText ( parseText format["<t color='#cfcfcf' size='1.5' align='center'>%1</t>", localize "STR_Press_Space"] );
	_ctrl_space_text ctrlCommit 3;
	//************** SPACE HINT ***************
	
	while {!isNull _display} do {
		if (_cursor) then {
			_cursor = false;
			_ctrl_author_text ctrlSetText _author_text;
		} else {
			_cursor = true;
			_ctrl_author_text ctrlSetText (_author_text + "_");
		};
		sleep 0.4;
	};
};

private ["_month", "_day", "_hour", "_minute"];
_month = str (date select 1);
_day = str (date select 2);
_hour = str (date select 3);
_minute = str (date select 4);

if (date select 1 < 10) then {_month = format ["0%1", str (date select 1)]};
if (date select 2 < 10) then {_day = format ["0%1", str (date select 2)]};
if (date select 3 < 10) then {_hour = format ["0%1", str (date select 3)]};
if (date select 4 < 10) then {_minute = format ["0%1", str (date select 4)]};

private ["_time", "_date"];
_dateTime = format ["%1-%2-%3 // %4:%5", str (date select 0), _month, _day, _hour, _minute];

_date_text = _display displayCtrl IDC_UAV_TEXT_DATE;
_date_text ctrlSetText _dateTime;
_date_text ctrlSetScale 1.3;
_date_text ctrlCommit 0;

// Move camera in a circle
[_pos, _altitude, _radius, _angle, _dir, _display] spawn {
	disableSerialization;
	private ["_pos", "_alt", "_rad", "_ang", "_dir"];
	_pos = _this select 0;
	_alt = _this select 1;
	_rad = _this select 2;
	_ang = _this select 3;
	_dir = _this select 4;
	_display = _this select 5;

	_cam_iter = 0;
	_cam_fov = 0.2;
	_fnc_random_fov = {
		_return = 0;
		_rnd = random 0.2;
		_rnd2 = round random 1;
		if (_rnd2 == 0) then { // +
			if ((_cam_fov + _rnd) > 0.7) then {
				_return = _cam_fov - _rnd;
			} else {
				_return = _cam_fov + _rnd;
			};
		} else { // -
			if ((_cam_fov - _rnd) < 0) then {
				_return = _cam_fov + _rnd;
			} else {
				_return = _cam_fov - _rnd;
			};
		};
		_cam_fov = _return;
		_return
	};
	
	while {a3ru_var_uav_active && !isNull _display && (warbegins == 0)} do {
		private ["_coords"];
		_coords = [_pos, _rad, _ang] call BIS_fnc_relPos;
		_coords set [2, _alt];
		
		_cam_iter = _cam_iter + 1;
		if (_cam_iter == 3) then {
			_cam_iter = 0;
			A3RU_UAV_CAMERA camSetFov (call _fnc_random_fov);
		};

		A3RU_UAV_CAMERA camPreparePos _coords;
		A3RU_UAV_CAMERA camCommitPrepared 1;

		waitUntil {camCommitted A3RU_UAV_CAMERA || !a3ru_var_uav_active};
		
		_ang = if (_dir == 0) then {_ang - 1.5} else {_ang + 1.5};
	};
	A3RU_UAV_CAMERA camSetFov 0;
	A3RU_UAV_CAMERA camCommitPrepared 4;
};

_cross = _display displayCtrl IDC_UAV_CROSS;
_cross_sizeX = ((ctrlPosition _cross) select 2) / 2;
_cross_sizeY = ((ctrlPosition _cross) select 3) / 2;

_alt_text = _display displayCtrl IDC_UAV_TEXT_ALT;
_alt_text ctrlSetScale 1.3;
_alt_text ctrlCommit 0;

_dir_text = _display displayCtrl IDC_UAV_TEXT_DIR;
_dir_text ctrlSetScale 1.3;
_dir_text ctrlCommit 0;

while {a3ru_var_uav_active && !isNull _display && (warbegins == 0)} do {
	_tpos = getPos _target;
	_tpos SET [2, (_tpos select 2) + 1];
	_wts = worldToScreen _tpos;
	if (!isNil "_wts") then {
		_wts SET [0, (_wts select 0) - _cross_sizeX + random 0.003];
		_wts SET [1, (_wts select 1) - _cross_sizeY + random 0.003];
		_cross ctrlSetPosition _wts;
		_cross ctrlCommit 0;
	};

	_alt_text ctrlSetText "ALT: " + str((getPos A3RU_UAV_CAMERA) select 2);
	_dir_text ctrlSetText "DIR: " + str (getDir A3RU_UAV_CAMERA);
	sleep 0.3;
};

if (a3ru_var_uav_keyPressed) then {
	_ctrl_space_text ctrlSetStructuredText ( parseText format["<t color='#ffffff' size='1.5' align='center'>%1</t>", localize "STR_Press_Space"] );
	_ctrl_space_text ctrlSetFade 1;
	_ctrl_space_text ctrlCommit 1;
};

2 fadeMusic 0;

sleep 2;
titleText ["", "BLACK OUT", 1];
sleep 1;
_layer cutText ["", "PLAIN"];
A3RU_UAV_CAMERA cameraEffect ["TERMINATE", "BACK"];

ppEffectDestroy _ppColor;
ppEffectDestroy _ppGrain;
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyEH];

playMusic "";
0 fadeMusic 0.5;
a3ru_var_uav_active = nil;
a3ru_var_uav_keyPressed = nil;

titleText ["", "PLAIN"];