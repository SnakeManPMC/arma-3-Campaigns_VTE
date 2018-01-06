
PMC_Create_Inf_Guard_US_MFR_Heavy =
{
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};
	
	// MFR heavy squad
	"VTE_mfrtl" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"VTE_mfrsg" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_MFRrto" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"VTE_mfrmg" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"VTE_mfrmedic" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"VTE_mfrgl" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_mfr" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_mfr" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_MFRlaw" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_mfrmg" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_mfr" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"VTE_mfr" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];

	[_grp, _respawnpoint, 100] call PMC_Guard_Inf_Waypoints;
	[_grp] call PMC_Radio_Callsign_Random;

	PMC_cu = PMC_cu + 12;
	publicVariable "PMC_cu";
};
