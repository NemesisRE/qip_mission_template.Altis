/*
    Hier legt ihr das gear fest das ihr in der Name zeile mit der case anweisung ausfüllt + einem unterstrich mit einer
	einzigartigen zahl für das jeweilige Gear.
    sani-soldat-fleck_1

    Zu beachten ist das das exportierte Arsenal mit "this" ausgeben wird und ihr dieses aber durch "_unit" ersetzen müsst

    Jedes Loadout hat seinen eignen Namen den Ihr frei wählen dürft (alles klein und keine unterstriche) dieser steht nach
	dem "case" befehl und in der Name Zeile (Name + _{1..n}) des Spielers, wie oben zu sehen.

*/

_unit = _this select 0;
_strLoadout = _this select 1;

switch (_strLoadout) do {
	case "sanitäter - soldat": {
		removeAllWeapons _unit;
		removeAllAssignedItems  _unit;
		removebackpack _unit;
		removeGoggles _unit;
		removeHeadgear _unit;
        comment "Add containers";
        _unit forceAddUniform "BWA3_Uniform_idz_Fleck";
        _unit addItemToUniform "ACE_MapTools";
        _unit addItemToUniform "ACE_IR_Strobe_Item";
        _unit addItemToUniform "ACE_EarPlugs";
        _unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";
        for "_i" from 1 to 4 do {_unit addItemToUniform "SmokeShell";};
        for "_i" from 1 to 4 do {_unit addItemToUniform "Chemlight_blue";};
        _unit addVest "BWA3_Vest_Medic_Fleck";
        for "_i" from 1 to 6 do {_unit addItemToVest "SmokeShell";};
        for "_i" from 1 to 6 do {_unit addItemToVest "Chemlight_blue";};
        for "_i" from 1 to 8 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
        _unit addBackpack "BWA3_Kitbag_Fleck_Medic";
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_packingBandage";};
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_elasticBandage";};
        for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
        for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV";};
        _unit addItemToBackpack "ACE_personalAidKit";
        _unit addItemToBackpack "ACE_surgicalKit";
        _unit addHeadgear "BWA3_OpsCore_Fleck_Camera";

        comment "Add weapons";
        _unit addWeapon "BWA3_G36K";
        _unit addPrimaryWeaponItem "BWA3_acc_VarioRay_flash";
        _unit addPrimaryWeaponItem "BWA3_optic_EOTech_Mag_Off";
        _unit addWeapon "ACE_Vector";

        comment "Add items";
        _unit linkItem "ItemMap";
        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";
        _unit linkItem "BWA3_ItemNaviPad";
        _unit linkItem "rhsusf_ANPVS_15";
    };
    case "sanitäter - dm": {
		removeAllWeapons _unit;
		removeAllAssignedItems  _unit;
		removebackpack _unit;
		removeGoggles _unit;
		removeHeadgear _unit;
        comment "Add containers";
        _unit forceAddUniform "BWA3_Uniform_idz_Fleck";
        _unit addItemToUniform "ACE_MapTools";
        _unit addItemToUniform "ACE_EarPlugs";
        _unit addItemToUniform "ACE_IR_Strobe_Item";
        _unit addItemToUniform "BWA3_20Rnd_762x51_G28_AP";
        for "_i" from 1 to 4 do {_unit addItemToUniform "Chemlight_blue";};
        for "_i" from 1 to 4 do {_unit addItemToUniform "SmokeShell";};
        _unit addVest "BWA3_Vest_Medic_Fleck";
        for "_i" from 1 to 6 do {_unit addItemToVest "BWA3_20Rnd_762x51_G28_AP";};
        _unit addBackpack "BWA3_Kitbag_Fleck_Medic";
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_packingBandage";};
        for "_i" from 1 to 41 do {_unit addItemToBackpack "ACE_elasticBandage";};
        for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
        for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV";};
        _unit addItemToBackpack "ACE_personalAidKit";
        _unit addItemToBackpack "ACE_surgicalKit";
        _unit addHeadgear "BWA3_OpsCore_Fleck_Camera";

        comment "Add weapons";
        _unit addWeapon "BWA3_G27";
        _unit addPrimaryWeaponItem "BWA3_muzzle_snds_G28";
        _unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
        _unit addPrimaryWeaponItem "BWA3_optic_20x50";
        _unit addWeapon "ACE_Vector";

        comment "Add items";
        _unit linkItem "ItemMap";
        _unit linkItem "ItemCompass";
        _unit linkItem "BWA3_ItemNaviPad";
        _unit linkItem "rhsusf_ANPVS_15";
    };
};
