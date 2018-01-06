/*

	Sends editor placed and named group on their way.

Syntax:
[groupName] execVM "PMC\PMC_Send_Editor_Groups.sqf";

Requires:
PMC\PMC_killed.sqf
PMC\PMC_groupRecycle.sqf
PMC\PMC_targets.sqf ran for PMC_targets array.

*/
private
[
	"_grp",
	"_targetNum",
	"_targetpoint",
	"_waypointRanPosit"
];

_grp = _this select 0;
_targetNum = count PMC_targets;
_targetpoint = getPosASL (PMC_targets select (floor random _targetNum));
_waypointRanPosit = 100;

_grp setBehaviour "AWARE";
_grp setCombatMode "RED";
_grp setSpeedMode "FULL";
_grp setFormation "WEDGE";
_grp addWaypoint [_targetpoint, _waypointRanPosit];
[_grp, 1] setWaypointBehaviour "AWARE";
[_grp, 1] setWaypointCombatMode "RED";
[_grp, 1] setWaypointSpeed "FULL";
[_grp, 1] setWaypointFormation "WEDGE";
[_grp, 1] setWaypointType "GUARD";
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units _grp;
[_grp] execVM "PMC\PMC_groupRecycle.sqf";
