// F3 - TFR Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

#include "\task_force_radio\functions\common.sqf";

//if (!(isServer) or !(isDedicated)) exitWith {};

// RADIO STRUCTURE
// Set the Teamspeak channel name
tf_radio_channel_name = "Mission";
publicVariable "tf_radio_channel_name";
// Whether long range radios are automatically added
// DO NOT CHANGE - CHANGE "f_radios_settings_tfr_addLongrange" BELOW
tf_no_auto_long_range_radio = true;
publicVariable "tf_no_auto_long_range_radio";
// Should a side use the same short-wave frequencies
tf_same_sw_frequencies_for_side = true;
publicVariable "tf_same_sw_frequencies_for_side";
// Should a side use the same long-wave frequencies
tf_same_lr_frequencies_for_side = true;
publicVariable "tf_same_lr_frequencies_for_side";
// Give every Soldier a Microdagr to set the Freq on the 2K radios
TF_give_microdagr_to_soldier = false;
publicVariable "tf_give_microdagr_to_soldier";
// Give all Soldiers a 5K radio
TF_give_personal_radio_to_regular_soldier = true;
publicVariable "TF_give_personal_radio_to_regular_soldier";
// A coefficient defining the level of radio signal interruption caused by terrain.
TF_terrain_interception_coefficient = 7.0;
publicVariable "TF_terrain_interception_coefficient";
// Default Backpack Radios
TF_defaultWestBackpack = "tf_rt1523g_big";
publicVariable "TF_defaultWestBackpack";
TF_defaultEastBackpack = "tf_anprc155";
publicVariable "TF_defaultEastBackpack";
TF_defaultGuerBackpack = "tf_mr3000";
publicVariable "TF_defaultGuerBackpack";

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_tfr_disableRadios = false;
publicVariable "f_radios_settings_tfr_disableRadios";
// Independent radio encryption code: Independent faction use radio code of side
// they are friendly to if they are only friendly to one side.
f_radios_settings_tfr_indepUseRadioCode = true;
publicVariable "f_radios_settings_tfr_indepUseRadioCode";
// Add Longrange Radio to Groupleaders
f_radios_settings_tfr_addLongrange = false;
publicVariable "f_radios_settings_tfr_addLongrange";

// Set radio frequencies
// TF_FREQ_SIDE [Active Channel (0-8), Volume (0-9), [8 Frequenzies for SW and 9 for LR], Stereo Mode (0=both;1=left,2=right), Encryption Key, Additional Channel, ADCH Stero Mode, Owner, Speaker mode (bool)]
// TF_FREQ_SIDE_LR [Active Channel (0-9), Volume (0-9), [8 Frequenzies for SW and 9 for LR], Stereo Mode (0=both;1=left,2=right), Encryption Key, Additional Channel, ADCH Stero Mode, Speaker mode (bool)]
tf_freq_west = [0,7,["310","320","330","340","350","360","370","30.6"],0,nil,7,0]; publicVariable "tf_freq_west";
tf_freq_west_lr = [0,7,["84.4","31","32","33","34","35","36","37","30,6"],0,nil,8,0]; publicVariable "tf_freq_west_lr";
tf_freq_east = [0,7,["410","420","430","440","450","460","470","40.6"],0,nil,7,0]; publicVariable "tf_freq_east";
tf_freq_east_lr = [0,7,["74.4","41","42","43","44","45","46","47","40.6"],0,nil,8,0]; publicVariable "tf_freq_east_lr";
tf_freq_guer = [0,7,["510","520","530","540","550","560","570","50.6"],0,nil,7,0]; publicVariable "tf_freq_guer";
tf_freq_guer_lr = [0,7,["64.4","51","52","53","54","55","56","57","50.6"],0,nil,8,0]; publicVariable "tf_freq_guer_lr";

[] spawn {
	[] call qipTPL_fnc_waitForZeus;

	if (!([player] call qipTPL_fnc_isCurator)) exitWith {};
	waitUntil {(call TFAR_fnc_haveSWRadio)};
	{
		_currentSwRadio = _x;
		_currentSwRadioString = (_x splitString "_") select 1;
		switch (true) do {
			case (_currentSwRadioString == "anprc152"): {
				[_currentSwRadio, tf_freq_west] call TFAR_fnc_setSwSettings;
			};
			case (_currentSwRadioString == "fadak"): {
				[_currentSwRadio, tf_freq_east] call TFAR_fnc_setSwSettings;
			};
			case (_currentSwRadioString == "anprc148jem"): {
				[_currentSwRadio, tf_freq_guer] call TFAR_fnc_setSwSettings;
			};
			default {};
		};
	} forEach (player call TFAR_fnc_radiosList);
	waitUntil {(call TFAR_fnc_haveLRRadio)};
	[TF_curator_backpack_1, "TF_curatorBackPack", tf_freq_west_lr] call TFAR_fnc_setLrSettings;
	[TF_curator_backpack_2, "TF_curatorBackPack", tf_freq_east_lr] call TFAR_fnc_setLrSettings;
	[TF_curator_backpack_3, "TF_curatorBackPack", tf_freq_guer_lr] call TFAR_fnc_setLrSettings;
};

// _settingsSwWest = false call TFAR_fnc_generateSwSettings;
// _settingsSwWest set [2,["310","320","330","340","350","360","370","30.6"]];
// _settingsSwWest set [5,7];
// tf_freq_west = _settingsSwWest;
// publicVariable "tf_freq_west";
//
// _settingsLRWest = false call TFAR_fnc_generateLRSettings;
// _settingsLRWest set [2,["84.4","31","32","33","34","35","36","37","30,6"]];
// _settingsLRWest set [5,8];
// tf_freq_west_lr = _settingsLRWest;
// publicVariable "tf_freq_west_lr";
//
// _settingsSwEast = false call TFAR_fnc_generateSwSettings;
// _settingsSwEast set [2,["410","420","430","440","450","460","470","40.6"]];
// _settingsSwEast set [5,7];
// tf_freq_east = _settingsSwEast;
// publicVariable "tf_freq_east";
//
// _settingsLREast = false call TFAR_fnc_generateLRSettings;
// _settingsLREast set [2,["74.4","41","42","43","44","45","46","47","40.6"]];
// _settingsLREast set [5,8];
// tf_freq_east_lr = _settingsLREast;
// publicVariable "tf_freq_east_lr";
//
// _settingsSwGuer = false call TFAR_fnc_generateSwSettings;
// _settingsSwGuer set [2,["510","520","530","540","550","560","570","50.6"]];
// _settingsSwGuer set [5,7];
// tf_freq_Guer = _settingsSwGuer;
// publicVariable "tf_freq_Guer";
//
// _settingsLRGuer = false call TFAR_fnc_generateLRSettings;
// _settingsLRGuer set [2,["64.4","51","52","53","54","55","56","57","50.6"]];
// _settingsLRGuer set [5,8];
// tf_freq_guer_lr = _settingsLRGuer;
// publicVariable "tf_freq_guer_lr";
