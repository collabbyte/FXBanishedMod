RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Blueberry";
		
	int _lowCreateCount = 24;
	int _highCreateCount = 33;

	int _weight = 1;
	int _createChance = 1;

	RawMaterialFlags _flags = Edible | Fruit;

	float _carryScale = 0.66;
}