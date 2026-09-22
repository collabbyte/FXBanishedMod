StorageDescription storage
{
	// finished products that are used by people!
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Health | Clothing | Iron | Wood | Textile;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 20000;
}

WorkDescription work
{
    int _defaultWorkers = 24;

    bool _allowCountChange = true;
    int _minWorkerCount = 2;
    int _maxWorkerCount = 50;

}

RadiusDescription radius
{
    int _radius = 64;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}