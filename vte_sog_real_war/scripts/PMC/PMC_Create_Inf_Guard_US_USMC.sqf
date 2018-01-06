
PMC_Create_Inf_Guard_US_USMC =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// USMC squad
	"VTE_soldierwo" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"VTE_soldierwrto" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_soldierw" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_soldierwmg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_soldierwlaw" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"VTE_soldierwgl" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_soldierwat" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_soldierwmg" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_soldierwmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 9;
	publicVariable "PMC_cu";
};
