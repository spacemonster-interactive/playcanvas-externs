package global.pc;

/**
	Callback used by {@link AppBasestart } and itself to request
	the rendering of a new animation frame.
**/
typedef MakeTickCallback = ts.AnyOf3<() -> Dynamic, (timestamp:Float) -> Dynamic, (timestamp:Float, frame:Dynamic) -> Dynamic>;