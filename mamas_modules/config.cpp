/**********************************************
 Original file: config.bin
 Binarized size: 402b
 Classes count: 2
 Datestamp: 07.11.2017 21:45:10
 Debinarized with Blender's tools
 http://www.arma3.ru
**********************************************/

class CfgPatches {
    class MAMaS_Modules {
        units[] = {
            "MAMaS_Module_RandomSpawn",
            "MAMaS_Module_RemoveUnassignedVehicles"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {};
    };
};
class CfgVehicles {
    class Logic;
    class MAMaS_Module_RandomSpawn:Logic {
        displayName = "$STR_MAMAS_MODULE_RANDOMSPAWN_NAME";
        icon = "\mamas_modules\data\icon_mamas_respawn.paa";
        picture = "\mamas_modules\data\icon_mamas_respawn.paa";
        vehicleClass = "Modules";
    };
	class MAMaS_Module_RemoveUnassignedVehicles:Logic {
        displayName = "$STR_MAMAS_MODULE_REMOVEUNASSIGNEDVEHICLES_NAME";
        icon = "\mamas_modules\data\icon_mamas_remove_veh.paa";
        picture = "\mamas_modules\data\icon_mamas_remove_veh.paa";
        vehicleClass = "Modules";
    };
};
