diag_log "Init - executing initTPL.sqf"; // Reporting. Do NOT edit/remove

_setLoadout = [] execVM 'init\initLoadout.sqf'; waitUntil {scriptDone _setLoadout};
if (mod_TFAR) then {qipTPL_initRadio = [] execVM 'init\tfr\tfr_init.sqf';};
