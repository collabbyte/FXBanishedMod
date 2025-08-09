Toolbar base
{
	StringTable _stringTable = "Dialog/StringTable.rsc:toolBar";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
}

Toolbar capture : "base"		{  bool _visible = true;	Toolbar _parent = "reports";		int _sortPriority = 1100; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityCapture.rsc";			Keys _hotKey = Camera0; bool _autoHotKey = true;}
Toolbar debug : "base"			{  bool _visible = true;	Toolbar _parent = "reports";		int _sortPriority = 1200; 	Action _action = Utility;	ComponentDescription _tool = "Template/UtilityDebug.rsc";			Keys _hotKey = Camera1; bool _autoHotKey = true;}
