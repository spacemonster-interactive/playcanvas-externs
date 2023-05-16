package playcanvas;

/**
	Texture parser for ktx2 files.
**/
@jsInaccessible extern class Ktx2Parser {
	function new(registry:Dynamic, device:Dynamic);
	var maxRetries : Float;
	var device : Dynamic;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	function parse(arraybuffer:Dynamic, url:Dynamic, callback:Dynamic, asset:Dynamic):Dynamic;
	static var prototype : Ktx2Parser;
}