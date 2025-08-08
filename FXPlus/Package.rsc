PackageFile FXPlus
{
	String _name = "FX Banished +";
	String _author = "Feral Xan";
	String _description = "Banished with Module Plus.";
	String _icon = "icon.png";
	int _userVersion = 220929100;

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