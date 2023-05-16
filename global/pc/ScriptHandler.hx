package global.pc;

/**
	Resource handler for loading JavaScript files dynamically.  Two types of JavaScript files can be
	loaded, PlayCanvas scripts which contain calls to {@link createScript}, or regular JavaScript
	files, such as third-party libraries.
**/
@:native("pc.ScriptHandler") extern class ScriptHandler {
	/**
		Create a new ScriptHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _app : AppBase;
	var _scripts : { };
	var _cache : { };
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	function _loadScript(url:Dynamic, callback:Dynamic):Void;
	static var prototype : ScriptHandler;
}