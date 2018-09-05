#include "blnd_macros.h"
#include "const.h"
private ["_unitside", "_JIP", "_version", "_cred", "_grpText", "_groupsArray", "_side"];

["Loading briefing..."] call FNC(Status);

_unitside = side (group player);
_JIP = if (time>10 || isNil QVAR(MarkersList) || isNil QVAR(MarkersVehList)) then {true}else{false};
_version = getNumber(missionConfigFile >> "MAMaS_version");
if (_version==0) then { _version = getText(missionConfigFile >> "MAMaS_version") } else { _version = "v"+str(_version) };
_edition = getText (missionConfigFile >> "MAMaS_edition");
if (_edition == "") then { _edition = "ERROR!" };
_cred = player createDiaryRecord ["diary", [localize "STR_credits_title",format ["Автор миссии: %1 <br/><br/>MAMaS %2 (Редакция: %3)<br/>Оригинальная идея SerP: conKORD<br/>Переработка и поддержка: Blender",localize "STR_credits",_version,_edition]]];
//отобразит игроков стороны в отрядах
_grpText = "";
_groupsArray = [];
_side = side (group player);
if (_JIP) then {
	private "_allGroups";
	_allGroups = allGroups;
	for "_i" from 0 to ((count _allGroups) - 1) do {
		private "_group";
		_group = _allGroups select _i;
		if (_side == (side _group)) then {
			_groupsArray SET [count _groupsArray, [0, 0, _allGroups select _i]];
		};
	};
} else {
	_groupsArray = VAR(MarkersList);
};
for "_i" from 0 to ((count _groupsArray) - 1) do {
	_markArray = _groupsArray select _i;
	_markerName = _markArray select 0;
	_group = _markArray select 2;
	_units = units _group;
	_tmpText = "<br/>" + (if (_JIP) then {str _group}else{"<marker name = '"+_markerName+"'>"+str _group+"</marker>"});

	{
		if ((alive _x)&&((isPlayer _x)||isServer)) then {
			_tmpText = _tmpText + "<br/>--  " + (name _x);
			{
				_weapon = (configFile >> "cfgWeapons" >> _x);
				if ((getNumber(_weapon >> "type") in [1,4,5])&&!isNil{(getArray(_weapon >> "magazines") select  0)}) then {
					_tmpText = _tmpText + "  -  " + getText(_weapon >> "displayName");
				};
			} forEach weapons(_x);
		};
	} forEach _units;
	if (!_JIP) then {
		_grpText = _grpText + _tmpText + "<br/>";
	};
};

_groups = player createDiaryRecord ["diary", [localize "STR_groups_title",_grpText]];

//условности, одни на всех
if (localize "STR_convent" != "") then {_cond = player createDiaryRecord ["diary", [localize "STR_convent_title",localize "STR_convent"]];};
//погода из настроек миссии

_hour = date select 3;
_time = switch true do {
	case (_hour>=21||_hour<4): {localize "STR_timeOfDay_Option7"};
	case (_hour<5): {localize "STR_timeOfDay_Option0"};
	case (_hour<8): {localize "STR_timeOfDay_Option1"};
	case (_hour<10): {localize "STR_timeOfDay_Option2"};
	case (_hour<14): {localize "STR_timeOfDay_Option3"};
	case (_hour<16): {localize "STR_timeOfDay_Option4"};
	case (_hour<18): {localize "STR_timeOfDay_Option5"};
	case (_hour<21): {localize "STR_timeOfDay_Option6"};
	default {localize "STR_timeOfDay_Option8"};
};

_weather = switch true do {
	case (overcast>0.9): {localize "STR_weather_Option4"};
	case (overcast<0.1): {localize "STR_weather_Option0"};
	case (overcast>0.1): {localize "STR_weather_Option1"};
	case (fog>0.9): {localize "STR_weather_Option3"};
	case (fog>0.5): {localize "STR_weather_Option2"};
	default {localize "STR_weather_Option5"};
};

_vd = getNumber(missionConfigFile >> "MAMaS_const" >> "viewDistance");
_weather = player createDiaryRecord ["diary", [localize "STR_weather",
format [localize "STR_timeOfDay" + " - %1<br/>" + localize "STR_weather" + " - %2<br/>" + localize "str_disp_xbox_editor_wizard_weather_viewdistance" + " - %3" ,_time,_weather,_vd]
]];
//задачи, вооружение и брифинги сторон
switch true do {
	case (_unitside == east): {
		{if ((_x select 1)!="") then {
			player createDiaryRecord ["diary", [(_x select 0),(_x select 1)]]
		}} forEach [
			[localize "STR_machinery_title",(localize "STR_machinery_rf")],
			[localize "STR_enemy_title",localize "STR_enemy_rf"],
			[localize "STR_execution_title",localize "STR_execution_rf"],
			[localize "STR_task_title",localize "STR_task_rf"],
			[localize "STR_situation_title",localize "STR_situation_rf"]
		];
	};
	case (_unitside == west): {
		{if ((_x select 1)!="") then {
			player createDiaryRecord ["diary", [(_x select 0),(_x select 1)]]
		};} forEach [
			[localize "STR_machinery_title",(localize "STR_machinery_bf")],
			[localize "STR_enemy_title",localize "STR_enemy_bf"],
			[localize "STR_execution_title",localize "STR_execution_bf"],
			[localize "STR_task_title",localize "STR_task_bf"],
			[localize "STR_situation_title",localize "STR_situation_bf"]
		];
	};
	case (_unitside == resistance): {
		{if ((_x select 1)!="") then {
			player createDiaryRecord ["diary", [(_x select 0),(_x select 1)]]
		};} forEach [
			[localize "STR_machinery_title",(localize "STR_machinery_guer")],
			[localize "STR_enemy_title",localize "STR_enemy_guer"],
			[localize "STR_execution_title",localize "STR_execution_guer"],
			[localize "STR_task_title",localize "STR_task_guer"],
			[localize "STR_situation_title",localize "STR_situation_guer"]
		];
	};
	default {//цивилы
		_mis = player createDiaryRecord ["diary", [localize "STR_situation_title", localize "STR_situation_tv"]];
	};
};