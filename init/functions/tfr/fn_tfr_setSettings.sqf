["Set_Freq", "OnBeforeTangent", {
	switch (side (call TFAR_fnc_currentUnit)) do {
		case "UNKNOWN";
		case "LOGIC";
		case "WEST": {
			[(call TFAR_fnc_activeSwRadio), tf_freq_west] call TFAR_fnc_setSwSettings;
			[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, tf_freq_west_lr] call TFAR_fnc_setLrSettings;
		};
		case "EAST": {
			[(call TFAR_fnc_activeSwRadio), tf_freq_east] call TFAR_fnc_setSwSettings;
			[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, tf_freq_east_lr] call TFAR_fnc_setLrSettings;
		};
		case "GUER": {
			[(call TFAR_fnc_activeSwRadio), tf_freq_guer] call TFAR_fnc_setSwSettings;
			[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, tf_freq_guer_lr] call TFAR_fnc_setLrSettings;
		};
		default {};
	};
}, ObjNull] call TFAR_fnc_addEventHandler;
