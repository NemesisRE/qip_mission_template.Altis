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

qipTPL_initBriefing = [] execVM 'config\briefing.sqf'; // Load Mission Briefing
qipTPL_initCredits = [] execVM 'init\tplCredits.sqf';
#include "init\initPre.sqf"

// HC init. Init before caching. Is HC is active then caching is disabled
if (_ADF_HC_init) then {
	_ADF_run_HC = execVM "init\ADF\ADF_HC.sqf";
	waitUntil {scriptDone _ADF_run_HC}
}; // Headless Client. Only executed when a HC is physically present (configured in server.cfg). See 'Core\ADF_HC.sqf' for more info.

/********** Server only Init **********/
if (isServer) then  { //server init
	#include "init\ADF\ADF_init_rpt.sqf"
	if (_ADF_CleanUp) then {
		[_ADF_CleanUp_viewDist,_ADF_CleanUp_manTimer,_ADF_CleanUp_vehTimer,_ADF_CleanUp_abaTimer] execVM "3rdPartyScripts\delete.sqf";
	}; // garbage collector.
	if (_ADF_Caching && !ADF_HC_connected) then {
		[_ADF_Caching_UnitDistance,-1,_ADF_Caching_Debug,_ADF_Caching_vehicleDistance_land,_ADF_Caching_vehicleDistance_air,_ADF_Caching_vehicleDistance_sea] execVM "3rdPartyAddons\zbe_cache\main.sqf";
	}; // Configure in ADF_init_config.sqf
};

/**********  Execute Core  **********/
qipTPL_initTPL = [] execVM 'init\initTPL.sqf';

/**********  Execute 3rd Party addons/scripts **********/
qipTPL_init3rdPartyScripts = [] execVM '3rdPartyScripts\initScripts.sqf';	// initialize 3rd Scripts
qipTPL_init3rdPartyAddons = [] execVM '3rdPartyAddons\initAddons.sqf';	// initialize 3rd Addons

/********** Post processing **********/
qipTPL_initPost = [] execVM 'init\initPost.sqf'; // Should be the last line of the init.sqf
