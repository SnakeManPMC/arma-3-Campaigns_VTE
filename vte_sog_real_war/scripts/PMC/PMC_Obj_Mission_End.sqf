
// mission ending trigger, checks that all objectives have been captured

[
	west,
	["t1"],
	[
		"You must capture and hold all objectives to finish your mission. Do not let any gooks get into the objectives!",
		"Capture All Objectives",
		""
	],
	[],
	1,
	2,
	true
] call BIS_fnc_taskCreate;

// waiting period for mission start, not sure if this is needed but also its nice to activate the final mission objective after game start? yes no I dont know
sleep 30;

// loop until all objectives are met
while { !(PMC_Objective_0 && PMC_Objective_1 && PMC_Objective_2 && PMC_Objective_3 && PMC_Objective_4) } do
{
	sleep 20;
};

hint "Objectives are met! Mission accomplished!";
player sidechat "Yeah baby! Objectives are met!";

sleep 4;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 4;

// end mission!
[] execVM "PMC\PMC_SaveStatus.sqf";
sleep 10;

"pmc_end1" call BIS_fnc_endMission;
