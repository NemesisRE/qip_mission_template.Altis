private ["_EditableObjectBlacklist","_filteredList","_objectsToAdd","_curator","_curatorVehicle"];

[] spawn {
	[] call qipTPL_fnc_waitForZeus;

	{
		_curator = _x;
		_curatorVehicle = getAssignedCuratorUnit _curator;

		_curator addCuratorPoints 1;
		_curator setCuratorWaypointCost 0;
		[_curator,"player",["Skill","UnitPos","Rank","Damage","Fuel","Lock","RespawnVehicle","RespawnPosition","Exec"]] call BIS_fnc_setCuratorAttributes;
		_curatorVehicle setVariable ["ace_medical_allowDamage", false];

		{
			_curator setCuratorCoef [_x,0];
		} forEach ["place","edit","delete","destroy","group","synchronize"];

	} forEach allCurators;

	[] call qipTPL_fnc_coopZeus;
};
