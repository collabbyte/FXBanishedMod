MapGenerator resource : "StartConditions.rsc:defaults"
{
	StringTable _stringTable = "Dialog/StringTable.rsc:startConditions";
	String _name = "FXModHardName";
	String _description = "FXModHardDesc";
	bool _exposed = true;

	int _startAreaSize = 13;
	float _citizenRadius = 3.0f;
	WeakComponentDescription _citizen = "Template\Citizen.rsc";
	InitialFamily _citizens
	[
		{ bool _educated = false; int _maxChildCount = 3; },
		{ bool _educated = false; int _maxChildCount = 3; },
		{ bool _educated = false; int _maxChildCount = 3; },
		{ bool _educated = false; int _maxChildCount = 3; },
	]
	
	InitialStructure _structures
	[
		{
			WeakComponentDescription _structure = "Template\StorageCart.rsc";
			int _offsetX = 3;
			int _offsetY = 2;
		}
	]

	int _initialWoodCount = 100;
	int _initialStoneCount = 60;
	int _initialIronCount = 40;

	int _initialToolCount = 40;
	int _initialFoodCount = 1200;
	int _initialFuelCount = 200;
	int _initialClothingCount = 50;

	int _plantCount = 0;
	int _treeCount = 0;
	int _livestockCount = 0;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = 0.0f;
	float _livestockRadius = 10;
	int _livestockGroupCount = 0;
}