#include "Functions\blnd_macros.h"
#include "Scripts\const.h"

enableSaving [false, false];
enableEngineArtillery false;

call compile preprocessFileLineNumbers "MAMaS\Scripts\ace_settings.sqf";

//// COMMON FUNCTIONS
FNC(EventHandlers) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_EventHandlers.sqf";
FNC(GetParam) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_GetParam.sqf";
FNC(GetName) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_GetName.sqf";
FNC(SetMissionConditions) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_setMissionConditions.sqf";
MAMaS_msg = compile preprocessFileLineNumbers "MAMaS\Functions\fn_Msg.sqf";

["preInit", ""] call FNC(EventHandlers);

[] execVM "MAMaS\Scripts\endmission.sqf";

if (isServer) then {
	["preInit", "server"] call FNC(EventHandlers);
	warbegins = 0; publicVariable "warbegins";
	readyArray = [false,false];
	publicVariable "readyArray";
	[] call FNC(SetMissionConditions);
};

if (!isDedicated) then {
	["preInit", "client"] call FNC(EventHandlers);
	FNC(MarkersInit) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_MarkersInit.sqf";
	FNC(MarkersActions) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_MarkersActions.sqf";
	FNC(MarkersLoop) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_MarkersLoop.sqf";
	FNC(VehicleFreeze) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_VehicleFreeze.sqf";
	FNC(EarlyJoin) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_EarlyJoin.sqf";
	FNC(SpawnZone) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_SpawnZone.sqf";
	FNC(Status) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_Status.sqf";
	FNC(GetSideString) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_GetSideString.sqf";
	FNC(SpawnBorder) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_SpawnBorder.sqf";
	FNC(TeleportPlayer) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_TeleportPlayer.sqf";
	FNC(UavView) = compile preprocessFileLineNumbers "MAMaS\Functions\fn_cli_UavView.sqf";
	
	BIS_fnc_rscLayer = compile preprocessFileLineNumbers "MAMaS\BIS_Functions\fn_rscLayer.sqf";
	BIS_fnc_param = compile preprocessFileLineNumbers "MAMaS\BIS_Functions\fn_param.sqf";
	
	MAMaS_server_message = "";
	"MAMaS_server_message" addPublicVariableEventHandler {hint (_this select 1)};
	MAMaS_taskhint = "";
	"MAMaS_taskhint" addPublicVariableEventHandler {taskHint [(_this select 1),[1, 0, 0, 1], "taskNew"];};
	MAMaS_msgText = "";
	"MAMaS_msgText" addPublicVariableEventHandler {
		if (count(_this select 1)==2) then {
			if ((side player)==(_this select 1) select 1) then {
				taskHint [(_this select 1) select 0,[1, 0, 0, 1], "taskNew"];
			};
		}else{
			taskHint [(_this select 1) select 0,[0, 1, 0, 1], "taskNew"];
		};
	};
	["Client preInit loaded."] call FNC(Status);
};