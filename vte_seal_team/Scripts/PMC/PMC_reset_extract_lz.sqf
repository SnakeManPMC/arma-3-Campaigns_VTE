
private
[
	"_locat"
];

_locat = _this select 0;

"extract" setMarkerPosLocal _locat;

// to place helo waypoints, tricky as hell hehe.
"extract" setMarkerPosLocal _locat;
[transp1, 7] setWPPos getMarkerPos "extract";

player groupChat "Okay now we have new extract LZ location selected.";

onMapSingleClick {false};
