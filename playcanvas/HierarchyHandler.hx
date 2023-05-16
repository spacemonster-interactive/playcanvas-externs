package playcanvas;

@:jsRequire("playcanvas", "HierarchyHandler") extern class HierarchyHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _app : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Entity;
	static var prototype : HierarchyHandler;
}