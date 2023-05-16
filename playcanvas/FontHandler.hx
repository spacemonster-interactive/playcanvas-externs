package playcanvas;

/**
	Resource handler used for loading {@link Font} resources.
**/
@:jsRequire("playcanvas", "FontHandler") extern class FontHandler {
	/**
		Create a new FontHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _loader : ResourceLoader;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function _loadTextures(url:Dynamic, data:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, asset:Dynamic):Font;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : FontHandler;
}