private ["_ADF_log_pre","_ADF_msg","_ADF_err_write","_ADF_err_pre","_ADF_error"];
_ADF_msg = _this select 0;
_ADF_error = _this select 1;
if (_ADF_error) then { // Is it an error message?
	_ADF_err_pre = "ADF Error: ";
	_ADF_err_write = _ADF_err_pre + _ADF_msg;
	[_ADF_err_write] call BIS_fnc_error;
	diag_log _ADF_err_write;
} else { // Is it a debug log message?
	_ADF_log_pre = "ADF Debug: ";
	ADF_log_write = _ADF_log_pre + _ADF_msg;
	diag_log ADF_log_write;
	[ADF_log_write,"systemChat"] call BIS_fnc_MP; // v.39 B6
};
