package playcanvas;

@:jsRequire("playcanvas", "ShaderHandler") extern class ShaderHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : ShaderHandler;
}