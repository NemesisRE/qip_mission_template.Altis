/********** Some defaults **************/
overviewPicture = "\z\qiptpl\addons\assets\Images\qip_flag.paa";
onLoadIntroTime = 0;
onLoadMissionTime = 0;
onLoadIntro = "Powered by [qip]";
briefing = 1; // 0 = disabled - 1 = enabled
debriefing = 1; // 0 = disabled - 1 = enabled
cba_settings_hasSettingsFile = 1;
//enableDebugConsole = 1; // Enable the debug console where (0=disabled),(1=Admins Only),(2=Everyone) BETTER DO NOT SET AS 2!
enableDebugConsole[] = {"76561197977711898"}; // Enable the debug console for host / logged in admins and all listed user id's
aiKills = 0; // 0 = Disable, 1 = Enable
enableItemsDropping = 1; // 0 = Disable, 1 = Enable

/**********  Respawn & JIP Settings **********/
respawn = 2; //  0 = No respawn, 1 = Spectator, 2 = Instant, respawn just where you died, 3 = Respawn at base (respawn_west marker), 4 = Respawn in your group, 5 = Respawn into an AI unit on your side
respawnDelay = 5; // Respawn delay time in seconds
respawnDialog = 1; // Respawn dialog in case of multiple locations. 0 = false (no dialog), 1 = true (show dialog).
respawnButton = 1; // Respawn button in the pause menu is automatically now enabled for INSTANT, BASE, GROUP and SIDE respawn types. 0 = disabled, 1 = enabled
respawnOnStart = -1; // 1 = Respawn on start. Run respawn script on start, 0 = Dont respawn on start. Run respawn script on start, -1 = Dont respawn on start. Don't run respawn script on start.
joinUnassigned = 1; // Where 0 forces joining players into the first empty slot, 1 leaves them to select their own slot.
skipLobby = 0; // 0: disabled - 1: enabled. Default: 0 - Overwrites joinUnassigned

// Respawn Ticket system init. Vars defined in init
respawnTemplates[] = {"MenuPosition"};
//respawnTemplatesWest[] = {"MenuPosition"};
//respawnTemplatesEast[] = {"MenuPosition"};
//respawnTemplatesCiv[] = {"MenuPosition"};
respawnTemplatesVirtual[] = {"Base"};

/********** Vanilla Revive Settings **********/
//reviveMode = 1;                         //0: disabled, 1: enabled, 2: controlled by player attributes
//reviveUnconsciousStateMode = 1;         //0: basic, 1: advanced, 2: realistic
//reviveRequiredTrait = 0;                //0: none, 1: medic trait is required
//reviveRequiredItems = 1;                //0: none, 1: medkit, 2: medkit or first aid kit
//reviveRequiredItemsFakConsumed = 0;     //0: first aid kit is not consumed upon revive, 1: first aid kit is consumed
//reviveDelay = 20;                       //time needed to revive someone (in secs)
//reviveMedicSpeedMultiplier = 2;         //speed multiplier for revive performed by medic
//reviveForceRespawnDelay = 600;           //time needed to perform force respawn (in secs)
//reviveBleedOutDelay = 600;              //unconscious state duration (in secs)

/********** Vanilla Garbagecollector Settings **********/
//minPlayerDistance = 50; // meters. Default: 0

//corpseManagerMode = 0; // Default: 0 for SP, 2 for MP
//corpseLimit = 1; // Default: 15
//corpseRemovalMinTime = 1; // seconds. Default: 10
//corpseRemovalMaxTime = 1200; // seconds. Default: 3600

//wreckManagerMode = 0; // Default: 0 for SP, 2 for MP
//wreckLimit = 1; // seconds. Default: 15
//wreckRemovalMinTime = 1; // seconds. Default: 10
//wreckRemovalMaxTime = 1800; // seconds. Default: 36000 (10 hours)

/**********  Mission specific settings **********/
//showCompass = 0; // 0: disabled - 1: enabled. Default: 1
//showGPS = 0; // 0: disabled - 1: enabled. Default: 1
//showMap = 0; // 0: disabled - 1: enabled. Default: 1
//showWatch = 0; // 0: disabled - 1: enabled. Default: 1
//showUAVFeed = 0; // 0: disabled - 1: enabled. Default: 1
disabledAI = 1; // Enable AI's to fill empty playable slots (0=disable), (1=enable).
forceRotorLibSimulation = 0; // (0=options based), (1=force enable), (2=force disable).
taskManagement_markers2D = 1; // 0: do not use new 2D markers (default), 1: replace task markers with new 2D markers
taskManagement_markers3D = 1; // 0: do not use new 3D markers (default), 1: replace task waypoints with new 3D markers
taskManagement_propagate = 1; // 0: do not propagate (default), 1: propagate shared tasks to subordinates
taskManagement_drawDist = 2500; // 3D marker draw distance (default: 2000)
disableChannels[] = {2,4,5,6}; // Restrict chat channels where (0=Global),(1=Side),(2=Command),(3=Group),(4=Vehicle),(5=Direct),(6=System).
//arsenalRestrictedItems[] = { "U_B_Soldier_VR" };

/**********  Mission type settings **********/
class Header {
	gameType = Zeus; // https://community.bistudio.com/wiki/Multiplayer_Game_Types
};

/*************   DO NOT EDIT BELOW THIS LINE! EXCEPT YOU KNOW WHAT YOU ARE DOING   *************/
allowFunctionsLog = 0; // 0 = Disable, 1 = Enable
allowFunctionsRecompile = 1; // 0 = Disable, 1 = Enable
saving = 0; // disable saving

// Save Mission and Template root in parsingNamespace
// parsingNamespace getVariable "MISSION_ROOT";
__EXEC (MISSION_ROOT = __FILE__ select [0, count __FILE__ - 22]);
// parsingNamespace getVariable "QIPTPL_ROOT";
__EXEC (QIPTPL_ROOT = __FILE__ select [0, count __FILE__ - 16]);

/********** Cfg Includes **********/
class CfgSounds {
	#include "CfgFiles\CfgSounds.hpp"
};

class CfgMusic {
	#include "CfgFiles\CfgMusic.hpp"
};

class CfgRadio {
	#include "CfgFiles\CfgRadio.hpp"
};

class CfgUnitInsignia {
	#include "CfgFiles\CfgUnitInsignia.hpp"
};

class CfgIdentities {
	#include "CfgFiles\CfgIdentities.hpp"
};

class CfgRespawnTemplates {
	#include "CfgFiles\CfgRespawnTemplates.hpp"
};

class Params {
	#include "CfgFiles\CfgParams.hpp"
};

class CfgLoadouts {
	#include "CfgFiles\CfgLoadouts.hpp"
};

class CfgFunctions {
	#include "CfgFiles\CfgFunctions.hpp"
};
