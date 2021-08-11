/*

	Main war script, creates units and waypoints for them.
	Units first created and then sent on random locations.

*/

private
[
	"_a",
	"_grp",
	"_PMC_temptargets",
	"_ran",
	"_respawnpoint",
	"_targetNum",
	"_tlogic",
	"_waypointRanPosit",
	"_MaxOPFOR",
	"_MaxBLUFOR"
];

// select target location
_targetNum = count PMC_targets;
_PMC_temptargets = [];
_PMC_temptargets = PMC_targets;
_waypointRanPosit = 100;
// force levels, handicap because humans are so elite we dont need many BLUFOR.
_MaxOPFOR = 80;
_MaxBLUFOR = 25;

if (PMC_debug) then
{
	private _pmcMsg = format["PMC_SOG_RealWar1; _MaxOPFOR: %1, _MaxBLUFOR: %2, time: %3", _MaxOPFOR, _MaxBLUFOR, time];
	diag_log _pmcMsg;
	player sideChat _pmcMsg;
};

// send editor groups
[usinf1] execVM "PMC\PMC_Send_Editor_Groups.sqf";
[vcinf1] execVM "PMC\PMC_Send_Editor_Groups.sqf";

// never ending loop to create units
while {true} do
{
	// choose random target position
	_targetpoint = getPosASL (selectRandom PMC_targets);

	waitUntil
	{
		sleep 3;
		( (EAST countSide allUnits < _MaxOPFOR) || (WEST countSide allUnits < _MaxBLUFOR) );
	};

	if (EAST countSide allUnits < _MaxOPFOR) then
	{
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;
		[] call PMC_Create_Inf_Guard_VC;
		if (PMC_debug) then
		{
			_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_VC, _respawnpoint: %1, time: %2", _respawnpoint, time];
			diag_log _pmcMsg;
			PMCHQ sideChat _pmcMsg;
		};
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;
		[] call PMC_Create_Inf_Patrol_NVA;
		if (PMC_debug) then
		{
			_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Patrol_NVA, _respawnpoint: %1, time: %2", _respawnpoint, time];
			diag_log _pmcMsg;
			PMCHQ sideChat _pmcMsg;
		};
	};

	if (WEST countSide allUnits < _MaxBLUFOR) then
	{
		_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;

		_ran = 3;
		_ran = round (random 17);
		switch (_ran) do
		{
			case 0:
		    	{
				[] call PMC_Create_Inf_Guard_US_Army;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_Army, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 1:
		    	{
				[] call PMC_Create_Inf_Patrol_US_Army;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Patrol_US_Army, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 2:
		    	{
				[_respawnpoint] call PMC_Create_Inf_Guard_US_Aircav;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_Aircav, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 3:
		    	{
				[] call PMC_Create_Inf_Patrol_US_Aircav;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Patrol_US_Aircav, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 4:
		    	{
				[] call PMC_Create_Inf_Guard_US_USMC;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_USMC, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 5:
		    	{
				[] call PMC_Create_Inf_Patrol_US_USMC;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Patrol_US_USMC, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 6:
		    	{
				[] call PMC_Create_Inf_Guard_US_MFR;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_MFR, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 7:
		    	{
				[] call PMC_Create_Inf_Guard_US_MFR_heavy;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_MFR_heavy, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 8:
		    	{
				[] call PMC_Create_Inf_Guard_US_SEAL;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_SEAL, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 9:
		    	{
				[] call PMC_Create_Inf_Guard_US_SEAL_heavy;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_SEAL_heavy, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 10:
		    	{
				[] call PMC_Create_Inf_Guard_US_Army_sniper;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_Army_sniper, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 11:
		    	{
				[] call PMC_Create_Inf_Guard_US_USMC_sniper;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_USMC_sniper, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 12:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_SF, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 13:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF_recon;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_SF_recon, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 14:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF_sniper;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_SF_sniper, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 15:
		    	{
				[] call PMC_Create_Inf_Guard_US_LRRP;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_LRRP, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		    	case 16:
		    	{
				[] call PMC_Create_Inf_Guard_US_LRRP_heavy;
				if (PMC_debug) then
				{
					_pmcMsg = format["PMC_SOG_RealWar1; PMC_Create_Inf_Guard_US_LRRP_heavy, _respawnpoint: %1, time: %2", _respawnpoint, time];
					diag_log _pmcMsg;
					PMCHQ sideChat _pmcMsg;
				};
		    	};
		};
	};
	// just to relax a bit
	sleep 30;
};
