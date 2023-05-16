package playcanvas;

/**
	Callback used by {@link XrHitTeststart } and {@link XrHitTeststartForInputSource }.
**/
typedef XrHitTestStartCallback = (err:Null<js.lib.Error>, hitTestSource:Null<XrHitTestSource>) -> Dynamic;