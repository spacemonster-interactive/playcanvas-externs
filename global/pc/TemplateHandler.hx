package global.pc;

@:native("pc.TemplateHandler") extern class TemplateHandler {
	function new(app:Dynamic);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _app : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Template;
	static var prototype : TemplateHandler;
}