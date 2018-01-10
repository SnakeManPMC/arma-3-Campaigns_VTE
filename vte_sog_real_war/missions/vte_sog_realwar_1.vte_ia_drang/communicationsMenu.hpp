
class CfgCommunicationMenu
{
/*
bis example
	class PMC_ArtilleryCall
	{
		text = "Artillery Strike"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
		expression = "player setVariable ['BIS_SUPP_request', ['Artillery', _pos]];"; // Code executed upon activation
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
		removeAfterExpressionCall = 0; // 1 to remove the item after calling
	};
*/	
	// pmctodo remove debug before release
	class PMC_debug_onoff
	{
		text = "PMC_debug on/off";
		submenu = "";
		expression = "if (PMC_debug) then { PMC_debug = false; hint 'Debug is now OFF'; } else { PMC_debug = true; hint 'Debug is now ON'; };";
		icon = "";
		cursor = "";
		enable = "1";
		removeAfterExpressionCall = 0;
	};

	// PMC manual helicopter transport script
	class PMC_Helo_Transport
	{
		text = "Helicopter Transport";
		submenu = "";
		expression = "_this execVM 'PMC\PMC_Helo_Transport_Comms_Menu.sqf';";
		icon = "";
		cursor = "";
		enable = "1";
		removeAfterExpressionCall = 0;
	};

	// pmctodo remove debug end mission cheat before release
	class PMC_endMission_Debug
	{
		text = "Debug: End Mission";
		submenu = "";
		expression = "'pmc_end1' call BIS_fnc_endMission;";
		icon = "";
		cursor = "";
		enable = "1";
		removeAfterExpressionCall = 0;
	};
};
