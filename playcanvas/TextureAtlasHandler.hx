package playcanvas;

/**
	Resource handler used for loading {@link TextureAtlas} resources.
**/
@:jsRequire("playcanvas", "TextureAtlasHandler") extern class TextureAtlasHandler {
	/**
		Create a new TextureAtlasHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _loader : ResourceLoader;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):TextureAtlas;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	function _onAssetChange(asset:Dynamic, attribute:Dynamic, value:Dynamic):Void;
	static var prototype : TextureAtlasHandler;
}