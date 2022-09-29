PackageFile FXLivestockDeer
{
	String _name = "FX Livestock Deer";
	String _author = "Feral Xan";
	String _description = "xxxxxxx";
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
