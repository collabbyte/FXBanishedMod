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

WorkDescription work
{
	int _defaultWorkers = 4;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 6;

	int _maxArea = 225;
	bool _scaleWorkersWithSize = true;
}

OrchardDescription orchard
{
	ResourceLimit _resourceLimit = Food;

	int _widthSpacing = 2;
	int _heightSpacing = 3;
	float _growthPercentOnTend = 0.01;
}