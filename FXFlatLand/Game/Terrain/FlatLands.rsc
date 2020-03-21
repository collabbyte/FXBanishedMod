TerrainGenerator resource
{
	StringTable _stringTable = "Dialog/StringTable.rsc:terrainType";
	String _text = "FlatLands";
	bool _exposed = true;

	// materials
	WeakMaterialInstance _terrainMaterial = "Terrain/Terrain.rsc";
	WeakMaterialInstance _riverMaterial = "Terrain/River.rsc";
	WeakMaterialInstance _lakeMaterial = "Terrain/Lake.rsc";

	// size of the map
	Feature _features
	[
		// ------ small ---------
		{	
			int _mapSize = 256;

			// number of flat areas
			int _flatAreaCount = 40;

			// size of flat areas
			int _minFlatAreaSize = 64;
			int _maxFlatAreaSize = 96;

			// number of areas to avoid
			int _avoidAreaCount = 0;
	
			// size of avoidance areas
			int _minAvoidSize = 0;
			int _maxAvoidSize = 0;

			// how many close nodes to connect to
			int _flatAreaConnections = 4;

			// rivers 
			int _streamCount = 0;

			// erosion
			int _erosion = 4000000;

			// number of lakes
			int _minLakeCount = 0;
			int _maxLakeCount = 0;

			// lake size
			int _minLakeSize = 0;
			int _maxLakeSize = 0;

			// number of parts per lake
			int _lakePartCount = 0;

			// part sizes
			int _minLakePartSize = 0;
			int _maxLakePartSize = 0;
		}
		
		// ------ medium ---------
		{
			int _mapSize = 384;

			// number of flat areas
			int _flatAreaCount = 60;

			// size of flat areas
			int _minFlatAreaSize = 64;
			int _maxFlatAreaSize = 96;

			// number of areas to avoid
			int _avoidAreaCount = 0;
	
			// size of avoidance areas
			int _minAvoidSize = 0;
			int _maxAvoidSize = 0;

			// how many close nodes to connect to
			int _flatAreaConnections = 4;

			// rivers 
			int _streamCount = 0;

			// erosion
			int _erosion = 8000000;

			// number of lakes
			int _minLakeCount = 0;
			int _maxLakeCount = 0;

			// lake size
			int _minLakeSize = 0;
			int _maxLakeSize = 0;

			// number of parts per lake
			int _lakePartCount = 0;

			// part sizes
			int _minLakePartSize = 0;
			int _maxLakePartSize = 0;
		}

		// ------ large ---------
		{
			int _mapSize = 512;

			// number of flat areas
			int _flatAreaCount = 80;

			// size of flat areas
			int _minFlatAreaSize = 64;
			int _maxFlatAreaSize = 96;

			// number of areas to avoid
			int _avoidAreaCount = 0;
	
			// size of avoidance areas
			int _minAvoidSize = 0;
			int _maxAvoidSize = 0;

			// how many close nodes to connect to
			int _flatAreaConnections = 4;

			// rivers 
			int _streamCount = 0;

			// erosion
			int _erosion = 16000000;

			// number of lakes
			int _minLakeCount = 0;
			int _maxLakeCount = 0;

			// lake size
			int _minLakeSize = 0;
			int _maxLakeSize = 0;

			// number of parts per lake
			int _lakePartCount = 0;

			// part sizes
			int _minLakePartSize = 0;
			int _maxLakePartSize = 0;
		}
	]
}