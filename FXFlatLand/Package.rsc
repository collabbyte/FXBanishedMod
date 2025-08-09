PackageFile FXFlatLand
{
	String _name = "FX Flatlands";
	String _author = "Feral Xan";
	String _description = "Generated FlatLands with 1 River.";
	String _icon = "icon.png";
	int _userVersion = 211231103;

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