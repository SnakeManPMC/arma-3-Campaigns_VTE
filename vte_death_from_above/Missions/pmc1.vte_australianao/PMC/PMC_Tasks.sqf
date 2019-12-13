
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='target1'>objective 1</marker>.",
		"Clear objective 1",
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
		"Clear <marker name='target2'>objective 2</marker>.",
		"Clear objective 2",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
// getMarkerPos "target1"
// getMarkerPos "target2"
