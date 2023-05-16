package global.pc;

/**
	Callback used by {@link ResourceLoaderload } when a resource is loaded (or an error occurs).
**/
typedef ResourceLoaderCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, resource:Dynamic) -> Dynamic>;