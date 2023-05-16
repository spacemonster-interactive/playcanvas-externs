package playcanvas;

/**
	Parser for browser-supported image formats.
**/
@jsInaccessible extern class ImgParser {
	function new(registry:Dynamic, device:Dynamic);
	var crossOrigin : String;
	var maxRetries : Float;
	var device : Dynamic;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, device:Dynamic, ?textureOptions:{ }):Texture;
	function _loadImage(url:Dynamic, originalUrl:Dynamic, crossOrigin:Dynamic, callback:Dynamic):Void;
	function _loadImageBitmap(url:Dynamic, originalUrl:Dynamic, crossOrigin:Dynamic, callback:Dynamic):Void;
	function _loadImageBitmapFromBlob(blob:Dynamic, callback:Dynamic):Void;
	static var prototype : ImgParser;
}