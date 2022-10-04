RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Ale";
	String _nameSmall = "AleSmall";
		
	int _lowCreateCount = 11;
	int _highCreateCount = 15;

	int _weight = 1;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Alcohol;

	float _carryScale = 0.5;
}