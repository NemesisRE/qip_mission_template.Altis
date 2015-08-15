// Init Feld vom Koffer
// actionKoffer = this addaction ["Koffer nehmen","3rdPartyScripts\koffer.sqf",[0],1,false,true,"",""]

taken = _this select 3;
take = taken select 0;

switch (take) do {
	case 0: {
		Koffer = _this select 0;
		_man = _this select 1;
		Koffer attachto [_man, [0.035,-.055,-0.22], "LeftHandMiddle1"];
		Koffer setdir 90;
		Koffer removeAction actionKoffer;
		actionKoffer = _man addaction ["Koffer abstellen","3rdPartyScripts\koffer.sqf",[1]];
		_man addEventHandler ["killed", "detach Koffer;_man removeeventHandler [""killed"",0]"];
	};

	case 1: {
		_man = _this select 0;
		detach Koffer;
		Koffer setvelocity[0,0,-.3];
		_man removeAction actionKoffer;
		actionKoffer = Koffer addaction ["Koffer nehmen","3rdPartyScripts\koffer.sqf",[0]];
		_man removeeventHandler ["killed",0];
	};
};
