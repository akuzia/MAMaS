#include "blnd_macros.h"

private ["_position", "_size", "_border", "_width", "_pi", "_perimeter", "_wallcount", "_total"];

_position = _this select 0;
if (count _position == 2) then { _position SET [2, 0] };
_size = _this select 1;

_border = [];
_width = 10;

_pi = 3.14159265358979323846;
_perimeter = (_size * _pi);
_perimeter = _perimeter + _width - (_perimeter % _width);
_size = (_perimeter / _pi);
_wallcount = _perimeter / _width * 2;
_total = _wallcount;

for "_i" from 1 to _total do {
	private ["_dir", "_xpos", "_ypos", "_zpos", "_wall"];
	_dir = (360 / _total) * _i;
	_xpos = (_position select 0) + (sin _dir * _size);
	_ypos = (_position select 1) + (cos _dir * _size);
	_zpos = (_position select 2);

	_wall = "transparentwall" createvehiclelocal [_xpos,_ypos,_zpos];
	_wall setposasl [_xpos,_ypos,0];
	_wall setdir (_dir + 90);
	_border = _border + [_wall];
};

SVAR(SpawnBorders,_border);