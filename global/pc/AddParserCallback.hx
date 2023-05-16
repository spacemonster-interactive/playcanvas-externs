package global.pc;

/**
	Callback used by {@link ModelHandleraddParser } to decide on which parser to use.
**/
typedef AddParserCallback = (url:String, data:Dynamic) -> Bool;