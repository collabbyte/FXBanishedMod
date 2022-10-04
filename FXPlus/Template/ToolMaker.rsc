ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "ToolRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialCoal.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialIron.rsc";
					int _count = 1;
				}
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 1;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialSteelTool.rsc";
			ResourceLimit _resourceLimit = Tools;
			String _requirements = "SteelToolRequire";
		}
		{
			ConsumeRawMaterial _consumeMaterials
			[
				{
					ComponentDescription _material = "Template/RawMaterialWood.rsc";
					int _count = 2;
				}
			]
			ComponentDescription _produceMaterial = "Template/RawMaterialCoal.rsc";
			ResourceLimit _resourceLimit = Coal;
			String _requirements = "CoalRequire";
		}
	]
	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";
	int _workRequired = 5;
	ToolType _toolType = Anvil;
	float _workTime = 4.0;
	
}