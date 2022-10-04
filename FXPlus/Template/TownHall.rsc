ImmigrationDescription immigration
{
	ComponentDescription _nomad = "Template/Nomad.rsc";

	int _requiredPopulation = 0;
	// ComponentDescription _requiredStructures
	// [
	// 	"Template/Market.rsc"
	// 	"Template/TradingPost.rsc"
	// ]

	float _minGroupPercent = 0.05;
	float _maxGroupPercent = 0.15;
	float _timeDelayMonths = 24;
	float _timeDelayMonthsTol = 0;
	int _arriveMinMonth = 1;
	int _arriveMaxMonth = 1;
	int _leaveMonth = 7;
	int _spawnRadius = 10;

	float _sicknessAmount = 0;
	int _sicknessTimeInMonths = 0;
}