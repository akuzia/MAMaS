_unit = _this select 0;
_faction = if (count(_this)>1) then {_this select 1}else{""};
_loadout = if (count(_this)>2) then {toUpper(_this select 2)}else{""};
_AI_processor = {
	_this setBehaviour "SAFE";
	_this allowFleeing 0;
	_this disableAI "AUTOTARGET";
	_this disableAI "ANIM";
	_this disableAI "PATHPLAN";
	//_this setCombatMode "BLUE";
	_this doWatch objNull;
	_this disableAI "MOVE";
	_this stop true;
	_this setVariable ["BIS_noCoreConversations", false];
};
_item_processor = {
	removeAllItems _this;
	_this removeWeapon "ItemGPS";
	_this addWeapon "ItemMap";
	_this addWeapon "ItemWatch";
	_this addWeapon "ItemCompass";
	_this addWeapon "ItemRadio";/**/
};
_med_processor = {
	_this addMagazine "ACE_Morphine";
	_this addMagazine "ACE_Morphine";
	_this addMagazine "ACE_Epinephrine";
	_this addMagazine "ACE_Bandage";
	_this addMagazine "ACE_Bandage";
};
_weapon_processor = {
	removeAllWeapons _this;
	removeBackpack _this;
	{_this removeMagazine _x} forEach (magazines _this);
};
_unit call _AI_processor;
if (!isServer) exitWith {};
_unit call _item_processor;
if (_faction=="") then {
	switch _loadout do {
		case "SL": {
			{_unit addWeapon _x} forEach ["ACE_Map","ACE_Map_Tools","ItemGPS","ItemRadio"];
		};
		case "TL": {
			{_unit addWeapon _x} forEach ["ACE_Map","ItemRadio"];
		};
		default {
			/*{_unit addWeapon _x} forEach ["ItemRadio"];*/
		};
	};
}else{
	_unit call _weapon_processor;
	[_unit, _loadout] call compile format ["if isNil {MAMaS_%1_processor} then {MAMaS_%1_processor = compile preprocessFileLineNumbers 'equipment\%1.sqf'};_this call MAMaS_%1_processor",_faction];
	_unit setVariable ["MAMaS_template",[_faction,_loadout]];
};
_unit call _med_processor;
