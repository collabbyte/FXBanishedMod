WorkDescription work
{
	int _defaultWorkers = 3;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 4;
}

HuntDescription hunt
{
	// one deer per month
	float _killTimeInMonths = 4.0;

	ResourceLimit _resourceLimit = Food;
}

RadiusDescription radius
{
	int _radius = 49;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}