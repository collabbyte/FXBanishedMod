RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Onion";
		
	int _lowCreateCount = 24;
	int _highCreateCount = 33;
	int _weight = 1;
	int _createChance = 1;

	RawMaterialFlags _flags = Edible | Vegetable;

	float _carryScale = 0.66;
}