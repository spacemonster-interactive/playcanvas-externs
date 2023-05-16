package playcanvas;

/**
	Legacy texture parser for dds files.
**/
@jsInaccessible extern class DdsParser {
	function new(registry:Dynamic);
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	static var prototype : DdsParser;
}