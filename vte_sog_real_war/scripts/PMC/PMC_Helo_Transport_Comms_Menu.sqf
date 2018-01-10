
/*

Communications Menu called helicopter transport script

[position] execVM "PMC\PMC_Helo_Transport_Comms_Menu.sqf";

*/

//hint format["Yeah: %1", _this select 0];

private _position = _this select 1;
//player sidechat format["_position: %1", _position];
// land_vte_bis_heli_h
private _lpad = "land_helipadempty_f" createVehicle _position;
private _lg = leader group pmc_huey1;
private _vcl = pmc_huey1;

// fly huey to players posit
_lg move _position;
_lg sidechat "On my way.";

// lets wait until he is ready or helo cant move.
waitUntil
{
	sleep 2;
	( ( (unitReady _vcl) || !(canMove _vcl) );
};

_lg sidechat "Arrived. Get ready boys.";

// land huey
_vcl land "land";

// bit sleep to give helo time to land
sleep 120;

// cleanup
deleteVehicle _lpad;
