if (isServer) then {
	qipTPL_enabled = ["qipTPL"] call qipTPL_fnc_paramToBool;
	publicVariable "qipTPL_enabled";
};

[] spawn {
	sleep 0.2;
	[] call qipTPL_fnc_preInit;
	[] call qipTPL_fnc_initZeus;
};
