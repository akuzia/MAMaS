/* #Kabopy
$[
	1.063,
	["uav",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,1,0],
	[1200,"back",[1,"a3ru_uav\uav_back.paa",["0 * safezoneW + safezoneX","0 * safezoneH + safezoneY","1 * safezoneW","1 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1201,"cross",[2,"a3ru_uav\uav_cross.paa",["16 * GUI_GRID_W + GUI_GRID_X","11.5 * GUI_GRID_H + GUI_GRID_Y","8.50001 * GUI_GRID_W","3.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1202,"pos",[1,"a3ru_uav\uav_pos.paa",["0.451887 * safezoneW + safezoneX","0.830036 * safezoneH + safezoneY","0.0962252 * safezoneW","0.055006 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"text_alt",[1,"ALT: 216",["0.740563 * safezoneW + safezoneX","0.31298 * safezoneH + safezoneY","0.137465 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"text_dir",[1,"DIR: 10",["0.740563 * safezoneW + safezoneX","0.345983 * safezoneH + safezoneY","0.137465 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1002,"text_obj",[1,"OBJ: UNKNOWN",["0.740563 * safezoneW + safezoneX","0.378987 * safezoneH + safezoneY","0.219943 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1003,"text_header",[1,"// ATRIUM UAV INTEL",["0.0120006 * safezoneW + safezoneX","0.0159473 * safezoneH + safezoneY","0.42614 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1004,"text_mission",[1,"Mission Name: UNKNOWN",["0.0120006 * safezoneW + safezoneX","0.0489509 * safezoneH + safezoneY","0.42614 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1005,"text_author",[1,"Author: UNKNOWN",["0.0120006 * safezoneW + safezoneX","0.0819545 * safezoneH + safezoneY","0.42614 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1006,"text_date",[1,"DATE: 12/12/2012",["0.0120006 * safezoneW + safezoneX","0.951049 * safezoneH + safezoneY","0.316169 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1007,"text_loc",[1,"LOC: UNKNOWN",["0.740563 * safezoneW + safezoneX","0.41199 * safezoneH + safezoneY","0.219943 * safezoneW","0.0330036 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"space",[1,"",["0.225071 * safezoneW + safezoneX","0.929047 * safezoneH + safezoneY","0.549858 * safezoneW","0.055006 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class A3RU_UAV_INTEL
{
	#define A3RU_FontSize "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7)" // "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 240) * 6)"
	#include "blnd_uav_macros.h"
	class RscText
	{
		access = 0;
		type = 0;
		idc = -1;
		colorBackground[] = {0, 0, 0, 0};
		colorText[] = {1, 1, 1, 1};
		text = "";
		fixedWidth = 0;
		x = 0;
		y = 0;
		h = 0.037;
		w = 0.3;
		style = 0;
		//style = "0x02";
		shadow = 1;
		colorShadow[] = {0, 0, 0, 0.5};
		font = "Zeppelin33";
		//SizeEx = A3RU_FontSize;
		sizeEx = 0.028;
		linespacing = 1;
	};
	class RscPicture
	{
		access = 0;
		type = 0;
		idc = -1;
		style = 48;
		colorBackground[] = {1, 0, 0, 0};
		colorText[] = {1, 1, 1, 1};
		font = "TahomaB";
		sizeEx = 0;
		lineSpacing = 0;
		text = "";
		fixedWidth = 0;
		shadow = 0;
		x = 0;
		y = 0;
		w = 0.2;
		h = 0.15;
	};
	class RscStructuredText
	{
		access = 0;
		type = 13;
		idc = -1;
		style = 0;
		colorText[] = 
		{
			1,
			1,
			1,
			1
		};
		class Attributes
		{
			font = "Zeppelin33";
			color = "#ffffff";
			align = "left";
			shadow = 1;
		};
		x = 0;
		y = 0;
		h = 0.035;
		w = 0.1;
		text = "";
		size = 0.03921;
		shadow = 1;
	};
	idd = -1;
	movingEnable = 0;
	duration = 1e+011;
	name = "A3RU_UAV_INTEL";
	onLoad = "uiNamespace setVariable ['A3RU_UAV_INTEL', _this select 0];";
	onUnLoad = "uiNamespace setVariable ['A3RU_UAV_INTEL', nil]";
	controlsBackground[] = {back};
	objects[] = {};
	controls[]=
	{
		cross,
		pos,
		text_alt,
		text_dir,
		text_obj,
		text_header,
		text_mission,
		text_author,
		text_date,
		text_loc,
		space
	};

	class back: RscPicture
	{
		idc = IDC_UAV_BACK;
		text = "Resources\uav_back.paa";
		x = safezoneX;
		y = safezoneY;
		w = 1 * safezoneW;
		h = 1 * safezoneH;
	};
	class cross: RscPicture
	{
		idc = IDC_UAV_CROSS;
		text = "Resources\uav_cross.paa";
		x = 0.445014 * safezoneW + safezoneX;
		y = 0.477998 * safezoneH + safezoneY;
		w = 0.116845 * safezoneW;
		h = 0.0770084 * safezoneH;
	};
	class pos: RscPicture
	{
		idc = IDC_UAV_POS;
		text = "Resources\uav_pos.paa";
		x = 0.451887 * safezoneW + safezoneX;
		y = 0.830036 * safezoneH + safezoneY;
		w = 0.0962252 * safezoneW;
		h = 0.055006 * safezoneH;
	};
	class text_alt: RscText
	{
		idc = IDC_UAV_TEXT_ALT;
		text = "ALT: 216"; //--- ToDo: Localize;
		x = 0.740563 * safezoneW + safezoneX;
		y = 0.31298 * safezoneH + safezoneY;
		w = 0.137465 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_dir: RscText
	{
		idc = IDC_UAV_TEXT_DIR;
		text = "DIR: 10"; //--- ToDo: Localize;
		x = 0.740563 * safezoneW + safezoneX;
		y = 0.345983 * safezoneH + safezoneY;
		w = 0.137465 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_obj: RscText
	{
		idc = IDC_UAV_TEXT_OBJ;
		text = "OBJ: UNKNOWN"; //--- ToDo: Localize;
		x = 0.740563 * safezoneW + safezoneX;
		y = 0.378987 * safezoneH + safezoneY;
		w = 0.219943 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_header: RscText
	{
		idc = IDC_UAV_TEXT_HEADER;
		text = "// ARMAPRO UAV INTEL"; //--- ToDo: Localize;
		x = 0.0120006 * safezoneW + safezoneX;
		y = 0.0159473 * safezoneH + safezoneY;
		w = 0.42614 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_mission: RscText
	{
		idc = IDC_UAV_TEXT_MISSION;
		text = "Mission Name: UNKNOWN"; //--- ToDo: Localize;
		x = 0.0120006 * safezoneW + safezoneX;
		y = 0.0489509 * safezoneH + safezoneY;
		w = 0.42614 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_author: RscText
	{
		idc = IDC_UAV_TEXT_AUTHOR;
		text = "Author: UNKNOWN"; //--- ToDo: Localize;
		x = 0.0120006 * safezoneW + safezoneX;
		y = 0.0819545 * safezoneH + safezoneY;
		w = 0.42614 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_date: RscText
	{
		idc = IDC_UAV_TEXT_DATE;
		text = "DATE: 12/12/2012"; //--- ToDo: Localize;
		x = 0.0120006 * safezoneW + safezoneX;
		y = 0.951049 * safezoneH + safezoneY;
		w = 0.316169 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class text_loc: RscText
	{
		idc = IDC_UAV_TEXT_LOC;
		text = "LOC: UNKNOWN"; //--- ToDo: Localize;
		x = 0.740563 * safezoneW + safezoneX;
		y = 0.41199 * safezoneH + safezoneY;
		w = 0.219943 * safezoneW;
		h = 0.0330036 * safezoneH;
	};
	class space: RscStructuredText
	{
		idc = IDC_UAV_SPACE;
		x = 0.225071 * safezoneW + safezoneX;
		y = 0.929047 * safezoneH + safezoneY;
		w = 0.549858 * safezoneW;
		h = 0.055006 * safezoneH;
	};
};