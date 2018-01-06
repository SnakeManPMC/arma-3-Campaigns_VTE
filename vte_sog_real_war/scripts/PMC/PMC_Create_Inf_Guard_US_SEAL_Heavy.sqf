
PMC_Create_Inf_Guard_US_SEAL_Heavy =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// SEAL team heavy
	"VTE_sealtl" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"VTE_sealsg" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sealrto" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sealmg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_sealmedic" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_sealgl" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sealxm" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_seal" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sealmg2" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sealm3a1" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sealmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_seallaw" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 12;
	publicVariable "PMC_cu";
};
