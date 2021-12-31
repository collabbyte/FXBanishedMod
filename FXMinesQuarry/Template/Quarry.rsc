ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialStone.rsc";
			ResourceLimit _resourceLimit = Stone;
		}
	]

	ToolType _toolType = PickAxe;
	int _workRequired = 10;
	float _workTime = 10.0;
	ObjectType _messageType = QuarryComponent;
	int _messageId = 1;

	int _maximumProduction = 2147483647; // maximum int
}

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
}

QuarryDescription quarry 
{ 
	PickingMesh _floorMesh = "Models\Buildings\Quarry\QuarryFloor.rsc";
	float _maxDepth = 0;
	float _initialDepth = 0;
}

RibbonDescription resourceLimit
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = 8;
	int _cellPad = 8;
	int _minWidth = 222;

	ElementDescription _elements
	[
		"labelLimit",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "StoneLimitTip";
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableMinerWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production"; 
			String _insertAt = "pageUser"; 
		}
		{ 
			ObjectType _type = PageToggleUI; 
			ElementDescription _element = "Dialog/Production.rsc:checkProduction"; 
			String _insertAt = "userTitle0"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle1"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle2";
		}
		//{
		//	ObjectType _type = ConsumeProduceUI;
		//	ElementDescription _element = "Dialog/ConsumeProduce.rsc:progressRemaining"; 
		//	String _insertAt = "userButton1";
		//}
		{ 
			ObjectType _type = BuildUI; 
			ElementDescription _element = "Dialog/Build.rsc:build"; 
			String _insertAt = "pageBuild"; 
		}
		{ 
			ObjectType _type = DestroyUI; 
			ElementDescription _element = "Dialog/Destroy.rsc:destroy"; 
			String _insertAt = "pageDestroy"; 
		}

	]
}

WorkDescription work
{
	int _defaultWorkers = 10;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 30;
}