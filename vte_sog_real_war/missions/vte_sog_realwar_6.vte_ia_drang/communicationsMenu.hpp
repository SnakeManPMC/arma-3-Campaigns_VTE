
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
};
