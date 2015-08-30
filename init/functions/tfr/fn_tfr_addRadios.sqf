// F3 - Add TFR Radios Function
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES

private["_unit","_radio1","_radio2","_backpackItems"];

_unit = player;

// DEFINE THE RADIOS THAT WILL BE USED
switch ((side player)) do { //longrange, shortrange, rifradio
	case (west): {
		_radio1 = TF_defaultWestBackpack;
		_radio2 = TF_defaultWestPersonalRadio;
	};
	case (east): {
		_radio1 = TF_defaultEastBackpack;
		_radio2 = TF_defaultEastPersonalRadio;
	};
	default {
		_radio1 = TF_defaultGuerBackpack;
		_radio2 = TF_defaultGuerPersonalRadio;
	};
};

// If radios are enabled in the settings
if(!f_radios_settings_tfr_disableRadios) then {
	// Give out respective radios
	_unit linkItem _radio2;

	if (_unit == (leader (group _unit)) && !tf_no_auto_long_range_radio) then {
		_backpackItems = backpackItems player;
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;} forEach _backpackItems;
	};
};
