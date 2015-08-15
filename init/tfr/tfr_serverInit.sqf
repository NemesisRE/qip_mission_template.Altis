// F3 - TFR Serverside Initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SET INDEP RADIO CODE
// Depending on the setting in tfr_settings.sqf, change INDEP radio code to the faction
// they're friendly to. If friendly to nobody or everybody, use own code.

if(!f_radios_settings_tfr_indepUseRadioCode) then {

	private["_friendWest","_friendEast","_bluefor","_opfor"];

	_friendWest = (resistance getFriend West);
	_friendEast = (resistance getFriend east);
	_bluefor = tf_west_radio_code;
	_opfor = tf_east_radio_code;

	if ((_friendWest > 0.6) && (_friendEast < 0.6)) then {
		tf_guer_radio_code = _bluefor;
	};

	if ((_friendWest < 0.6) && (_friendEast > 0.6)) then {
		tf_guer_radio_code = _opfor;
	};

};

// ====================================================================================
