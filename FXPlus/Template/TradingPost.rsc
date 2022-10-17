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
			StringTable _stringTable = "Dialog/StringTable.rsc:merchant";
			String _merchantName = "MerchantFood";
			int _itemCount = 15;

			RawMaterialFlags _sellFlags = Edible;
			RawMaterialFlags _wantFlags = Tool | Health | Edible | Textile | Clothing | Alcohol;
			RawMaterialFlags _buyFlags = Wood | Stone | Iron | Fuel;
		}
		{
			StringTable _stringTable = "Dialog/StringTable.rsc:merchant";
			String _merchantName = "MerchantGoods";
			int _itemCount = 5;

			RawMaterialFlags _sellFlags =  Wood | Stone | Iron | Fuel | Tool | Textile | Clothing | Alcohol;
			RawMaterialFlags _wantFlags = Wood | Stone | Iron | Fuel | Tool | Textile | Clothing | Alcohol;
			RawMaterialFlags _buyFlags = 0;
		}
		{
			StringTable _stringTable = "Dialog/StringTable.rsc:merchant";
			String _merchantName = "MerchantGeneral";
			int _itemCount = 20;

			RawMaterialFlags _sellFlags =  Wood | Stone | Iron | Fuel | Tool | Health | Edible | Textile | Clothing | Alcohol;
			RawMaterialFlags _wantFlags = Wood | Stone | Iron | Fuel | Tool | Health | Edible | Textile | Clothing | Alcohol;
			RawMaterialFlags _buyFlags = 0;

			ComponentDescription _additionalItems
			[
			]

			SelectGroup _naturalResources
			[
				Crop,
				Orchard
			]
		}
		{
			StringTable _stringTable = "Dialog/StringTable.rsc:merchant";
			String _merchantName = "MerchantSeed";
			int _itemCount = 2;

			RawMaterialFlags _sellFlags = 0;
			RawMaterialFlags _wantFlags = Wood | Stone | Iron | Fuel | Tool | Textile | Clothing;
			RawMaterialFlags _buyFlags = 0;

			ComponentDescription _additionalItems
			[
			]

			SelectGroup _naturalResources
			[
				Crop,
				Orchard
			]
		}
		{
			StringTable _stringTable = "Dialog/StringTable.rsc:merchant";
			String _merchantName = "MerchantLivestock";
			int _itemCount = 2;

			RawMaterialFlags _sellFlags = 0;
			RawMaterialFlags _wantFlags = Wood | Stone | Iron | Fuel | Tool | Textile | Clothing;
			RawMaterialFlags _buyFlags = 0;

			ComponentDescription _additionalItems
			[
			]

			SelectGroup _naturalResources
			[
				Livestock,
			]
		}
	]
}