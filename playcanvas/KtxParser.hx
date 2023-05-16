package playcanvas;

/**
	Texture parser for ktx files.
**/
@jsInaccessible extern class KtxParser {
	function new(registry:Dynamic);
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	function parse(data:Dynamic):{
		var format : Dynamic;
		var width : Float;
		var height : Float;
		var levels : Array<Array<Dynamic>>;
		var cubemap : Bool;
	};
	static var prototype : KtxParser;
}