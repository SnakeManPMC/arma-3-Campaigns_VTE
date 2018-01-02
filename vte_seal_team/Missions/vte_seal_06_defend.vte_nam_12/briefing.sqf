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
				"You <marker name='start'>start</marker> in base. Defend the <marker name='target1'>target1</marker> location."
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

		PMC_objective1 = player createSimpleTask ["Defend"];
		PMC_objective1 setSimpleTaskDescription ["Defend <marker name='target1'>target</marker>.", "Defend target", "Defend target."];
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
//<p><a name = "OBJ_1'></marker>Defend target 1
