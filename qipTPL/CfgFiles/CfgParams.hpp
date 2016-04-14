class ace_medical_level {
	title = "$STR_ACE_Medical_MedicalSettings_level_DisplayName";
	ACE_setting = 1;
	values[] = {1, 2};
	texts[] =  {"Basic", "Advanced"};
	default = 2;
};

class ace_medical_useLocation_PAK {
	title = "$STR_ACE_Medical_AdvancedMedicalSettings_useCondition_PAK_Description";
	ACE_setting = 1;
	values[] = {1, 2, 3, 4, 5};
	texts[] =  {"$STR_ACE_Medical_AdvancedMedicalSettings_anywhere", "$STR_ACE_Medical_AdvancedMedicalSettings_vehicle", "$STR_ACE_Medical_AdvancedMedicalSettings_facility", "$STR_ACE_Medical_AdvancedMedicalSettings_vehicleAndFacility", "$STR_ACE_Common_Disabled"};
	default = 1;
};

class qipTPL {
	title = "qip Template nutzen";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 1;
};

class initTPL {
	title = "Initialsierung (Nur zum Bauen abschalten)";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 1;
};

class uavIntro {
	title = "UAV Intro Sequenze";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 1;
};
