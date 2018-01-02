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
				"You <marker name='start'>start</marker> in base. Snatch the <marker name='target1'>target1</marker> objective."
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

		PMC_objective1 = player createSimpleTask ["Snatch"];
		PMC_objective1 setSimpleTaskDescription ["Snatch <marker name='target1'>target</marker>.", "Snatch target", "Snatch target."];
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
//<p><a name = "OBJ_1'></marker>Snatch target 1
