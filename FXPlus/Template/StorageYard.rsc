StorageDescription storage
{
	RawMaterialFlags _storageFlags = Fuel | Wood | Stone | Iron;
	bool _areaBasedLimit = true;
	bool _available = true;
	int _volumeLimit = 1000;
}

CreateDragDescription createdrag
{
	bool _ignoreZones = false;
	PathBits _placeBits = Normal | Obstacle;
	int _maxWidth = 20;
	int _maxHeight = 20;
	int _minWidth = 2;
	int _minHeight = 2;		

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}