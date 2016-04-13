/*******************************************************************************
Loadouts die hier definiert sind kann mit dem Klassen namen einer Einheit
zugewiesen werden.

Mit den folgenden vordefinierten Namen können ganze Gruppen von Einheiten festgelegt
werden, zudem werden die Waffen/Uniformen/etc. von Oben nach unten ersetzt. Das bedeutet
legt man in AllPlayers eine Waffe fest dann bekommen alle Spieler unabhängig von ihrer
Seite diese Waffe, legt man nun eine andere Waffe für Blufor fest bekommen alle Blufor
Einheiten und die Blufor Spieler diese Waffe.
1. AllUnits
2. AllAi
3. AllPlayers
4. Side classes ( Blufor, Opfor, Independent and Civilian )
5. Side AI classes ( BluforAi, OpforAi, IndependentAi and CivilianAi )
6. Side player classes ( BluforPlayer, OpforPlayer, IndependentPlayer and CivilianPlayer )
7. Unit classnames

All* sind die Items die Jeder/Jeder NPC/Jeder Spieler bekommt, wenn kein spezielles Loadout
festgelegt ist bzw. dieses nur erweitert wird.
*******************************************************************************/
class AllUnits {
	//linkedItems[] = {};					//| Replaces linked items.
	//uniform = "";							//| Replaces uniform.
	//backpack = "";						//| Replaces backpack.
	//vest = "";							//| Replaces vest.
	//items[] = {};							//| Replaces items (Deletes all existing Items).
	//magazines[] = {};						//| Replaces magazines (Deletes all existing magazines).
	addItems[] =  {"ACE_EarPlugs"};			//| Adds items.
	//addMagazines[] = {};					//| Adds magazines.
	//addItemsToUniform[] = {};				//| Adds items/magazines to the uniform.
	//addItemsToVest[] = {};				//| Adds items/magazines to the vest.
	//addItemsToBackpack[] = {};			//| Adds items/magazines to the backpack.
	//primaryWeapon = "";					//| Replaces primary weapon.
	//secondaryWeapon = "";					//| Replaces secondary weapon.
	//handgunWeapon = "";					//| Replaces handgun.
	//primaryWeaponAttachments[] = {};		//| Replaces attachments of primary weapon.
	//secondaryWeaponAttachments[] = {};	//| Replaces attachments of secondary weapon.
	//handgunWeaponAttachments[] = {};		//| Replaces attachments of handgun.
	//headgear = "";						//| Replaces headgear.
	//goggles = "";							//| Replaces goggles.
	//nvgoggles = "";						//| Replaces nightvision goggles.
	//binoculars = "";						//| Replaces binoculars.
	//map = "";								//| Replaces map.
	//gps = "";								//| Replaces gps.
	//compass = "";							//| Replaces compass.
	//watch = "";							//| Replaces watch.
};

// Alle AI Einheiten
class AllAi {
	addItems[] =  {};
};

// Alle Spieler Einheiten
class AllPlayers {
	addItems[] =  {"ACE_Flashlight_MX991","ACE_CableTie","ACE_CableTie","ACE_IR_Strobe_Item","ACE_MapTools"};
};

/*******************************************************************************
Das Loadout kann im Arsenal des qipTPL Showcase mit STRG + SHIFT + C exportiert werden,
es wird dann hier in eine Klasse (hier: Beispiel) kopiert und kann mit dem Klassennamen
im Editor als Einheiten Name oder Beschreibung verwendet werden. Desweiteren können auch
die Einheiten klassen verwendet werden um das Loudout aller Einheiten dieser Klasse zu
ändern (z.B. B_Medic_F für alle Blufor Medics).
*******************************************************************************/
class Beispiel {
	magazines[] = {};
	items[] = {};
	uniform = "TRYK_U_B_ARO1_CombatUniform";
	vest = "CUP_V_B_RRV_DA1";
	backpack = "B_Kitbag_cbr";
	headgear = "H_HelmetB_light_desert";
	goggles = "G_Tactical_Black";
	primaryWeapon = "srifle_DMR_03_tan_F";
	secondaryweapon = "";
	handgunweapon = "hgun_P07_F";
	addItemsToUniform[] = {"ACE_EarPlugs","ACE_Flashlight_MX991","ACE_CableTie","ACE_CableTie","ACE_IR_Strobe_Item","ACE_surgicalKit","ACE_MapTools","muzzle_snds_B","ACE_microDAGR"};
	addItemsToVest[] = {"SmokeShell","Chemlight_green","Chemlight_green","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","SmokeShell","SmokeShell","SmokeShell","SmokeShell","SmokeShell","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","16Rnd_9x21_Mag"};
	addItemsToBackpack[] = {"ACE_personalAidKit","ACE_surgicalKit","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_elasticBandage","ACE_salineIV"};
	linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","tf_anprc152_22","ItemGPS","ACE_NVG_Gen4"};
	primaryWeaponAttachments[] = {"","CUP_acc_ANPEQ_15","optic_DMS","bipod_01_F_snd"};
	secondaryWeaponAttachments[] = {"","","",""};
	handgunWeaponAttachments[] = {"muzzle_snds_L","","",""};
};
