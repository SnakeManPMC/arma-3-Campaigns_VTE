
/*

Communications Menu called helicopter transport script

[position] execVM "PMC\PMC_Helo_Transport_Comms_Menu.sqf";

*/

private _position = _this select 1;

if (PMC_debug) then
{
	private _pmcMsg = format["PMC_Helo_Transport_Comms_Menu; _position: %1", _position];
	diag_log _pmcMsg;
	player sideChat _pmcMsg;
};
// land_vte_bis_heli_h
private _lpad = "Land_VTE_bis_Heli_H" createVehicle _position;
private _lg = leader group pmc_huey1;
private _vcl = pmc_huey1;

// fly huey to players posit
_lg move _position;
_lg sidechat "Transport huey on the way.";

// lets wait until he is ready or helo cant move.
waitUntil
{
	sleep 2;
	((unitReady _vcl) || !(canMove _vcl));
};

_lg sidechat "Your transport has arrived. Get ready.";

// land huey
_vcl land "land";

// bit sleep to give helo time to land
sleep 240;

// cleanup
deleteVehicle _lpad;
