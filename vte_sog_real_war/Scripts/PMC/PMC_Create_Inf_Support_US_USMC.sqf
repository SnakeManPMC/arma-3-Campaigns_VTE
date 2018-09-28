
private _pos = _this select 0;
private _grp = createGroup west;
waitUntil {!(isNull _grp)};

"VTE_soldierwmedic" createUnit [_pos, _grp, "", 1, "SERGEANT"];
"VTE_soldierwmedic" createUnit [_pos, _grp, "", 1, "CORPORAL"];

[_grp] call PMC_Radio_Callsign_Random;

PMC_cu = PMC_cu + 2;

{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units _grp;

_grp setbehaviour "AWARE";
_grp setcombatmode "YELLOW";
_grp setspeedmode "FULL";
_grp setformation "LINE";

_grp addWaypoint [_pos, 0];
[_grp, 1] setWaypointBehaviour "AWARE";
[_grp, 1] setWaypointCombatMode "GREEN";
[_grp, 1] setWaypointSpeed "FULL";
[_grp, 1] setWaypointFormation "WEDGE";
[_grp, 1] setWaypointType "SUPPORT";
[_grp, 1] setWaypointCompletionRadius 10;
