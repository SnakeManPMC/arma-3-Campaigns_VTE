
PMC_Create_Inf_Guard_US_SF =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// SF squad
	"VTE_sftl" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"VTE_sfrto" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sfmg" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sflaw" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_sfgl" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_sfmg" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sfmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sfmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sfgl" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sf" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sf" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sf" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 12;
	publicVariable "PMC_cu";
};
