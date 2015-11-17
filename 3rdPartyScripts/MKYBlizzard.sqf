enableEnvironment false;

if (isNil "objEmitterHost") then {
	MKYBlizzard = true;
	0 = [] spawn {
		objEmitterHost = "Land_Bucket_F" createVehicleLocal (position player);
		objEmitterHost attachTo [player,[0,0,0]];
		objEmitterHost hideObject true;
		objEmitterHost allowDamage false;
		objEmitterHost enableSimulation false;
		while {MKYBlizzard} do {
			sleep 0.25;
			objEmitterHost setDir ((360 - (getDir player)) + 45);
		};
	};

	0 = [] spawn {
		while {MKYBlizzard} do {
			sleep 5;
			// periodically update wind/rain
			setWind [-5,-5,true];
			0 setRain 0;
		};
	};

	0 = [] spawn {
		20 setFog [0.23,0.047,((getPosASL player) select 2) + 15];
		sleep 20;
		while {MKYBlizzard} do {
			25 setFog [0.23,0.047,((getPosASL player) select 2) + ([15,60] call BIS_fnc_randomInt)];
			sleep 30;
		};
	};

	0 = [] spawn {
		playSound "MKY_Blizzard";
		_cnt = 0;
		while {MKYBlizzard} do  {
			_cnt = _cnt + 1;
			if (_cnt >= 205) then {
				playSound "MKY_Blizzard";
				_cnt = 0;
			};
			sleep 1;
		};
	};
	waitUntil {sleep 1;!(isNil "objEmitterHost")};

	// set effects
	skipTime -24;
	86400 setOvercast 0.75;
	skipTime 24;
	0 = [] spawn {
		sleep 0.1;
		simulWeatherSync;
		0 setRain 0;
	};

	setWind [-5,-5,true];
	effsnow = ppEffectCreate ["colorCorrections", 1501];
	effsnow ppEffectEnable true;
	effsnow ppEffectAdjust [1,1.0,0.0,[.55,.55,.52,.2],[.88,.88,.93,.75],[1,.1,.4,0.03]];
	effsnow ppEffectCommit 60;

	// ensure particles are attached to player after death
	nul = player addEventHandler ["Respawn",{if !(isNil "objEmitterHost") then {objEmitterHost attachTo [player,[0,0,0]];};}];

	// create the most awesomest particle effects ever haha..
	snow_heavy = "#particleSource" createVehicleLocal (position objEmitterHost);
	snow_heavy setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,6,0],"","Billboard",1,8,[0,30,8],[0,0,0],(0),1.59,1,1.5,[3],[[1,1,1,.15],[1,1,1,0.25]],[1000],0, 0,"","",objEmitterHost];
	snow_heavy setParticleCircle [0,[0,0,0]];
	snow_heavy setParticleRandom [0, [30,0, 8], [0, 0, 0], 0, .5, [0,0,0,0.03], 0, 0];
	snow_heavy setDropInterval 0.001;
	sleep 2;

	snow_heavy2 = "#particleSource" createVehicleLocal (position objEmitterHost);
	snow_heavy2 setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,6,0],"","Billboard",1,5,[0,15,8],[0,0,0],(0),1.59,1,1.5,[3],[[1,1,1,.15],[1,1,1,0.15]],[1000],0, 0,"","",objEmitterHost];
	snow_heavy2 setParticleCircle [0,[0,0,0]];
	snow_heavy2 setParticleRandom [0, [15,0,8], [0, 0, 0], 0, .5, [0,0,0,0.03], 0, 0];
	snow_heavy2 setDropInterval 0.001;
	sleep 3;

	snow_heavy3 = "#particleSource" createVehicleLocal (position objEmitterHost);
	snow_heavy3 setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,6,0],"","Billboard",1,5,[0,-5,6],[0,0,0],(0),1.59,1,1.5,[3],[[1,1,1,0],[1,1,1,0.15]],[1000],0, 0,"","",objEmitterHost];
	snow_heavy3 setParticleCircle [0,[0,0,0]];
	snow_heavy3 setParticleRandom [0, [15,0, 6], [0, 0, 0], 0, .5, [0,0,0,0.03], 0, 0];
	snow_heavy3 setDropInterval 0.002;
	sleep 4;

	snow_heavy4 = "#particleSource" createVehicleLocal (position objEmitterHost);
	snow_heavy4 setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,6,0],"","Billboard",1,5,[15,0,6],[0,0,0],(0),1.59,1,1.5,[3],[[1,1,1,0],[1,1,1,0.25]],[1000],0, 0,"","",objEmitterHost];
	snow_heavy4 setParticleCircle [0,[0,0,0]];
	snow_heavy4 setParticleRandom [0, [15,15, 4], [0, 0, 0], 0, .5, [0,0,0,0.03], 0, 0];
	snow_heavy4 setDropInterval 0.003;
	sleep 5;

	snow_heavy5 = "#particleSource" createVehicleLocal (position objEmitterHost);
	snow_heavy5 setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,6,0],"","Billboard",1,5,[-15,0,6],[0,0,0],(0),1.59,1,1.5,[3],[[1,1,1,0],[1,1,1,0.25]],[1000],0, 0,"","",objEmitterHost];
	snow_heavy5 setParticleCircle [0,[0,0,0]];
	snow_heavy5 setParticleRandom [0, [15,15, 4], [0, 0, 0], 0, .5, [0,0,0,0.03], 0, 0];
	snow_heavy5 setDropInterval 0.003;

	sleep 3;
} else {
	MKYBlizzard = false;
	sleep 5;
	deleteVehicle objEmitterHost;
	objEmitterHost = nil;
	20 setFog [0.23,0.047,((getPosASL player) select 2) + 15];
};
