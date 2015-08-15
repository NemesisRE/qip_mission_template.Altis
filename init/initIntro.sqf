if (qipTPL_init && !isDedicated && !isCurator && !missionInit && !ADF_isHC) then {
	_introTime = time;
	_MissionIntroImage = getText (missionConfigFile >> "loadScreen");
	_MissionDesc = getText (missionConfigFile >> "onLoadMission");
	[_introTime,qipTPL_clanLogo,qipTPL_clanName] spawn {
		if (!qipTPL_uavIntro) then {
			_l = ["tLayer"] call BIS_fnc_rscLayer;
			_l cutText ["", "BLACK IN", (qipTPL_missionInitTime + 10)];
		};
		waitUntil {time > ((_this select 0) + (qipTPL_missionInitTime - 10))};
		["<img size= '9' shadow='false' image='" + (_this select 1) + "'/><br/><br/><t size='.7' color='#FFFFFF'>Mission presented by " + (_this select 2) + "</t>",0,0,3,12] spawn BIS_fnc_dynamicText;
	};
};
