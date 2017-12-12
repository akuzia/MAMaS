if (isServer) then {
	private "_module";
	_module = _this select 0;
	{
		_x setVariable ["MAMaS_canUnlock", false, true];
		_x setVariable ["SerP_canUnlock", false, true]; // Should be obsolete, but who knows...
	} forEach (synchronizedObjects _module);
};