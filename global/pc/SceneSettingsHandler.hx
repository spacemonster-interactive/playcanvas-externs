package global.pc;

@:native("pc.SceneSettingsHandler") extern class SceneSettingsHandler {
	function new(app:Dynamic);
	var _app : Dynamic;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	static var prototype : SceneSettingsHandler;
}