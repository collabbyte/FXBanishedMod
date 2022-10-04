// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",

		"model",
		"character",
		"animal",
		"select",
		"livestock",
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "UI/FXLivestockDeerSpriteSheet.rsc";
	String _spriteName = "DeersSmall";
	StringTable _stringTable = "UI/FXLivestockDeerStringTable.rsc";
	String _stringName = "Deers";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 400;

	// how much is sold in a single sale
	int _stackCount = 12;
	int _minStackCount = 8;
}

CharacterDescription character
{
	float _headingOffset = 0.0;
	float _turnFilter = 0.97;
	float _defaultAnimationBlendTime = 0.33;
	float _minHeight = -1.2;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "UI/FXLivestockDeerSpriteSheet.rsc";
	String _spriteName = "Deer";
	StringTable _stringTable = "UI/FXLivestockDeerStringTable.rsc";
	String _stringName = "Deers";
	SelectGroup _group = Livestock;
}

AnimalDescription animal
{
	ComponentDescription _rawMaterial 
	[	
		"Template/RawMaterialVenison.rsc"
		"Template/RawMaterialLeather.rsc"
	]

	int _roamSize = 8;
	int _requiredArea = 4;
	
	float _maxAge = 3.0;
	float _maxAgeTolerance = 0.5;
	float _ageForOffspring = 1.0;
	float _offspringTerm = 10.0;
	float _offsprintTermTolerance = 0.0;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Animals\Deer\DeerAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Animals\Deer\DeerMesh.rsc" 
				"Models\Animals\Deer\DeerFMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = true;
}

LivestockDescription livestock 
{ 
}
