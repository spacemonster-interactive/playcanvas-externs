package playcanvas;

@:jsRequire("playcanvas", "ScriptLegacyComponent") extern class ScriptLegacyComponent extends Component {
	function new(system:Dynamic, entity:Dynamic);
	function send(name:Dynamic, functionName:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function onSetScripts(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _updateScriptAttributes(oldValue:Dynamic, newValue:Dynamic):Bool;
	function _loadFromCache(urls:Dynamic):Bool;
	function _loadScripts(urls:Dynamic):Void;
	static var prototype : ScriptLegacyComponent;
}