package playcanvas;

@jsInaccessible extern class ShadowMapCache {
	function new();
	var cache : js.lib.Map<Dynamic, Dynamic>;
	function destroy():Void;
	function clear():Void;
	function getKey(light:Dynamic):String;
	function get(device:Dynamic, light:Dynamic):Dynamic;
	function add(light:Dynamic, shadowMap:Dynamic):Void;
	static var prototype : ShadowMapCache;
}