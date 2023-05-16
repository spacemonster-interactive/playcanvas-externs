package global.pc;

@:native("pc.TextHandler") extern class TextHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : TextHandler;
}