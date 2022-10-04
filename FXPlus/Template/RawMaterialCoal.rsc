RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Coal";
	String _nameSmall = "CoalSmall";
		
	int _lowCreateCount = 5;
	int _highCreateCount = 6;

	int _weight = 15;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Fuel | CoalFuel;

	float _carryScale = 0.33;
}