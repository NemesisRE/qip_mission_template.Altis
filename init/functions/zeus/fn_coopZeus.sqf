[] spawn {
	while {true} do {
		private ["_EditableObjectBlacklist","_filteredList","_fullList","_objectsToAdd"];
		_EditableObjectBlacklist = [
			"Ares_Module_Util_Create_Composition",
			"ModuleCurator_F",
			"GroundWeaponHolder",
			"Salema_F",
			"Ornate_random_F",
			"Mackerel_F",
			"Tuna_F",
			"Mullet_F",
			"CatShark_F",
			"Rabbit_F",
			"Snake_random_F",
			"Turtle_F",
			"Hen_random_F",
			"Cock_random_F",
			"Cock_white_F",
			"Sheep_random_F"
		];

		_fullList = [];
		_fullList = _fullList + allUnits;
		_fullList = _fullList + vehicles;
		_fullList = _fullList + switchableUnits;
		_fullList = _fullList + playableUnits;
		_fullList = _fullList + allDead;
		_fullList = _fullList + allUnitsUav;
		_fullList = _fullList + allPlayers;

		_filteredList = [];
		{
			if (not ((typeOf _x) in _EditableObjectBlacklist)) then
			{
				_filteredList pushBack _x;
			};
		} forEach _fullList;

		_objectsToAdd = _filteredList;

		[_objectsToAdd,true] call qipTPL_fnc_AddUnitsToCurator;
		sleep 10;
	};
};
