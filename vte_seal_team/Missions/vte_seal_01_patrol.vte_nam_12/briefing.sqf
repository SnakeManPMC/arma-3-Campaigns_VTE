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
				"You <marker name='start'>start</marker> in base. Helo <marker name='insert'>insert LZ</marker> to field. Patrol the <marker name='target1'>target1</marker> area. Then helo <marker name='extract'>extract LZ</marker> back to base."
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"TACTICAL",
				"You <marker name='start'>start</marker> in base. Your helo transport will fly you to the <marker name='insert'>insert LZ</marker> which is about 500m to your objective. Proceed and patrol the <marker name='target1'>target1</marker> area to look for any enemy activity. When done, proceed to the <marker name='extract'>extract LZ</marker> location, call the helo and fly back to the base."
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

		PMC_objective1 = player createSimpleTask ["Patrol"];
		PMC_objective1 setSimpleTaskDescription ["Patrol <marker name='target1'>marked area</marker>.", "Patrol marked area", "Patrol marked area and engage all encountered enemies."];
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

//<p><a name = "OBJ_1'></marker>Patrol target 1
