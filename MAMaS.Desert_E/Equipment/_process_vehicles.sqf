if isNil{MAMaS_vehprocessor} then {
	MAMaS_vehprocessor = compile preprocessFileLineNumbers "Equipment\_vehprocessor.sqf";
};
_this call MAMaS_vehprocessor; 
