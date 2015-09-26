/****************************************************************
ARMA Mission Development Framework
ADF version: 1.40 / JUNE 2015

Script: Headless Client init
Author: Whiztler
Script version: 2.45

Game type: N/A
File: ADF_HC.sqf
****************************************************************
Instructions:

To configure one or more HC's on the server please visit and read:
https://community.bistudio.com/wiki/Arma_3_Headless_Client

The ADF headless clients supports automatic load balancing (when
enabled in the mission config). When using 2 or 3 HC's the script
will distribute AI groups across the available HC's every 60 seconds.

Name the Headless Clients: ADF_HC1, ADF_HC2, ADF_HC3

In your scripts that you use to spawn objects/units, replace

if (!isserver) exitWith {};

with

if (!ADF_HC_execute) exitWith {}; // Autodetect: execute on the HC else execute on the server
****************************************************************/

diag_log "ADF RPT: Init - executing ADF_HC.sqf"; // Reporting. Do NOT edit/remove

// HC check
if (!isServer && !hasInterface) then {
	ADF_HC_connected = true; publicVariable "ADF_HC_connected";
	diag_log "ADF RPT: HC - Headless Client detected";
} else {
	sleep 3; // Wait for HC to publicVar ADF_HC_connected (if a HC is present)
	diag_log "ADF RPT: HC - NO Headless Client detected, using server";
};

// Werthles Headless Script Parameters v2.3
// 1. Repeating - true/Once - false,
// 2. Time between repeats (seconds),
// 3. Debug available for all - true/Just available for admin/host - false,
// 4. Advanced balancing - true/Simple balancing - false,
// 5. Delay before executing (seconds),
// 6. Additional syncing time between groups transferred to try to reduce bad unit transfer caused by desyncs (seconds)
// 7. Display an initial setup report after the first cycle, showing the number of units moved to HCs,
// 8. Addition phrases to look for when checking whether to ignore.
// Unit names, group names, unit's current transport vehicle, modules synced to units and unit class names will all be checked for these phrases
// Format:
// ["UnitName","GroupCallsignName","SupportProviderModule1","TypeOfUnit"]
// E.g. ["BLUE1","AlphaSquad","B_Heli_Transport_01_camo_F"] (including ""s)
// Specifying "B_Heli" would stop all units with that class type from transferring to HCs
// However, if you specify "BLUE1", "NAVYBLUE10" will also be ignored
[true,30,false,true,30,3,false,[]] execVM "3rdPartyScripts\WerthlesHeadless.sqf";
