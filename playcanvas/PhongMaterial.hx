package playcanvas;

@:jsRequire("playcanvas", "PhongMaterial") extern class PhongMaterial {
	function new();
	static var prototype : StandardMaterial;
	static var TEXTURE_PARAMETERS : Array<Dynamic>;
	static var CUBEMAP_PARAMETERS : Array<Dynamic>;
}