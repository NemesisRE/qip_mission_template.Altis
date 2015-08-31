/****************************************************************
ARMA Mission Development Framework
ADF version: 1.40 / JUNE 2015
Script: Mission init / Variables init
Author: Whiztler
Script version: 1.17
Game type: n/a
File: initPre.sqf
Previous: ADF_init_vars.sqf
****************************************************************/

diag_log "Init - executing initPre.sqf"; // Reporting. Do NOT edit/remove

// Get addon/mod/dlc availability from the A3 config file and store them in easy to use variables
dlc_MarksMan 	= isClass (configFile >> "CfgMods" >> "Mark"); // Check if Marksman DLC is present
dlc_Bundle 		= isClass (configFile >> "CfgMods" >> "DLCBundle"); // Check if DLC Bundle is present
dlc_Heli 		= isClass (configFile >> "CfgMods" >> "Heli"); // Check if Helicopters DLC is present

mod_CBA 		= isClass (configFile >> "CfgPatches" >> "cba_main"); // Check if CBA is present
mod_TFAR 		= isClass (configFile >> "CfgPatches" >> "task_force_radio"); // Check if TFAR is present
mod_CTAB 		= isClass (configFile >> "CfgPatches" >> "cTab"); // Check if cTab is present
mod_ACE3 		= isClass (configFile >> "CfgPatches" >> "ace_common"); // ACE3 Core
mod_AIA	 		= isClass (configFile >> "CfgPatches" >> "AiA_Core"); // All in Arma (Terrain Pack) V1.39 B7
mod_Ares 		= isClass (configFile >> "CfgPatches" >> "Ares"); // Ares Zeus V1.39 B7
mod_CSAT 		= isClass (configFile >> "CfgPatches" >> "TEC_CSAT"); // TEC CSAT V1.39 B7
mod_RHS	 		= isClass (configFile >> "CfgPatches" >> "rhs_main"); // Red Hammer Studios V1.39 B7

// Init global mission vars
missionInit 				= false;
ADF_isHC 					= false;
isCurator					= [player] call qipTPL_fnc_isCurator;
if (isNil "ADF_HC_connected") then {ADF_HC_connected = false;}; // HC init

if (!qipTPL_uavIntro && qipTPL_init && !isCurator) then {
	_l = ["tLayer"] call BIS_fnc_rscLayer;
	_l cutText ["", "BLACK IN", (qipTPL_missionInitTime + 5)];
};

player setVariable ["BIS_noCoreConversations",true]; // Disable AI chatter.
enableSaving [false,false]; // Disables save when aborting.
enableTeamSwitch false; // Disables team switch.
enableSentences false; // Disable AI chatter.

if (qipTPL_init && !isCurator) then {
	player enableSimulation false;
};
