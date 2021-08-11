/*

Completes or assigns a task and sets marker color with size according to side who completed current objective.

[market_name, side] execVM "PMC\PMC_Obj_TriggerActivated.sqf";

*/

private _objnum = _this select 0;
private _side = _this select 1;

if (pmc_debug) then { player sidechat format["PMC_Obj_TriggerActivated; %1, _objnum: %2, _side: %3", time, _objnum, _side]; };

if (_side == "blufor") then
{
	_objnum setMarkerColorLocal "colorblue";
	_objnum setMarkerSize [50, 50];
	private _tsk1 = [_objnum, true, [_objnum, _objnum, "Good job objective captured!"], nil, "SUCCEEDED", 0, true, true, "", false] call BIS_fnc_setTask;

	// set global variable to true
	call compile format ["%1 = true;", _objnum];
	if (pmc_debug) then
	{
		private _pmcStr = format["PMC_Obj_TriggerActivated; BLUFOR set global variable to: %1", format["%1", _objnum] ];
		diag_log _pmcStr;
		player sidechat _pmcStr;
	};
};

if (_side == "opfor") then
{
	_objnum setMarkerColorLocal "colorred";
	_objnum setMarkerSize [200, 200];
	private _tsk1 = [_objnum, true, [_objnum, _objnum, "Gooks are holding this objective, get there and kill them all!"], nil, "ASSIGNED", 0, true, true, "", false] call BIS_fnc_setTask;

	// set global variable to false
	call compile format ["%1 = false;", _objnum];
	if (pmc_debug) then
	{
		private _pmcStr = format["PMC_Obj_TriggerActivated; OPFOR set global variable to: %1", format["%1", _objnum] ]; 
		diag_log _pmcStr;
		player sidechat _pmcStr;
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
		private _pmcStr = format["PMC_Obj_TriggerActivated; GUER set global variable to: %1", format["%1", _objnum] ]; 
		diag_log _pmcStr;
		player sidechat _pmcStr;
	};
};
