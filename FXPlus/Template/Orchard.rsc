CreateDragDescription createdrag
{
	bool _ignoreZones = false;
	
	PathBits _placeBits = Normal | Walkable | Obstacle;
	
	int _maxWidth = 20;
	int _maxHeight = 20;
	int _minWidth = 10;
	int _minHeight = 10;

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}