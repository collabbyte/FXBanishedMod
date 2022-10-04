RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Herb";
		
	int _lowCreateCount = 3;
	int _highCreateCount = 5;
	int _weight = 1;
	int _createChance = 1;

	RawMaterialFlags _flags = Health;

	float _carryScale = 0.66;
}