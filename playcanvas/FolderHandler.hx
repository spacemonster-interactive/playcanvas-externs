package playcanvas;

@:jsRequire("playcanvas", "FolderHandler") extern class FolderHandler {
	function new();
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	static var prototype : FolderHandler;
}