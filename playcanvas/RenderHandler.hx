package playcanvas;

/**
	Resource handler used for loading {@link Render} resources.
**/
@:jsRequire("playcanvas", "RenderHandler") extern class RenderHandler {
	/**
		Create a new RenderHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _registry : AssetRegistry;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Render;
	function patch(asset:Dynamic, registry:Dynamic):Void;
	static var prototype : RenderHandler;
}