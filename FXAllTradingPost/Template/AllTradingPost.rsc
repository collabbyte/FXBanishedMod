// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui",
		
		"map",
		"zone",
		"toolbar",
		"createplaced",
		"decal",
		"model",
		"picking",
		"highlight",
		"floor",	
		"interact",
		"storage",
		"work",
		"radius",
		"statusicon",	
		"ambientemitter",
		"Common.rsc:fireWoodBuilding",
		"particle",	

		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",	
		"happiness",
		"trade"
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false;
}
StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Goods;
	bool _requireWorker = true;
	int _idleRange = 5;
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Buildings\TradingPost\TradingPostFloor.rsc";
}

RadiusDescription radius
{
	int _radius = 20;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireLarge.rsc";
		}
	]
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "UI/FXAllTradingPostSpriteSheet.rsc";
	String _spriteName = "AllTradingPost";

	StringTable _stringTable = "UI/FXAllTradingPostStringTable.rsc:objects";
	String _stringName = "AllTradingPost";
	String _stringNameLwr = "AllTradingPostLwr";
	String _toolTip = "AllTradingPostTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 2;
}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle | Water | DeepWater;
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Water | DeepWater,
		Water | DeepWater,
		Normal | Obstacle | Fast | Faster,
		DeepWater
	]
	String _placeBitmap =
		"333333333333
		 000000000000
		 000000000000
		 000000000000
		 111111111111
		 111111111111
		 111111111111
		 111111111111
		 111111111111
		 111111111111
		 222244444222";
		 	
	int _width = 12;
	int _height = 11;
	int _footprintRotation = 180;

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"............
		 ####__######
		 ####_______#
		 ####_______#
		 ####_#_____#
		 ####_#_____#
		 ##___#######
		 ####______##
		 ####_#_____#
		 ####_#####_#
		 ####_______#";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials 
	[ 
		"Terrain/TiledDecals/BuildingFootprint1Material.rsc" 
		"Terrain/TiledDecals/BuildingFootprint1DamageMaterial.rsc" 
	]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 2048.0;
	DecalLocation _decalLocations
	[
		{
			float _x0 = 896.0;
			float _y0 = 768.0;
			float _x1 = 1664.0;
			float _y1 = 1472.0;	
		}
	]
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\TradingPost\TradingPostBuild01Picking.rsc",
				"Models\Buildings\TradingPost\TradingPostBuild02Picking.rsc",
				"Models\Buildings\TradingPost\TradingPostPicking.rsc"
			] 
		}
	]
}


ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\TradingPost\TradingPostBuild01Mesh.rsc",
				"Models\Buildings\TradingPost\TradingPostBuild02Mesh.rsc",
				"Models\Buildings\TradingPost\TradingPostMesh.rsc"
			] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\TradingPost\TradingPostBuild01Mesh.rsc:edge",
				"Models\Buildings\TradingPost\TradingPostBuild02Mesh.rsc:edge",
				"Models\Buildings\TradingPost\TradingPostMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\TradingPost\TradingPostPoints.rsc";
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Wood | Stone | Iron | Health | Clothing | Textile | Alcohol;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 60000;
}

WorkDescription work
{
	int _defaultWorkers = 6;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 20;
}

BuildDescription build
{
	int _workRequired = 140;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 82;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 80;
		}	
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 40;
		}	
	]
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:trader";
}

TradeDescription trade
{
	float _sicknessAmount = 0.33;
	int _sicknessTimeInMonths = 2;

	ComponentDescription _riverBoat = "Template/TraderBoat.rsc";

	SpriteSheet _resourceSpriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _resourceStringTable = "Dialog/StringTable.rsc:gameDialogs";
	ResourceGroup _resourceGroups
	[
		{ RawMaterialFlags _flags = Wood; String _spriteName = "LogSmall"; String _text = "LogLimitShort"; }
		{ RawMaterialFlags _flags = Stone; String _spriteName = "StoneSmall"; String _text = "StoneLimitShort"; }
		{ RawMaterialFlags _flags = Iron; String _spriteName = "IronSmall"; String _text = "IronLimitShort"; }
		{ RawMaterialFlags _flags = WoodFuel; String _spriteName = "FirewoodSmall"; String _text = "FuelLimitShort"; }
		{ RawMaterialFlags _flags = CoalFuel; String _spriteName = "CoalSmall"; String _text = "CoalLimitShort"; }
		{ RawMaterialFlags _flags = Tool; String _spriteName = "ToolSmall"; String _text = "ToolLimitShort"; }
		{ RawMaterialFlags _flags = Textile; String _spriteName = "LeatherSmall"; String _text = "TextileLimitShort"; }
		{ RawMaterialFlags _flags = Clothing; String _spriteName = "WinterCoatSmall"; String _text = "ClothesLimitShort"; }
		{ RawMaterialFlags _flags = Grain; String _spriteName = "WheatSmall"; String _text = "GrainLimitShort"; }
		{ RawMaterialFlags _flags = Protein; String _spriteName = "BeefSmall"; String _text = "MeatLimitShort"; }
		{ RawMaterialFlags _flags = Fruit; String _spriteName = "AppleSmall"; String _text = "FruitLimitShort"; }
		{ RawMaterialFlags _flags = Vegetable; String _spriteName = "PotatoSmall"; String _text = "VegetableLimitShort"; }
		{ RawMaterialFlags _flags = Health; String _spriteName = "MushroomSmall"; String _text = "HerbLimitShort"; }
		{ RawMaterialFlags _flags = Alcohol; String _spriteName = "AleSmall"; String _text = "AlcoholLimitShort"; }
	]

	TradeScale _tradeScale
	[
		{	int _population = 30;	float _monthsTrade = 5;		float _monthsTradeTolerance = 0;	int _itemCountScale = 1;	int _itemStackScale = 1; }
	]

	Merchant _merchants
	[
		{
			StringTable _stringTable = "UI/FXAllTradingPostStringTable.rsc:merchant";
			String _merchantName = "AllMerchant";
			int _itemCount = 20;

			RawMaterialFlags _sellFlags =  Wood | Stone | Iron | Fuel | Tool | Health | Edible | Textile | Clothing | Alcohol;
			RawMaterialFlags _wantFlags = Wood | Stone | Iron | Fuel | Tool | Health | Edible | Textile | Clothing | Alcohol;
			RawMaterialFlags _buyFlags = Wood | Stone | Iron | Fuel | Tool | Health | Edible | Textile | Clothing | Alcohol;

			ComponentDescription _additionalItems
			[
			]

			SelectGroup _naturalResources
			[
				Crop,
				Orchard,
				Livestock,
			]
		}
	]
}

UIDescription ui
{
	// save buffer size
	int _settingsBufferSize = 512;

	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	
	ElementController _controllers
	[
		{ 
			ObjectType _type = TradeUI; 
			ElementDescription _element = "Dialog/Trade.rsc:trade"; 
			String _insertAt = "userGroup0"; 
		}
		{ 
			ObjectType _type = StorageCapacityUI; 
			ElementDescription _element = "Dialog/Storage.rsc:capacityFull"; 
			String _insertAt = "groupStorage"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle0"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle1";
		}
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableTradeWorkButton"; 
			String _insertAt = "groupWork";
			DialogControllerConfig _config = "workButtonConfig";	
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

ControlUIConfig workButtonConfig
{
	ObjectType _type = TradeComponent;
	int _controlId = 0;
}

CheckDescription enableTradeWorkButton : "Dialog/Work.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelTradeWorkUncheck";	
	ElementDescription _check = "labelTradeWorkCheck";	
	Alignment _alignment = TopRight;
	int _topPad = 0;
}

LabelDescription labelTradeWorkCheck : "Dialog/Work.rsc:labelEnableWork"
{
	String _spriteName = "TradeWork";	
	int _imageWidth = 16;
	int _imageHeight = 16;
	int _minWidth = 64;
	int _minHeight = 22;
	int _spacing = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	LabelPosition _labelPosition = TextRight;
}

LabelDescription labelTradeWorkUncheck : "labelTradeWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

