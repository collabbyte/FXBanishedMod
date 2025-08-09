ImmigrationDescription immigration
{
	ComponentDescription _nomad = "Template/Nomad.rsc";

	int _requiredPopulation = 0;
	ComponentDescription _requiredStructures
	[
	]

	float _minGroupPercent = 0.1;
	float _maxGroupPercent = 0.25;
	float _timeDelayMonths = 12;
	float _timeDelayMonthsTol = 0;
	int _arriveMinMonth = 1;
	int _arriveMaxMonth = 2;
	int _leaveMonth = 7;
	int _spawnRadius = 10;

	float _sicknessAmount = 0;
	int _sicknessTimeInMonths = 0;
}