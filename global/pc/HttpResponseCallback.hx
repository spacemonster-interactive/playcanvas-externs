package global.pc;

/**
	Callback used by {@link Httpget }, {@link Httppost }, {@link Httpput }, {@link Httpdel }, and
	{@link Httprequest }.
**/
typedef HttpResponseCallback = ts.AnyOf2<(err:Null<ts.AnyOf3<String, Float, js.lib.Error>>) -> Dynamic, (err:Null<ts.AnyOf3<String, Float, js.lib.Error>>, response:Dynamic) -> Dynamic>;