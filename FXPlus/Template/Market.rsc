RadiusDescription radius
{
	int _radius = 60;
	MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

StorageDescription storage
{
	// finished products that are used by people!
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Health | Clothing | Iron | Wood | Textile;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 100000;
}