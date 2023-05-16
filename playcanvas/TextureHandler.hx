package playcanvas;

/**
	Resource handler used for loading 2D and 3D {@link Texture} resources.
**/
@:jsRequire("playcanvas", "TextureHandler") extern class TextureHandler {
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
	var imgParser : ImgParser;
	var parsers : {
		var dds : DdsParser;
		var ktx : KtxParser;
		var ktx2 : Ktx2Parser;
		var basis : BasisParser;
		var hdr : HdrParser;
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