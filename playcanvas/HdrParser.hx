package playcanvas;

/**
	Texture parser for hdr files.
**/
@jsInaccessible extern class HdrParser {
	function new(registry:Dynamic);
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	function parse(data:Dynamic):{
		var width : Float;
		var height : Float;
		var levels : Array<js.lib.Uint8Array>;
	};
	function _readPixels(readStream:Dynamic, width:Dynamic, height:Dynamic, flipY:Dynamic):js.lib.Uint8Array;
	function _readPixelsFlat(readStream:Dynamic, width:Dynamic, height:Dynamic):js.lib.Uint8Array;
	static var prototype : HdrParser;
}