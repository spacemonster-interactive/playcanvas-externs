package playcanvas;

/**
	Parser for basis files.
**/
@jsInaccessible extern class BasisParser {
	function new(registry:Dynamic, device:Dynamic);
	var device : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	static var prototype : BasisParser;
}