RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Bean";
		
	int _lowCreateCount = 30;
	int _highCreateCount = 42;

	int _weight = 1;
	int _createChance = 4;
	
	RawMaterialFlags _flags = Edible | Vegetable;

	float _carryScale = 0.5;
}