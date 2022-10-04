RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Stone";
	String _nameSmall = "StoneSmall";
		
	int _lowCreateCount = 2;
	int _highCreateCount = 3;
	int _weight = 15;
	int _createChance = 1;

	RawMaterialFlags _flags = Stone;

	float _carryScale = 0.33;
}