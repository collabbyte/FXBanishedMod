Profession base
{
	StringTable _stringTable = "Dialog/StringTable.rsc:professions";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
}

Profession miner : "base"
{
	String _text = "ProfessionMiner";
	String _toolTipText = "ProfessionMinerTip";
	String _deathText = "ProfessionMinerDeath";

	int _sortPriority = 1600;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}

Profession stonecutter : "base"
{
	String _text = "ProfessionStoneCutter";
	String _toolTipText = "ProfessionStoneCutterTip";
	String _deathText = "ProfessionStoneCutterDeath";

	int _sortPriority = 1700;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 50;
		float _population = 100;
	}
}
