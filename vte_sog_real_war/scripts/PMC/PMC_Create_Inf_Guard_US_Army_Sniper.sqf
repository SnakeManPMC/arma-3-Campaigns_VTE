
PMC_Create_Inf_Guard_US_Army_Sniper =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// Sniper team
	"VTE_Armyofficernight" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"VTE_armysniperw" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 2;
	publicVariable "PMC_cu";
};
