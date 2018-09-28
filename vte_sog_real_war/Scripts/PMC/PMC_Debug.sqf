
hintSilent format
[
	"Objectives met true/false:\n\nPMC_Objective_0: %1\nPMC_Objective_1: %2\nPMC_Objective_2: %3\nPMC_Objective_3: %4\nPMC_Objective_4: %5\n\nallUnits: %6, BLUFOR %7, OPFOR %8\nPMC_cu: %9",
	PMC_Objective_0,
	PMC_Objective_1,
	PMC_Objective_2,
	PMC_Objective_3,
	PMC_Objective_4,
	(count allUnits),
	(WEST countSide allUnits),
	(EAST countSide allUnits),
	PMC_cu
];
