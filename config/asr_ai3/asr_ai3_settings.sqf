/*
 ASR AI3 global settings; these settings are applicable on all machines running the mod and are pushed over the network by the server to all clients
 this file must be found in <game folder>\userconfig\asr_ai3\
 for most settings, 0 = disabled, 1 = enabled

 Mission makers can control these features by setting these global variables in init.sqf
*/

asr_ai3_main_enabled 		    = 1;    // All the other settings matter only if we have 1 here; set 0 to disable all scripted features
asr_ai3_main_radiorange 	    = 500;  // Maximum range for AI radios (warning: increasing this impacts game performance); AI groups share known enemy locations over radio (set to 0 to disable)
asr_ai3_main_seekcover 		    = 1;    // Set to 1 if AI should move to near cover in combat when they're exposed in the open, 0 to disable.
asr_ai3_main_usebuildings   	= 0.8;  // Chance the AI group members may enter nearby building positions (0 to 1 values, 0 will disable the feature)
asr_ai3_main_getinweapons 	    = 0.5;  // Chance the AI group will mount nearby static and vehicle weapons in combat (0 to 1 values, 0 will disable the feature)
asr_ai3_main_packNVG		    = 1;    // Automatically un-equip NVG during the day (store them in the vest/backpack) and re-equip when it gets dark
asr_ai3_main_disableAIPGfatigue = 1;    // Disables fatigue for AI units in player's group so they are able to keep up (0 - disabled, 1 - enabled)
asr_ai3_main_onteamswitch   	= 1;    // Teamswitch handler: makes unit switched into the group leader; prevents AI left in place from sending stupid orders (0 - disabled, 1 - enabled)
asr_ai3_main_copymystance   	= 1;    // When enabled AI will auto adjust to player stance changes (0 - disabled, 1 - enabled)
asr_ai3_main_debug 	    	    = 0;    // Log extra debugging info to RPT, create debug markers and hints (1-enabled, 0-disabled)
