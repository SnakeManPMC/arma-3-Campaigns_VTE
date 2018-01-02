/*
 lame helo insert extract script by Snake Man, PMC.
 http://flashpoint.nekromantix.com
 
 Parameters for the script are [group,helo,0] exec "helo_op.sqs"

 Third parameter as 
	0 - insertion
	1 - extraction
 
 [assault1,myuh60,0] exec "helo_op.sqs"; 
 would insert group called assault1 from the helicopter named myuh60. 

 [assault1,myuh60,1] exec "helo_op.sqs";
 would extract the assault1 group into the myuh60 helicopter.

 This script used radio voices that need to be in stringtable.csv and in description.ext
 files. These are:
STRM_Rinsert,"BRAVO TO ALPHA. INSERTION LZ IN SIGHT, GET READY. OVER.",bravo
STRM_Rgoodluck,"GOOD LUCK ALPHA BLACK. CALL US WHEN YOURE READY. BRAVO OUT.",bravo
STRM_Rextract,"BRAVO TO ALPHA. GET READY FOR EXTRACTION. OVER.",bravo
STRM_Rdustoff,"LIFTOFF. GOING HOME. OVER.",bravo
 You dont need to make sound ogg files for these, its optional and nice touch. But you get
 error if stringtable.csv and description.ext entries are missing.

 when helo lands, it usually turns its engine off. Also the helo sits there nicely waiting
 for the alive team members to board. So if team members get killed in the process,
 the script wont get hung waiting for dead members to board.
 
*/

private ["_helo","_opname","_PMC_Extraction","_PMC_Insertion","_team"];

_PMC_Insertion =
{
        private ["_listunits","_B","_A","_helo","_ejc","_team"];

        _team = _this select 0;
        _helo = _this select 1;

        _helo sideRadio "Rinsert";

	// get people out
	_helo land "land";

	// loop until helo height is 2 meters.
	waitUntil
	{
		sleep 0.01;
		getPosASL vehicle _helo select 2 < 2;
	};

	_helo flyInHeight 0;

	// wait until whole squad is out
	_A = 0;
	_B = 1;
	_ejc = "EJECT";

	{
		unassignVehicle _x;
	} forEach units _team;

	while {_B > _A} do
	{
		_listunits = units _team;
		_B = count _listunits;
		sleep 0.2;
		_listunits select _A action [_ejc,_helo];
		_A = _A + 1;
	};

	_helo flyInHeight 75;
	_helo sideRadio "Rgoodluck";

	if (true) exitWith {};
};

_PMC_Extraction =
{
        private ["_A","_listunits","_B","_helo","_team"];

        _team = _this select 0;
        _helo = _this select 1;
        
        _helo sideRadio "Rextract";

	// get people out
	_helo land "land";

	// loop until helo height is 2 meters.
	waitUntil
	{
		sleep 0.01;
		getPosASL vehicle _helo select 2 < 2;
	};

	_helo flyInHeight 0;

	{
		_x assignAsCargo _helo;
		[_x] orderGetIn true;
	} forEach units _team;

	// wait until whole squad is on board.
	_A = 0;
	_B = 1;
	while {_B > _A} do
	{
		_listunits = units _team;
		_B = count _listunits;
		sleep 0.1;
		if (_listunits select _A in _helo) then
		{
			_A = _A + 1;
		};
	};

	_helo flyInHeight 75;
	_helo sideRadio "Rdustoff";

	if (true) exitWith {};
};


/*

	main code here

*/
_team = _this select 0;
_helo = _this select 1;
_opname = _this select 2;

if (_opname == 0) then
{
	[_team, _helo] call _PMC_Insertion;
};

if (_opname == 1) then
{
	[_team, _helo] call _PMC_Extraction;
};
