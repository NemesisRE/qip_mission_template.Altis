[] spawn {
	while {true} do {
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

		_filteredList = [];
		{
			if (not ((typeOf _x) in _EditableObjectBlacklist)) then
			{
				_filteredList pushBack _x;
			};
		} forEach allMissionObjects "All";
		_objectsToAdd = _filteredList;

		[_objectsToAdd,true] call qipTPL_fnc_AddUnitsToCurator;
		sleep 10;
	};
};
