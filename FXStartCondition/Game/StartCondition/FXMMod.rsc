MapGenerator resource : "StartConditions.rsc:defaults"
{
	StringTable _stringTable = "UI/FXStartConditionStringTable.rsc";
	String _name = "FXModMediumName";
	String _description = "FXModMediumDesc";
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
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
		{ bool _educated = true; int _maxChildCount = 3; },
	]
	
	InitialStructure _structures
	[
		{
			WeakComponentDescription _structure = "Template\StorageBarn.rsc";
			int _offsetX = -2;
			int _offsetY = 5;
			int _rotation = 90;
		}
		{
			WeakComponentDescription _structure = "Template\StorageYard.rsc";
			int _offsetX = 3;
			int _offsetY = 6;
			int _width = 5;
			int _height = 5;
			int _rotation = 0;
		}
	]

	int _initialWoodCount = 150;
	int _initialStoneCount = 120;
	int _initialIronCount = 80;

	int _initialToolCount = 80;
	int _initialFoodCount = 2400;
	int _initialFuelCount = 400;
	int _initialClothingCount = 100;

	int _plantCount = 2;
	int _treeCount = 2;
	int _livestockCount = 1;

	float _livestockOffsetX = 0.0f;
	float _livestockOffsetY = 0.0f;
	float _livestockRadius = 10;
	int _livestockGroupCount = 5;
}