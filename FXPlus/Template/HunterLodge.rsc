WorkDescription work
{
	int _defaultWorkers = 4;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 6;
}

RadiusDescription radius
{
	int _radius = 51;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}