/*

Mission ending trigger, checks that all objectives have been captured

*/

// waiting period for mission start, not sure if this is needed but also its nice to activate the final mission objective after game start? yes no I dont know
sleep 10;

[
	west,
	["t1"],
	[
		"You must capture and hold all objectives to finish your mission. Do not let any gooks get into the objectives!",
		"Capture All Objectives",
		""],
	"",
	1,
	2,
	true
] call BIS_fnc_taskCreate;

// loop until all objectives are met
while { !(PMC_Objective_0 && PMC_Objective_1 && PMC_Objective_2 && PMC_Objective_3 && PMC_Objective_4) } do
{
	sleep 10;
	if (pmc_debug) then
	{
		hint format["Objectives are not met:\n\nPMC_Objective_0: %1\nPMC_Objective_1: %2\nPMC_Objective_2: %3\nPMC_Objective_3: %4\nPMC_Objective_4: %5", PMC_Objective_0, PMC_Objective_1, PMC_Objective_2, PMC_Objective_3, PMC_Objective_4];
	};
};

hint "Objectives are met! Mission accomplished!";
player sidechat "Yeah baby! Objectives are met!";

// end mission!
sleep 10;
"pmc_end1" call BIS_fnc_endMission;
