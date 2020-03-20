PackageFile FXMinesQuarry
{
	String _name = "FX Mine & Quarry";
	String _author = "Feral Xan";
	String _description = "This Mod Makes Mine and Mine Unlimited. and when it is deleted there is no trace.";
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
		"Template/IronMine.rsc"
		"Template/Quarry.rsc"
	]
}