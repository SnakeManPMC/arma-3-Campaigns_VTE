
PMC_Create_Inf_Guard_US_SEAL =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// SEAL team
	"VTE_sealtl" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"VTE_sealsg" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sealrto" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"VTE_sealmg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_seal" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_sealmedic" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"VTE_sealgl" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 7;
	publicVariable "PMC_cu";
};
