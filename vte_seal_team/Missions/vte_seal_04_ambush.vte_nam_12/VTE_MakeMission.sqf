// make the mission location

private [
	"_p","_pos"
];

// enemy waypoint circle size
_p = 200;
_pos = VTE_Objective1;

"target1" setMarkerPosLocal getPosASL VTE_MapCenter;
_pos setPos getPosASL VTE_MapCenter;

{
	_x setPos getPosASL _pos;
} forEach units vcinf1;

[vcinf1,0] setWPPos getPosASL leader vcinf1;
[vcinf1,1] setWPPos [(getPosASL _pos select 0) - _p + ((random _p) * 2), (getPosASL _pos select 1) - _p + ((random _p) * 2)];
[vcinf1,2] setWPPos [(getPosASL _pos select 0) - _p + ((random _p) * 2), (getPosASL _pos select 1) - _p + ((random _p) * 2)];
[vcinf1,3] setWPPos [(getPosASL _pos select 0) - _p + ((random _p) * 2), (getPosASL _pos select 1) - _p + ((random _p) * 2)];
[vcinf1,4] setWPPos [(getPosASL _pos select 0) - _p + ((random _p) * 2), (getPosASL _pos select 1) - _p + ((random _p) * 2)];
[vcinf1,5] setWPPos getPosASL leader vcinf1;

// to place helo waypoints, tricky as hell hehe.
"insert" setMarkerPosLocal [(getPosASL _pos select 0)-1000,(getPosASL _pos select 1)];
"extract" setMarkerPosLocal [(getPosASL _pos select 0)-500,(getPosASL _pos select 1)+500];

// helo waypoints, 0 is start, 1 is getout and wait for squad, 2 is getin, 3 is fly to LZ.
// 7 should be the extract LZ waypoint.
[transp1,3] setWPPos getMarkerPos "insert";
[transp1,7] setWPPos getMarkerPos "extract";

// mission editor placed trucks, for now.
VTE_MissionTargets1 = [trk1,trk2,trk3];
