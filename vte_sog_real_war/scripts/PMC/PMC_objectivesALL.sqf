/*

Creates marker and three side triggers for every gamelogic; blufor, opfor and guer.

When activated they launch PMC\PMC_Obj_TriggerActivated.sqf with marker name

[_triggerArea, _triggerTimeout] execVM "PMC\PMC_objectivesALL.sqf";

*/

private
[
	"_a",
	"_m",
	"_markerobj",
	"_PMC_t",
	"_targetpoint",
	"_tlogic",
	"_triggerArea",
	"_triggerTimeout",
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
	_markerobj setMarkerColor "ColorBlack";
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [_triggerArea, _triggerArea];

	private _taskDescription = format["Capture <marker name='%1'>%2</marker> objective.", _markerobj, _m];
	[west, [_m], [_taskDescription, _m, _markerobj], _targetpoint, 1, 2, true] call BIS_fnc_taskCreate;

	private _pmcCond = "this and 'Land' counttype thisList > 0";

	// launch objective / task monitoring code
	[_m, _markerobj] spawn
	{
		// PMC_Objective1 etc string
		private _m = _this select 0;
		// marker object ;)
		private _markerobj = _this select 1;
		
		private _bluforPresent = false;
		private _opforPresent = false;

		// wait for random time so we dont spam many of these monitor scripts at the same second
		sleep (2 + random 5);

		while {true} do
		{
			sleep 10;

			// BLUFOR
			if (!_bluforPresent && count (units west inAreaArray _markerobj) > 0 && count (units east inAreaArray _markerobj) == 0) then
			{
				_bluforPresent = true;
				_opforPresent = false;
				[_m, "blufor"] execVM "PMC\PMC_Obj_TriggerActivated.sqf";
			};

			// OPFOR
			if (!_opforPresent && count (units east inAreaArray _markerobj) > 0 && count (units west inAreaArray _markerobj) == 0) then
			{
				_bluforPresent = false;
				_opforPresent = true;
				[_m, "opfor"] execVM "PMC\PMC_Obj_TriggerActivated.sqf";
			};
		};

	};
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
		diag_log format["PMC_objectivesALL; _a: %1, _targetpoint: %2", _a, _targetpoint];
		player sidechat format["_a: %1, _targetpoint: %2", _a, _targetpoint];
	};

	_a = _a + 1;
};

if (pmc_debug) then { diag_log format["PMC_objectivesALL; created: %1 objectives.", _a]; };
