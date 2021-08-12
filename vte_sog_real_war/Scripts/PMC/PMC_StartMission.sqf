
// PMC_StartMission.sqf is ran on every mission start, do not put mission specific stuff here.

// disable AI creation for debug purposes
PMC_DisableAICreationDebug = false;

// 1965-01-15T06:00:00Z
setDate [1965, 1, 15, 6, 0];

// players group units loadStatus
[] execVM "PMC\PMC_LoadStatus.sqf";

PMCHQ = [ West, "HQ" ];

// random call sign for player and huey
call compile preprocessFileLineNumbers "PMC\PMC_Radio_Callsign_Random.sqf";
private _playerCallSign = [group player] call PMC_Radio_Callsign_Random;
private _transportHeloCallSign = [group pmc_huey1] call PMC_Radio_Callsign_Random;

[1.1] execVM "PMC\PMC_weather_SP.sqf";
[_playerCallSign, _transportHeloCallSign] execVM "PMC\PMC_Briefing.sqf";

// debug on
PMC_debug = true;

// init shizzle, otherwise you get undefined variable errors
PMC_grpNum = 0;
PMC_cu = 0;

// load up our functions
call compile preprocessFileLineNumbers "PMC\PMC_Select_Target.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_VC.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Patrol_NVA.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_Army.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Patrol_US_Army.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_Aircav.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Patrol_US_Aircav.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_USMC.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Patrol_US_USMC.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_MFR.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_MFR_heavy.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_SEAL.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_SEAL_heavy.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_Army_sniper.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_USMC_sniper.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_SF.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_SF_recon.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_SF_sniper.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_LRRP.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Inf_Guard_US_LRRP_heavy.sqf";
//call compile preprocessFileLineNumbers "PMC\PMC_SOG_RealWar_Create_Marker.sqf";

// special support groups, medics on support waypoint
if (!PMC_DisableAICreationDebug) then
{
	diag_log format["PMC_Init; %1, creating two USMC support groups.", time];
	[getPos PMC_blufor_start_1] execVM "PMC\PMC_Create_Inf_Support_US_USMC.sqf";
	[getPos PMC_blufor_start_2] execVM "PMC\PMC_Create_Inf_Support_US_USMC.sqf";
};

// corpse removal
PMC_killedNum = 0;
PMC_corpses = [];
[75] execVM "PMC\PMC_corpses.sqf";

// fill the PMC_targets array.
private _tmp = [] execVM "PMC\PMC_targets.sqf";
waitUntil
{
	scriptDone _tmp;
};

if (PMC_debug) then
{
	diag_log format["PMC_init; PMC_targets select 0: %1", PMC_targets select 0];
	diag_log format["PMC_init; PMC_targets select 1: %1", PMC_targets select 1];
	diag_log format["PMC_init; PMC_targets select 2: %1", PMC_targets select 2];
	diag_log format["PMC_init; PMC_targets select 3: %1", PMC_targets select 3];
	diag_log format["PMC_init; PMC_targets select 4: %1", PMC_targets select 4];
	diag_log format["PMC_init; PMC_targets select 5: %1", PMC_targets select 5];
	player sidechat format["count PMC_targets: %1", (count PMC_targets)];
};

// populate the landscape with small enemy groups
if (!PMC_DisableAICreationDebug) then
{
	diag_log format["PMC_Init; %1, running PMC_Initial_Units.sqf", time];
	[20] execVM "PMC\PMC_Initial_Units.sqf";
};

// create objectives
[50, 60] execVM "PMC\PMC_ObjectivesALL.sqf";

// mission ending task and triggers
PMC_Objective_0 = false;
PMC_Objective_1 = false;
PMC_Objective_2 = false;
PMC_Objective_3 = false;
PMC_Objective_4 = false;
[] execVM "PMC\PMC_Obj_Mission_End.sqf";

// run the main war loopers
if (!PMC_DisableAICreationDebug) then
{
	diag_log format["PMC_Init; %1, running PMC_sog_realwar1.sqf", time];
	[] execVM "PMC\PMC_sog_realwar1.sqf";
};

// throw player's squad into random start point.
[] execVM "PMC\PMC_SOG_RealWar_Player_Starting_Location.sqf";

// add communications menu for player
//_supportHeli = [player,"Support_Request_CAS_Heli"] call BIS_fnc_addCommMenuItem;
// don't show notification
//[player, "PMC_ArtilleryCall", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_DebugStats", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Helo_Transport", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_DebugTeleport", nil, nil, ""] call BIS_fnc_addCommMenuItem;

// ambient aircraft, kinda in this campaign at least
if (!PMC_DisableAICreationDebug) then
{
	diag_log format["PMC_Init; %1, running PMC_Aircraft_VTE_BLUFOR_CUSTOM.sqf", time];
	[pmc_1] execVM "PMC\PMC_Aircraft_VTE_BLUFOR_CUSTOM.sqf";
};
