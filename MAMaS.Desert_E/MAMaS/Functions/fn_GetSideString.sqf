/*
	Function: Get localized side string
	Author: Blender
	Arguments:
	- (object) Unit or vehicle
	Return values:
	- (string) Localized side
*/
private "_side";

_side = sideUnknown;
if (_this in allUnits) then {
	_side = side (group _this);
} else {
	_side = side _this;
};

switch _side do {
	case WEST: { localize "str_west" };
	case EAST: { localize "str_east" };
	case RESISTANCE: { localize "str_guerrila" };
	case CIVILIAN: { localize "str_civilian" };
	default { localize "str_side_unknown" };
}