
PMC_Create_Inf_Patrol_US_Army =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	"VTE_armyofficer" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"VTE_armywrto" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_armysoldier" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_armywmg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_armywlaw" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"VTE_armywgl" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_armywlaw" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_armywmg" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_armywmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 9;
	publicVariable "PMC_cu";
};
