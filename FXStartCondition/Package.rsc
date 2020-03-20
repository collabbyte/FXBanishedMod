PackageFile FXStartCondition
{
	String _name = "FX StartCondition";
	String _author = "Feral Xan";
	String _description = "when starting the game, you will get 20 adult, 250 wood, 
                           100 stone, 100 iron, 100 tools, 3000 food, 420 fuel, 100 cloth, 
                           4 seed (2 cropfield & 2 orchard), 2 random type livestock @ 10 pieces.";
	String _icon = "icon.png";
	int _userVersion = 1.0.0;

	// all files in resource directory
	String _includeList
	[
		"*"	
	]
	
	// exclude package files, mod files, file used for building packages
	String _excludeList
	[
		"Package_*.crs"
		"*.pkg"
		"*.pkm"
	]
}

ExternalList list
{
	External _resources
	[
		"Game/StartCondition/StartConditions.rsc"
		"Game/StartCondition/FXMod.rsc"

		"Dialog/StringTable.rsc:startConditions"
	]
}