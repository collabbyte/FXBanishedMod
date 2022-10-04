WorkDescription work
{
	int _defaultWorkers = 2;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 2;
}

RadiusDescription radius
{
	int _radius = 45;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}