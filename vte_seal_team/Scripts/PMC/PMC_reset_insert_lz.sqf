
private
[
	"_locat"
];

_locat = _this select 0;

"insert" setMarkerPosLocal _locat;

// to place helo waypoints, tricky as hell hehe.
"insert" setMarkerPosLocal _locat;
[transp1, 3] setWPPos getMarkerPos "insert";

player groupChat "Okay now we have new insert LZ location selected.";

onMapSingleClick {false};
