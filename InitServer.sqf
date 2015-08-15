/****************************************************************
File: initServer.sqf
****************************************************************
Executed on the server at mission start. NOT executed on any
(player) clients and not on JIP.
****************************************************************/

diag_log "Init - executing initServer.sqf"; // Reporting. Do NOT edit/remove

// add mission data to RPT log
diag_log text ""; diag_log text ""; diag_log text "";
diag_log text format["####################   %1   ####################", missionName]; // stamp mission name in RPT log
diag_log text "";

//  Execute Core Third Party SERVER scripts: (comment out if not applicable)
["Initialize", [true]] call BIS_fnc_dynamicGroups;  // Initializes the Dynamic Groups framework and groups led by a player at mission start will be registered
