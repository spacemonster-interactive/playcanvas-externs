package playcanvas;

@jsInaccessible extern class ShadowMap {
	function new(texture:Dynamic, targets:Dynamic);
	var texture : Dynamic;
	var cached : Bool;
	var renderTargets : Dynamic;
	function destroy():Void;
	static var prototype : ShadowMap;
	static function getShadowFormat(device:Dynamic, shadowType:Dynamic):Float;
	static function getShadowFiltering(device:Dynamic, shadowType:Dynamic):Float;
	static function create(device:Dynamic, light:Dynamic):ShadowMap;
	static function createAtlas(device:Dynamic, resolution:Dynamic, shadowType:Dynamic):ShadowMap;
	static function create2dMap(device:Dynamic, size:Dynamic, shadowType:Dynamic):ShadowMap;
	static function createCubemap(device:Dynamic, size:Dynamic):ShadowMap;
}