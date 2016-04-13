/********** Basics **********/
qipTPL_enabled = true;
qipTPL_missionInitTime = 30; // Mission Init time counter. Min 30 secs. Add 1 sec per 2 players. starting at 10 -> 20 players = 35 secs.
qipTPL_clanName = "quies in proelium"; // What is the name of your community/clan. Used in Hints, intro's etc.
qipTPL_clanTag = "[qip]"; // What is the tag of your community/clan. Used in Hints, intro's etc.
qipTPL_clanLogo = "\qipTPL\Images\qip_logo.paa"; // Full path to the clan logo.
qipTPL_clanFlag = "\qipTPL\Images\qip_flag.paa"; // Full path to the clan flag (dimensions 512 x 256, pref PAA format).

/********** Winteratmosphere **********/
qipTPL_breathFog = false; // enables breathfog, probably more in the futur
qipTPL_snowStorm = false; // enables the snowStorm from the qipMod

/********** UNIT/VEHICLE CACHING **********/
qipTPL_Caching_unitDistance = 1000; // AI Unit caching distance default = 1000 meters.
qipTPL_Caching_vehicleDistance_land = 250; // Cars caching distance default = 250 meters.
qipTPL_Caching_vehicleDistance_air = 1500; // aircraft caching distance default = 250 meters.
qipTPL_Caching_vehicleDistance_sea = 2000; // boats caching distance default = 250 meters.

/********** Cleanup **********/
qipTPL_CleanUp_viewDist = 500; // min distance in meter from a player unit to allow delete, if you dont care if player sees the delete, set it to 0.
qipTPL_CleanUp_manTimer = 300; // x seconds until delete of dead man units.
qipTPL_CleanUp_vehTimer = 600; // x seconds until delete of dead vehicles, for destroyed and heavy damaged vehicles.
qipTPL_CleanUp_abaTimer = 6000; // x seconds a vehicle must be unmanned to be deleted, for _abandoned option.
