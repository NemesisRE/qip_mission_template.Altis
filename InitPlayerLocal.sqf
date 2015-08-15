/****************************************************************
File: initPlayerLocal.sqf
*****************************************************************
Executed locally when player joins mission (includes both mission
start and JIP).
[player:Object, didJIP:Boolean]
****************************************************************/

diag_log "Init - executing initPlayerLocal.sqf"; // Reporting. Do NOT edit/remove

enableEnvironment false; // Perf saver - remove rabbits, snakes, etc

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups; // Initializes the player/client side Dynamic Groups framework and registers the player group
