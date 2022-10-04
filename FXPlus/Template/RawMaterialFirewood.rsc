RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Firewood";
		
	int _lowCreateCount = 5;
	int _highCreateCount = 6;

	int _weight = 4;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Fuel | WoodFuel;
	bool _preferred = true;

	float _carryScale = 0.33;
}