/*

Places players squad to a random starting location

*/

private
[
	"_newPos",
	"_tmp"
];

_tmp = ["BLUFOR"] call PMC_SelectStartPosit;
_newPos = [_tmp, 0, 100, 30, 0, 20, 0] call BIS_fnc_findSafePos;
{
	_x setPos _newPos;
} forEach units group player;
