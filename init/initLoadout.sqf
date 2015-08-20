
if (!local this) exitWith {};

_unit = _this select 0;
_strLoadout = _this select 1;

removeAllWeapons _unit;
removeAllAssignedItems  _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;

_setLoadout = [_unit,_strLoadout] execVM "config/loadout.sqf";

waitUntil {scriptDone _setLoadout};

if (mod_ACE3) then { // ACE3 items added by default
    //_defaultItems = ["ACE_EarPlugs","ACE_CableTie","ace_mapTools","ACE_IR_Strobe_Item"];
    _defaultItems = ["ACE_EarPlugs"];
    {
        _unit removeItems _x;
        _unit addItemToVest _x;
    } forEach _defaultItems;
};
