RawMaterialDescription rawmaterial
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	String _name = "Walnut";
		
	int _lowCreateCount = 75;
	int _highCreateCount = 98;

	int _weight = 1;
	int _createChance = 1;
	
	RawMaterialFlags _flags = Edible | Protein;

	float _carryScale = 0.5;
}