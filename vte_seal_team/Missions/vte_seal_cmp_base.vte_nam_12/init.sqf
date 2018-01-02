private
[
	"_pmctext"
];

PAPABEAR = [ West, "HQ" ];

[] execVM "briefing.sqf";

seal1 loadStatus "seal1_01";
seal2 loadStatus "seal2_01";
seal3 loadStatus "seal3_01";
seal4 loadStatus "seal4_01";
seal5 loadStatus "seal5_01";
seal6 loadStatus "seal6_01";

// delete if they are dead
{
	if (!alive _x) then
	{
		deleteVehicle _x;
		_x setDamage 0;
	};
} forEach units seals1;

1 setRadioMsg "Patrol";
2 setRadioMsg "Destroy";
3 setRadioMsg "Snatch";
4 setRadioMsg "Ambush";
5 setRadioMsg "Assault";
6 setRadioMsg "Defend";
7 setRadioMsg "Recover";

sleep 1;
_pmctext = "Use your radio 0-0 to bring up mission selector menu.";
titleText[_pmctext, "plain", 2];
hint _pmctext;
