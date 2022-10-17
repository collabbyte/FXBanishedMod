PackageFile FXAllTradingPost
{
	String _name = "FX All Trading Post";
	String _author = "Feral Xan";
	String _description = "Show All Trading Post Category";
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
