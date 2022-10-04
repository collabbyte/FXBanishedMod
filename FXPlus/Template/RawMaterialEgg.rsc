RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Egg";
		
	int _lowCreateCount = 9;
	int _highCreateCount = 9;

	int _weight = 1;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Edible | Protein;

	float _carryScale = 0.5;
}