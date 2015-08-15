// If script is being run on the server
if(isDedicated) then {
	[] execVM "init\tfr\tfr_serverInit.sqf";
} else {
	[] execVM "init\tfr\tfr_clientInit.sqf";
	//If locally hosting, run both client and server script
	if((!isDedicated) && (isServer)) then {[] execVM "init\tfr\tfr_serverInit.sqf";};
};
