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
	"_waypointRanPosit"
];

// select target location
_targetNum = count PMC_targets;
_PMC_temptargets = [];
_PMC_temptargets = PMC_targets;
_waypointRanPosit = 50;
// force levels, handicap because humans are so elite we dont need many BLUFOR.
_MaxOPFOR = 200;
_MaxBLUFOR = 75;

// send editor groups
[usinf1] execVM "PMC\PMC_Send_Editor_Groups.sqf";
[vcinf1] execVM "PMC\PMC_Send_Editor_Groups.sqf";

// never ending loop to create units
while {true} do
{
	// choose random target position
	_r = (floor random _targetNum);
	_t = (PMC_targets select _r);
	_targetpoint = getPosASL _t;

	waitUntil
	{
		sleep 3;
		( (count list PMC_opfor_list < _MaxOPFOR) || (count list PMC_blufor_list < _MaxBLUFOR) );
	};

	if (count list PMC_opfor_list < _MaxOPFOR) then
	{
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;
		[] call PMC_Create_Inf_Guard_VC;
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;
		[] call PMC_Create_Inf_Patrol_NVA;
	};

	if (count list PMC_blufor_list < _MaxBLUFOR) then
	{
		_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;

		_ran = 3;
		_ran = round (random 17);
		switch (_ran) do
		{
			case 0:
		    	{
				[] call PMC_Create_Inf_Guard_US_Army;
				if (PMC_debug) then {PMCHQ sideChat "random guard army created.";};
		    	};
		    	case 1:
		    	{
				[] call PMC_Create_Inf_Patrol_US_Army;
				if (PMC_debug) then {PMCHQ sideChat "random patrol army created.";};
		    	};
		    	case 2:
		    	{
				[_respawnpoint] call PMC_Create_Inf_Guard_US_Aircav;
				if (PMC_debug) then {PMCHQ sideChat "random guard aircav created.";};
		    	};
		    	case 3:
		    	{
				[] call PMC_Create_Inf_Patrol_US_Aircav;
				if (PMC_debug) then {PMCHQ sideChat "random patrol aircav created.";};
		    	};
		    	case 4:
		    	{
				[] call PMC_Create_Inf_Guard_US_USMC;
				if (PMC_debug) then {PMCHQ sideChat "random guard USMC created.";};
		    	};
		    	case 5:
		    	{
				[] call PMC_Create_Inf_Patrol_US_USMC;
				if (PMC_debug) then {PMCHQ sideChat "random patrol USMC created.";};
		    	};
		    	case 6:
		    	{
				[] call PMC_Create_Inf_Guard_US_MFR;
				if (PMC_debug) then {PMCHQ sideChat "random patrol MFR created.";};
		    	};
		    	case 7:
		    	{
				[] call PMC_Create_Inf_Guard_US_MFR_heavy;
				if (PMC_debug) then {PMCHQ sideChat "random patrol MFR heavy created.";};
		    	};
		    	case 8:
		    	{
				[] call PMC_Create_Inf_Guard_US_SEAL;
				if (PMC_debug) then {PMCHQ sideChat "random patrol SEAL created.";};
		    	};
		    	case 9:
		    	{
				[] call PMC_Create_Inf_Guard_US_SEAL_heavy;
				if (PMC_debug) then {PMCHQ sideChat "random patrol SEAL heavy created.";};
		    	};
		    	case 10:
		    	{
				[] call PMC_Create_Inf_Guard_US_Army_sniper;
				if (PMC_debug) then {PMCHQ sideChat "random patrol army sniper created.";};
		    	};
		    	case 11:
		    	{
				[] call PMC_Create_Inf_Guard_US_USMC_sniper;
				if (PMC_debug) then {PMCHQ sideChat "random patrol USMC sniper created.";};
		    	};
		    	case 12:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF;
				if (PMC_debug) then {PMCHQ sideChat "random patrol SF created.";};
		    	};
		    	case 13:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF_recon;
				if (PMC_debug) then {PMCHQ sideChat "random patrol SF recon created.";};
		    	};
		    	case 14:
		    	{
				[] call PMC_Create_Inf_Guard_US_SF_sniper;
				if (PMC_debug) then {PMCHQ sideChat "random patrol SF sniper created.";};
		    	};
		    	case 15:
		    	{
				[] call PMC_Create_Inf_Guard_US_LRRP;
				if (PMC_debug) then {PMCHQ sideChat "random patrol LRRP created.";};
		    	};
		    	case 16:
		    	{
				[] call PMC_Create_Inf_Guard_US_LRRP_heavy;
				if (PMC_debug) then {PMCHQ sideChat "random patrol LRRP heavy created.";};
		    	};
		};
	};
	// just to relax a bit
	sleep 30;
};
