/*

Give random radio callsign to the group.

No idea what happens if you run this on multiplayer, sorry hehe ;)

[group] execVM "PMC\PMC_Radio_Callsign_Random.sqf";

*/
PMC_Radio_Callsign_Random =
{
	private
	[
		"_grp",
		"_name",
		"_color",
		"_list_names",
		"_list_numbers"
	];

	_list_names =
	[
		"Sicko",
		"Dragon",
		"Shining Brass",
		"Red",
		"Hotel",
		"Spike",
		"Sky Shadow",
		"Red Bird",
		"Six",
		"Dimmer",
		"Red Lion",
		"Yankee Mike",
		"Green",
		"Purple",
		"Romeo",
		"Sierra",
		"Tango",
		"Uniform",
		"Victor",
		"Whiskey",
		"X-Ray",
		"Zulu",
		"Alfa",
		"Tiger",
		"Puma",
		"Bear",
		"Wolf",
		"Fox"
	];

	_list_numbers =
	[
		"One",
		"Two",
		"Three",
		"Four",
		"Five",
		"Six",
		"Seven",
		"Eight",
		"Niner",
		"Zero",
		"Team 1",
		"Team 2",
		"Team 3",
		"Team 4",
		"Team 5",
		"Team 6",
		"Team 7",
		"Team 8",
		"Team 9",
		"Team A",
		"Team B",
		"Team C",
		"Team D",
		"Team E",
		"Team F"
	];

	_grp = _this select 0;

	_name = (selectRandom _list_names);
	_color = (selectrandom _list_numbers);

	_grp setGroupId [format ["%1 %2", _name, _color]];
};
