package global.pc;

/**
	Resource handler used for loading 2D and 3D {@link Texture} resources.
**/
@:native("pc.TextureHandler") extern class TextureHandler {
	/**
		Create a new TextureHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _device : GraphicsDevice;
	var _assets : AssetRegistry;
	var imgParser : playcanvas.ImgParser;
	var parsers : {
		var dds : playcanvas.DdsParser;
		var ktx : playcanvas.KtxParser;
		var ktx2 : playcanvas.Ktx2Parser;
		var basis : playcanvas.BasisParser;
		var hdr : playcanvas.HdrParser;
	};
	var crossOrigin : String;
	var maxRetries : Float;
	function _getUrlWithoutParams(url:Dynamic):Dynamic;
	function _getParser(url:Dynamic):Dynamic;
	function _getTextureOptions(asset:Dynamic):{
		var profilerHint : Float;
	};
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, asset:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : TextureHandler;
}