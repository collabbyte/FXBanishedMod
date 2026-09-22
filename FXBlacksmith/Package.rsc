PackageFile FXBlacksmith
{
	String _name = "FX Blacksmith";
	String _author = "Feral Xan";
	String _description = "Expands the Blacksmith profession with new production options, recipes, and improvements for tool and metal production.";
	String _icon = "icon.png";
	int _userVersion = 260922100;

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
