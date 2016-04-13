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

class debugTPL {
	title = "Template Debug";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 0;
};

class Caching {
	title = "Einheiten caching";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 0;
};

class Cleanup {
	title = "Aufräumen Script";
	values[] = {0,1};
	texts[] = {"Aus","An"};
	default = 0;
};

class ace_medical_level { //This needs to match an ace_setting, this one is a "SCALAR"(number)
	title = "$STR_ACE_Medical_MedicalSettings_level_DisplayName"; // Name that is shown
	ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
	values[] = {1, 2}; //Values that ace_medical_level can be set to
	texts[] =  {"Basic", "Advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
	default = 2; //Default value used - Value should be in the values[] list
};
