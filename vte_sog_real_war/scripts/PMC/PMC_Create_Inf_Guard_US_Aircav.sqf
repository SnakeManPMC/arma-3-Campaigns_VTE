
PMC_Create_Inf_Guard_US_Aircav =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// AirCav squad
	"VTE_acofficer" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"VTE_acsoldierrto" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_acsoldier" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_acsoldiermg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_acsoldierlaw" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"VTE_acsoldierm79" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_acsoldierlaw" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_acsoldiermg" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_acsoldiermedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 9;
	publicVariable "PMC_cu";
};
