RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "SteelTool";
	
		
	int _lowCreateCount = 2;
	int _highCreateCount = 3;
	int _weight = 10;
	int _createChance = 1;

	// tool quality
	int _useValue = 200;
	
	RawMaterialFlags _flags = Tool;
	bool _preferred = true;

	float _carryScale = 0.33;
}