StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Fuel;
	
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 6000;
}

ResidenceDescription residence
{
	int _maxApartments = 6;
	int _maxOccupants = 5;
	float _temperatureForFuel = 45.0;
	float _fuelPerResource = 60.0;
}