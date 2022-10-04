RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "WinterCoat";
	String _nameSmall = "WinterCoatSmall";
	
		
	int _lowCreateCount = 2;
	int _highCreateCount = 3;
	int _weight = 10;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Clothing | ClothingWarm;
	bool _preferred = true;

	float _carryScale = 0.33;
}