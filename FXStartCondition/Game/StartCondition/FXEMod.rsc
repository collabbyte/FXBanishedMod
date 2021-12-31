MapGenerator resource : "StartConditions.rsc:defaults"
{
	StringTable _stringTable = "Dialog/StringTable.rsc:startConditions";
	String _name = "FXModEasyName";
	String _description = "FXModEasyDesc";
	bool _exposed = true;

	int _startAreaSize = 13;
	float _citizenRadius = 3.0f;
	WeakComponentDescription _citizen = "Template\Citizen.rsc";
	InitialFamily _citizens
	[
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
	]
	
	InitialStructure _structures
	[
		{
			WeakComponentDescription _structure = "Template\StorageBarn.rsc";
			int _offsetX = -3;
			int _offsetY = 5;
			int _rotation = 90;
		}
		{
			WeakComponentDescription _structure = "Template\StorageYard.rsc";
			int _offsetX = 3;
			int _offsetY = 6;
			int _width = 10;
			int _height = 10;
			int _rotation = 0;
		}
	]

	int _initialWoodCount = 300;
	int _initialStoneCount = 140;
	int _initialIronCount = 100;

	int _initialToolCount = 100;
	int _initialFoodCount = 4800;
	int _initialFuelCount = 800;
	int _initialClothingCount = 200;

	int _plantCount = 8;
	int _treeCount = 8;
	int _livestockCount = 3;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = 0.0f;
	float _livestockRadius = 10;
	int _livestockGroupCount = 10;
}