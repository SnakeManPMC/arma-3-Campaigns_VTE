//onMapSingleClick ""[_pos] execVM 'PMC\PMC_newhideout.sqf'; onMapSingleClick ''; true;"";

onMapSingleClick "player setPos _pos; onMapSingleClick ''; true;";
systemChat format["you have been teleported to %1", (getPosASL player)];
