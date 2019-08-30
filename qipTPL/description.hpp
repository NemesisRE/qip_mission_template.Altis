/********** Some defaults **************/
overviewPicture = "\z\qiptpl\addons\assets\Images\qip_flag.paa";
onLoadIntroTime = 0;
onLoadMissionTime = 0;
onLoadIntro = "Powered by [qip]";
cba_settings_hasSettingsFile = 1;

/**********  Respawn & JIP Settings **********/
respawn = 2; //  0 = No respawn, 1 = Spectator, 2 = Instant, respawn just where you died, 3 = Respawn at base (respawn_west marker), 4 = Respawn in your group, 5 = Respawn into an AI unit on your side
respawnDelay = 5; // Respawn delay time in seconds
respawnDialog = 1; // Respawn dialog in case of multiple locations. 0 = false (no dialog), 1 = true (show dialog).
respawnButton = 1; // Respawn button in the pause menu is automatically now enabled for INSTANT, BASE, GROUP and SIDE respawn types. 0 = disabled, 1 = enabled
respawnOnStart = -1; // 1 = Respawn on start. Run respawn script on start, 0 = Dont respawn on start. Run respawn script on start, -1 = Dont respawn on start. Don't run respawn script on start.
joinUnassigned = 1; // Where 0 forces joining players into the first empty slot, 1 leaves them to select their own slot.

// Respawn Ticket system init. Vars defined in init
respawnTemplates[] = {"MenuPosition"};
//respawnTemplatesWest[] = {"MenuPosition"};
//respawnTemplatesEast[] = {"MenuPosition"};
//respawnTemplatesCiv[] = {"MenuPosition"};
respawnTemplatesVirtual[] = {"Base"};

/********** Vanilla Revive Settings **********/
// Vanilla Revive Settings
//reviveDelay = 20;
//reviveForceRespawnDelay = 60;
//reviveBleedOutDelay = 180;

/**********  Mission specific settings **********/
disabledAI = 1; // Enable AI's to fill empty playable slots (0=disable), (1=enable).
forceRotorLibSimulation = 0; // (0=options based), (1=force enable), (2=force disable).
taskManagement_markers2D = 1; // 0: do not use new 2D markers (default), 1: replace task markers with new 2D markers
taskManagement_markers3D = 1; // 0: do not use new 3D markers (default), 1: replace task waypoints with new 3D markers
taskManagement_propagate = 1; // 0: do not propagate (default), 1: propagate shared tasks to subordinates
taskManagement_drawDist = 2500; // 3D marker draw distance (default: 2000)
disableChannels[] = {2,4,5,6}; // Restrict chat channels where (0=Global),(1=Side),(2=Command),(3=Group),(4=Vehicle),(5=Direct),(6=System).

/***********************************   DO NOT EDIT BELOW THIS LINE!   **********************************/
//enableDebugConsole = 1;	// Enable the debug console where (0=disabled),(1=Admins Only),(2=Everyone) DO NOT SET AS 2!
enableDebugConsole[] = {"76561197977711898"};	// Enable the debug console for host / logged in admins and all listed user id's
aiKills = 0; // 0 = Disable, 1 = Enable
enableItemsDropping = 1; // 0 = Disable, 1 = Enable
allowFunctionsLog = 0; // 0 = Disable, 1 = Enable
allowFunctionsRecompile = 1; // 0 = Disable, 1 = Enable
saving = 0; // disable saving

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
