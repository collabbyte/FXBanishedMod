PopulationDescription population
{
	String _name = "Deer Population";

	// size of grid
	int _cellSize = 8;
	int _largeCellSize = 64;

	// pathing info
	PathBits _allowedPathing = Fast | Faster | Normal | Obstacle;
	PathBits _disallowedPathing = Immovable | Unusable | Occasional;
	bool _disallowZoneEntities = true;

	// population
	int _maxPopulationPerCell = 4;
	int _populationIncreasePerMonth = 2;
	int _populationDecreasePerHarvest = 2;

	// if true, cell max array will be updated
	bool _updateCells = true;

	// type of herd that is displayed, if any
	ComponentDescription _herd = "deerHerd";
}

HerdDescription herd
{
	ComponentDescription _animalType = "Template\WildAnimalDeer.rsc";
	int _maxAnimals = 10;
	int _minAnimals = 5;
	float _timeInAreaMonths = 1.0;
	float _timeInAreaTolerance = 0.75;
	int _grazeAreaSize = 8;
	float _reproduceTimeInMonths = 6.0;
}