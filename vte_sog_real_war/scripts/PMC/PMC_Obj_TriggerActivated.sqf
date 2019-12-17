/*

Completes or assigns a task and sets marker color with size according to side who completed current objective.

[market_name, side] execVM "PMC\PMC_Obj_TriggerActivated.sqf";

*/

private
[
	"_objnum",
	"_side"
];

_objnum = _this select 0;
_side = _this select 1;

if (pmc_debug) then { player sidechat format["_objnum: %1, _side: %2", _objnum, _side]; };

if (_side == "blufor") then
{
	_objnum setMarkerColorLocal "colorblue";
	_objnum setMarkerSize [50, 50];
	_tsk1 = [_objnum, true, [_objnum, _objnum, "Good job objective captured!"], nil, "SUCCEEDED", 0, true, true, "", false] call BIS_fnc_setTask;

	// set global variable to true
	call compile format ["%1 = true;", _objnum];
	if (pmc_debug) then
	{
		diag_log format["PMC_Obj_TriggerActivated; blufor set global variable to: %1", format["%1", _objnum] ];
		player sidechat format["blufor set global variable to: %1", format["%1", _objnum] ];
	};
};

if (_side == "opfor") then
{
	_objnum setMarkerColorLocal "colorred";
	_objnum setMarkerSize [200, 200];
	_tsk1 = [_objnum, true, [_objnum, _objnum, "Gooks are holding this objective, get there and kill them all!"], nil, "ASSIGNED", 0, true, true, "", false] call BIS_fnc_setTask;

	// set global variable to false
	call compile format ["%1 = false;", _objnum];
	if (pmc_debug) then
	{
		diag_log format["PMC_Obj_TriggerActivated; opfor set global variable to: %1", format["%1", _objnum] ];
		player sidechat format["opfor set global variable to: %1", format["%1", _objnum] ];
	};
};

if (_side == "guer") then
{
	_objnum setMarkerColorLocal "colorgreen";
	_objnum setMarkerSize [200, 200];
	_tsk1 = [_objnum, true, [_objnum, _objnum, "Guerrillas have taken this objective, do something!"], nil, "ASSIGNED", 0, true, true, "", false] call BIS_fnc_setTask;

	// set global variable to false
	call compile format ["%1 = false;", _objnum];
	if (pmc_debug) then
	{
		diag_log format["PMC_Obj_TriggerActivated; guer set global variable to: %1", format["%1", _objnum] ];
		player sidechat format["guer set global variable to: %1", format["%1", _objnum] ];
	};
};
