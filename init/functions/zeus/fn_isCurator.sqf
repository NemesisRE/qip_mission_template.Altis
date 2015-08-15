private ["_unit","_result","_curatorVehicles"];
_unit = _this select 0;
_result = false;

{
	_curatorUnit = getAssignedCuratorUnit _x;
	if (_unit == _curatorUnit) exitWith {_result = true;};
} forEach allCurators;

if (!_result) then {
	_curatorVehicles = ["VirtualCurator_F","B_VirtualCurator_F","O_VirtualCurator_F","I_VirtualCurator_F","C_VirtualCurator_F"];
	if ((typeOf(vehicle _unit)) in _curatorVehicles) then {
		_result = true;
	};
};

_result;
