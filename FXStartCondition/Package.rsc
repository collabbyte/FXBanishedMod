PackageFile FXStartCondition
{
	String _name = "FX StartCondition";
	String _author = "Feral Xan";
	String _description = "StartCondition with some added fiture.";
	String _icon = "icon.png";
	int _userVersion = 1.0.3;

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