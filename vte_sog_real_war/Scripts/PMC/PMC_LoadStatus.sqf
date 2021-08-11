
// players group units
pmc_sog_1 loadStatus "PMC_SaveStatusSOG_1";
pmc_sog_2 loadStatus "PMC_SaveStatusSOG_2";
pmc_sog_3 loadStatus "PMC_SaveStatusSOG_3";
pmc_sog_4 loadStatus "PMC_SaveStatusSOG_4";
pmc_sog_5 loadStatus "PMC_SaveStatusSOG_5";
pmc_sog_6 loadStatus "PMC_SaveStatusSOG_6";

// do some calculation for reinformcent day here, for now we just set it to true, its on every mission load
private _pmcReinfDay = true;

{
	if (_pmcReinfDay && (!alive _x)) then
	{
		// revive him
		_x setDamage 0;
		// remove all weapons, as we dont want the old ones to carry over
		removeAllWeapons _x;
		// reinfday to false, we got our guy, now more reinf for this day
		_pmcReinfDay = false;
	};
} forEach [pmc_sog_2, pmc_sog_3, pmc_sog_4, pmc_sog_5, pmc_sog_6];
