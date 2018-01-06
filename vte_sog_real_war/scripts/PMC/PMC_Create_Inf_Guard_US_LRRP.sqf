
PMC_Create_Inf_Guard_US_LRRP =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// SF squad
	"VTE_lrrptl" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"VTE_lrrprto" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_lrrpmg" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_lrrp" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_lrrpmedic" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_lrrpgl" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 6;
	publicVariable "PMC_cu";
};
