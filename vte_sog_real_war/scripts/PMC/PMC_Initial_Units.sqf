/*

Creates VietCong Recon groups to PMC_x gamelogic locations at mission start so we dont have that stupid slow start where
enemies and friendlies spread across the mission objectives, we need action at start :)

[number_of_units] execVM "PMC\PMC_Initial_Units.sqf";

Requires:
PMC_opfor_list array for opfor units
PMC_Select_Target
PMC_Guard_Inf_Waypoints
PMC_Debug

*/
private
[
	"_pos",
	"_MaxOPFOR",
	"_grp",
	"_newPos"
];

_pos = call PMC_Select_Target;
_MaxOPFOR = _this select 0;

waitUntil
{
	(count list PMC_opfor_list > 0);
};

while { (count list PMC_opfor_list < _MaxOPFOR) } do
{
	// random location, unfortunately can be where player is hehe
	_pos = getPos (call PMC_Select_Target);

	// select safe position so not inside buildings etc
	_newPos = [_pos, 100, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

	_grp = [_newPos, EAST, (configFile >> "CfgGroups" >> "East" >> "VTE_VC" >> "Infantry" >> "VTE_VC_Recon_Squad")] call BIS_fnc_spawnGroup;

	// place waypoint into the objective location, not in our safe position
	[_grp, _pos, 50] call PMC_Guard_Inf_Waypoints;

	if (PMC_debug) then
	{
		diag_log "PMC_Initial_Units; create gooks!"; player sidechat "created gooks!";
	};
};

/*
VTE_VC_Infantry_Squad
VTE_VC_Heavy_Weapons_Squad
VTE_VC_Recon_Squad
VTE_VC_Sapper_Squad
VTE_VC_Sniper_Team
*/
