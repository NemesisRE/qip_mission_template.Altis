// F3 - TFR Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Set the Teamspeak channel name
tf_radio_channel_name = "Mission";
// Whether long range radios are automatically added
tf_no_auto_long_range_radio = true;
// Should a side use the same short-wave frequencies
tf_same_sw_frequencies_for_side = true;
// Should a side use the same long-wave frequencies
tf_same_lr_frequencies_for_side = true;
// Give every Soldier a Microdagr to set the Freq on the 2K radios
TF_give_microdagr_to_soldier = false;
// Give all Soldiers a 5K radio
TF_give_personal_radio_to_regular_soldier = true;
// A coefficient defining the level of radio signal interruption caused by terrain.
TF_terrain_interception_coefficient = 7.0;
// Default Backpack Radios
TF_defaultWestBackpack = "tf_rt1523g_big";
TF_defaultEastBackpack = "tf_anprc155";
TF_defaultGuerBackpack = "tf_mr3000";

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_tfr_disableRadios = false;
// Independent radio encryption code: Independent faction use radio code of side
// they are friendly to if they are only friendly to one side.
f_radios_settings_tfr_indepUseRadioCode = true;
// Set radio frequencies
tf_freq_west =    [0,7,["310","320","330","340","350","360","370","30.6"],0,nil,7,0];   // TF_FREQ_SIDE [Active Channel (0-8), Volume (0-9), [8 Frequenzies for SW and 9 for LR], Stereo Mode (0=both;1=left,2=right), Encryption Key, Additional Channel, ADCH Stero Mode, Owner, Speaker mode (bool)]
tf_freq_west_lr = [0,7,["84.4","31","32","33","34","35","36","37","30,6"],0,nil,8,0];	// TF_FREQ_SIDE_LR [Active Channel (0-9), Volume (0-9), [8 Frequenzies for SW and 9 for LR], Stereo Mode (0=both;1=left,2=right), Encryption Key, Additional Channel, ADCH Stero Mode, Speaker mode (bool)]
tf_freq_east =    [0,7,["410","420","430","440","450","460","470","40.6"],0,nil,7,0];
tf_freq_east_lr = [0,7,["74.4","41","42","43","44","45","46","47","40.6"],0,nil,8,0];
tf_freq_guer =    [0,7,["510","520","530","540","550","560","570","50.6"],0,nil,7,0];
tf_freq_guer_lr = [0,7,["64.4","51","52","53","54","55","56","57","50.6"],0,nil,8,0];
