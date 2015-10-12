/****************************************************************
File: init.sqf
****************************************************************
DO NOT EDIT. CONFIGURE IN 'config/'
All Files in config directory are there to be changed on a
per mission base.
****************************************************************/

diag_log "Init - executing init.sqf"; // Reporting. Do NOT edit/remove

if (!isDedicated && (isNull player)) then {
	waitUntil {!(isNull player)};
};

isCurator					= [player] call qipTPL_fnc_isCurator;
qipTPL_init					= ["initTPL"] call qipTPL_fnc_paramToBool;
qipTPL_uavIntro				= ["uavIntro"] call qipTPL_fnc_paramToBool;
qipTPL_debug				= ["debugTPL"] call qipTPL_fnc_paramToBool;
ADF_HC_init					= ["HC"] call qipTPL_fnc_paramToBool; // Enable the Headless Client [true/false].
ADF_Log_ServerPerfEnable	= ["ServerPerf"] call qipTPL_fnc_paramToBool; // Enable server performance logging in RPT. [true/false]
ADF_Caching					= ["Caching"] call qipTPL_fnc_paramToBool; // // Enable/disable caching of units and vehicles. Auto Disabled when HC is active. [true/false].
ADF_CleanUp					= ["Cleanup"] call qipTPL_fnc_paramToBool; // enable cleaning up of dead bodies (friendly, enemy, vehicles, etc.) [true/false].

if (isCurator) exitWith {
	[] spawn qipTPL_fnc_tfrZeus;
};

if (qipTPL_init) then {
	player enableSimulation false;
	if (!qipTPL_uavIntro) then {
		_l = ["tLayer"] call BIS_fnc_rscLayer;
		_l cutText ["", "BLACK IN", (qipTPL_missionInitTime + 5)];
	};
};

if (ADF_HC_init) then {
	ADF_run_HC = [] execVM "init\ADF\ADF_HC.sqf";
};

/********** Server only Init **********/
if (isServer) then  { //server init
	#include "init\ADF\ADF_init_rpt.sqf"
	if (ADF_CleanUp) then {
		[] execVM "3rdPartyScripts\delete.sqf";
	}; // garbage collector.
	if (ADF_Caching && !ADF_HC_connected) then {
		[] execVM "3rdPartyAddons\zbe_cache\main.sqf";
	}; // Configure in ADF_init_config.sqf
};

/**********  Execute Core  **********/
qipTPL_initTPL = [] execVM 'init\initTPL.sqf';

/**********  Execute 3rd Party addons/scripts **********/
qipTPL_init3rdPartyScripts = [] execVM '3rdPartyScripts\initScripts.sqf';	// initialize 3rd Scripts
qipTPL_init3rdPartyAddons = [] execVM '3rdPartyAddons\initAddons.sqf';	// initialize 3rd Addons

/********** Post processing **********/
qipTPL_initPost = [] execVM 'init\initPost.sqf'; // Should be the last line of the init.sqf
