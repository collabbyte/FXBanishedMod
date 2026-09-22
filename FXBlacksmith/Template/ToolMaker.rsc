ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "ToolRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialCoal.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialSteelTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "SteelToolRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 2;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialCoal.rsc";
			ResourceLimit _resourceLimit = Coal;
			String _requirements = "CoalRequire";
		}
	]
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	int _workRequired = 5;
	ToolType _toolType = Anvil;
	float _workTime = 4.0;
	
}

UIDescription ui
{
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableToolMakerWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "inventoryTab2"; 
			String _insertAt = "userButton1"; 
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
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userGroup0";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit2"; 
			String _insertAt = "userGroup0";
			DialogControllerConfig _config = "resourceLimitConfig2";	
		}
		{
			ObjectType _type = ConsumeProduceUI;
			ElementDescription _element = "Dialog/ConsumeProduce.rsc"; 
			String _insertAt = "userGroup1";
		}
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

RibbonDescription resourceLimit
{
	Alignment _alignment = MidLeft;
	bool vertical = false;
	int _cellPad = 8;

	ElementDescription _elements
	[
		"labelLimit",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "ToolLimitTip";
}

ResourceLimitUIConfig resourceLimitConfig2
{
	ResourceLimit _resourceLimit = Coal;
}

RibbonDescription resourceLimit2
{
	Alignment _alignment = MidRight;
	bool vertical = false;
	int _cellPad = 8;

	ElementDescription _elements
	[
		"labelLimit2",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "CoalLimitTip";
}

LabelDescription labelLimit2
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "CoalLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Coal";
}
