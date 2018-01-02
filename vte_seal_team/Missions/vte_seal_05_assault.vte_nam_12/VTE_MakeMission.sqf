// make the mission location

private ["_p","_pos","_myObject","_r1","_t","_tgt1","_tgt2"];

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

// create some arty gun or something here to be destroyed
_myObject = ["VTE_zsu57"];

// randomize one type and create two of them into the location
_r1 = random (count _myObject);
_r1 = _r1 - (_r1 mod 1);
_t = _myObject select _r1;
_tgt1 = _t createVehicle getMarkerPos "target1";
_tgt2 = _t createVehicle getMarkerPos "target1";

// add the object into array for later usage.
VTE_MissionTargets1 = [_tgt1,_tgt2];
