package playcanvas;

/**
	Callback used by {@link ResourceHandlerload } when a resource is loaded (or an error occurs).
**/
typedef ResourceHandlerCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, response:Dynamic) -> Dynamic>;