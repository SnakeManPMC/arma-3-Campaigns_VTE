
[
	west,
	[
		"t1"
	],
	[
		"Clear objective 1",
		"Clear <marker name='target1'>objective 1</marker>.",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t2"
	],
	[
		"Clear objective 2",
		"Clear <marker name='target2'>objective 2</marker>.",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

// getMarkerPos "target1"
// getMarkerPos "target2"
["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
