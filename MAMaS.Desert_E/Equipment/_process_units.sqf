if isNil{MAMaS_unitprocessor} then {
	MAMaS_unitprocessor = compile preprocessFileLineNumbers "Equipment\_unitprocessor.sqf";
};
_this call MAMaS_unitprocessor; 
