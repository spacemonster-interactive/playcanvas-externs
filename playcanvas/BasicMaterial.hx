package playcanvas;

/**
	A BasicMaterial is for rendering unlit geometry, either using a constant color or a color map
	modulated with a color.
**/
@:jsRequire("playcanvas", "BasicMaterial") extern class BasicMaterial extends Material {
	/**
		The flat color of the material (RGBA, where each component is 0 to 1).
	**/
	var color : Color;
	var colorUniform : js.lib.Float32Array;
	/**
		The color map of the material (default is null). If specified, the color map is
		modulated by the color property.
	**/
	var colorMap : Null<Texture>;
	var vertexColors : Bool;
	/**
		Copy a `BasicMaterial`.
	**/
	function copy(source:BasicMaterial):BasicMaterial;
	/**
		Clone a material.
	**/
	function clone():BasicMaterial;
	static var prototype : BasicMaterial;
}