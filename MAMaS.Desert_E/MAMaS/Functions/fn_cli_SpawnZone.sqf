#include "blnd_macros.h"
#define MAXWARNINGS 1

private ["_zoneCenter", "_zoneSize", "_lastSuccessPos"];

_zoneOvercross = getNumber (missionConfigFile >> "MAMaS_const" >> "hintzonesize");

_zoneCenter = _this select 0;
_zoneCenter SET [2, 0];
_zoneSize = _this select 1;

_warningsCount = 0;

while {(warbegins == 0) && {alive player}} do {
	_playerPos = getPos player;
	_playerPos SET [2, 0];
	_distance = _playerPos distance _zoneCenter;
	_veh = vehicle player;
	
	if (_distance > _zoneSize) then {
		if (!isNil "_lastSuccessPos" && _warningsCount >= MAXWARNINGS) then {
			_warningsCount = 0;
			if (_veh != player) then {
				_veh setVelocity [0,0,0];
				moveOut player;
			};
			
			player setPosASL _lastSuccessPos;
			titleText [localize "STR_MAMaS_sorry", "PLAIN"];
			player say "r44";
			player say "All_haha";
		} else {
			_warningsCount = _warningsCount + 1;
			titleText [localize "STR_MAMaS_outOfZone", "PLAIN"];
			switch round(random 11) do {
				case 0: {player say "r11"};
				case 1: {player say "r15"};
				case 2: {player say "r26"};
				case 3: {player say "r29"};
				case 4: {player say "r25"};
				case 5: {player say "r04"};
				case 6: {player say "r21_4"};
				case 7: {player say "ACE_rus_combat117"};
				case 8: {player say "ACE_rus_combat197"};
				case 9: {player say "Zora_AK74";player say "UnderFire1"};
				case 10: {player say "Zora_M16";player say "UnderFire2"};
				case 11: {player say "svd_single_shot_v2";player say "UnderFire3"};
			};
			if (_veh != player) then {
				_veh setVelocity [0,0,0];
			};
			sleep 3.017;
		};
	} else {
		_lastSuccessPos = _playerPos;
		_warningsCount = 0;
	};
	sleep 1.826;
};