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

//WIP
// player setVariable [ "VAcatch", [ "VAcatch", "onEachFrame", {
// 	if ( !( isNil { _this getVariable "VAcatch" } ) && { !( isNull ( uiNamespace getVariable [ "BIS_fnc_arsenal_cam", objNull ] ) ) } ) then {
// 		_this setVariable [ "VAcatch", nil ];
// 		_thread = _this spawn {
// 			waitUntil { isNull ( uiNamespace getVariable [ "BIS_fnc_arsenal_cam", objNull ] )  };
// 			call TFAR_fnc_requestRadios;
// 			_this setVariable [ "VAcatch", "VAcatch" ];
// 		};
// 	};
// }, player ] call BIS_fnc_addStackedEventHandler ];
