waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
				"rumour"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"SUPPORT",
				""
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"ORDERS",
				"You <marker name='start'>start</marker> in base. Recover the <marker name='target1'>target1</marker> personnel."
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"TACTICAL",
				""
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"INTEL",
				""
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"GEN SITREP",
				""
			]
		];

		PMC_objective1 = player createSimpleTask ["Recover"];
		PMC_objective1 setSimpleTaskDescription ["Recover <marker name='target1'>target</marker>.", "Recover target", "Recover target."];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
	};

	case CIVILIAN:
	{
	};
};
//<p><a name = "OBJ_1'></marker>Recover target 1
