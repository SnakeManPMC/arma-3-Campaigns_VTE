// make the mission location

private
[
	"_p"
];

// enemy waypoint circle size
_p = 200;

"target1" setMarkerPosLocal getPosASL VTE_MapCenter;
patrol1 setPos getPosASL VTE_MapCenter;

{
	_x setPos getPosASL patrol1;
} forEach units vcinf1;

[vcinf1,0] setWPPos getPosASL leader vcinf1;
[vcinf1,1] setWPPos [(getPosASL patrol1 select 0) - _p + ((random _p) * 2), (getPosASL patrol1 select 1) - _p + ((random _p) * 2)];
[vcinf1,2] setWPPos [(getPosASL patrol1 select 0) - _p + ((random _p) * 2), (getPosASL patrol1 select 1) - _p + ((random _p) * 2)];
[vcinf1,3] setWPPos [(getPosASL patrol1 select 0) - _p + ((random _p) * 2), (getPosASL patrol1 select 1) - _p + ((random _p) * 2)];
[vcinf1,4] setWPPos [(getPosASL patrol1 select 0) - _p + ((random _p) * 2), (getPosASL patrol1 select 1) - _p + ((random _p) * 2)];
[vcinf1,5] setWPPos getPosASL leader vcinf1;

// to place helo waypoints, tricky as hell hehe.
"insert" setMarkerPosLocal [(getPosASL patrol1 select 0)-1000,(getPosASL patrol1 select 1)];
"extract" setMarkerPosLocal [(getPosASL patrol1 select 0)-500,(getPosASL patrol1 select 1)+500];

// helo waypoints, 0 is start, 1 is getout and wait for squad, 2 is getin, 3 is fly to LZ.
// 7 should be the extract LZ waypoint.
[transp1,3] setWPPos getMarkerPos "insert";
[transp1,7] setWPPos getMarkerPos "extract";
