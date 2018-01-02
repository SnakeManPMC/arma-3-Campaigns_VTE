// if run on server
if (isServer) then
{
	//[] execVM PMC\PMC_init.sqf;
}
else
{
	// client stuff
	// set our weather using multiplayer parameter array
	//[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";
	player setVariable ["BIS_noCoreConversations", true];
};

[[
  ["PMC_objective1", "Clear objective 1", "Clear <marker name='target1'>objective 1</marker>.", true, ["markerTask1", getMarkerPos "target1"]],
  ["PMC_objective2", "Clear objective 2", "Clear <marker name='target2'>objective 2</marker>.", true, ["markerTask2", getMarkerPos "target2"]]
],[
  ["Mission", "Airforce Headquarters is located at blackhorse where aircrafts are located.<br/><br/>Your task is to clear out the targets located in the map."]
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";
