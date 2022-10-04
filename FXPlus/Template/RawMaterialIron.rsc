RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Iron";
	String _nameSmall = "IronSmall";
			
	int _lowCreateCount = 2;
	int _highCreateCount = 3;
	int _weight = 25;
	int _createChance = 1;

	RawMaterialFlags _flags = Iron;

	float _carryScale = 0.33;
}