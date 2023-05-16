package playcanvas;

/**
	Resource handler used for loading {@link Scene} resources.
**/
@:jsRequire("playcanvas", "SceneHandler") extern class SceneHandler {
	/**
		Create a new SceneHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _app : AppBase;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Scene;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : SceneHandler;
}