/*

Creates marker and three side triggers for every gamelogic; blufor, opfor and guer.

When activated they launch PMC\PMC_Obj_TriggerActivated.sqf with marker name

[_triggerArea, _triggerTimeout] execVM "PMC\PMC_objectivesALL.sqf";

*/

private
[
	"_a",
	"_color",
	"_m",
	"_markerobj",
	"_PMC_t",
	"_targetpoint",
	"_tlogic",
	"_triggerArea",
	"_triggerTimeout",
	"_z",
	"_PMC_CreateTriggers"
];

_PMC_CreateTriggers =
{
	_a = _this select 0;
	_targetpoint = _this select 1;
	_triggerArea = _this select 2;
	_triggerTimeout = _this select 3;

	_m = format ["PMC_Objective_%1", _a];
	_markerobj = createMarker [_m, _targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorBlack"; // or "ColorWhite"
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [_triggerArea, _triggerArea];

	[west, [_m], ["Capture this objective.", _m, _markerobj], _targetpoint, 1, 2, true] call BIS_fnc_taskCreate;

	private _pmcCond = "this and 'Land' counttype thisList > 0";
	// BLUFOR
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["WEST SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements [_pmcCond, format ["0 = ['PMC_Objective_%1', 'blufor'] execVM 'PMC\PMC_Obj_TriggerActivated.sqf';",_a], ""];

	// OPFOR
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["EAST SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements [_pmcCond, format ["0 = ['PMC_Objective_%1', 'opfor'] execVM 'PMC\PMC_Obj_TriggerActivated.sqf';",_a], ""];

	// Guerrilla
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["GUER SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements [_pmcCond, format ["0 = ['PMC_Objective_%1', 'guer'] execVM 'PMC\PMC_Obj_TriggerActivated.sqf';",_a], ""];
};

// create objectives
_PMC_t = [];
_PMC_t = PMC_targets;
_a = 0;
_triggerArea = _this select 0;
_triggerTimeout = _this select 1;

while { _a < (count PMC_targets) } do
{
	_tlogic = (_PMC_t select _a);
	_targetpoint = getPosASL _tlogic;

	[_a, _targetpoint, _triggerArea, _triggerTimeout] call _PMC_CreateTriggers;

	if (pmc_debug) then
	{
		diag_log format["_a: %1, _targetpoint: %2", _a, _targetpoint];
		player sidechat format["_a: %1, _targetpoint: %2", _a, _targetpoint];
	};

	_a = _a + 1;
};

if (pmc_debug) then { diag_log format["PMC_objectivesALL created: %1 objectives.", _a]; };
