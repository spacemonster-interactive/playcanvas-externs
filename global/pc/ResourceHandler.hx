package global.pc;

typedef ResourceHandler = {
	function load(url:ts.AnyOf2<String, Dynamic>, callback:ResourceHandlerCallback, ?asset:Asset):Void;
	function open(url:String, data:Dynamic, ?asset:Asset):Dynamic;
	@:optional
	function patch(asset:Asset, assets:AssetRegistry):Void;
};