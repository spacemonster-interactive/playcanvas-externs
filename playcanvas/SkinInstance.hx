package playcanvas;

/**
	A skin instance is responsible for generating the matrix palette that is used to skin vertices
	from object space to world space.
**/
@:jsRequire("playcanvas", "SkinInstance") extern class SkinInstance {
	/**
		Create a new SkinInstance instance.
	**/
	function new(skin:Skin);
	/**
		An array of nodes representing each bone in this skin instance.
	**/
	var bones : Array<GraphNode>;
	var _dirty : Bool;
	var _rootBone : Dynamic;
	var _skinUpdateIndex : Float;
	var _updateBeforeCull : Bool;
	var rootBone : Dynamic;
	function init(device:Dynamic, numBones:Dynamic):Void;
	var boneTexture : Texture;
	var matrixPalette : ts.AnyOf3<js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array>;
	function destroy():Void;
	function resolve(rootBone:Dynamic, entity:Dynamic):Void;
	function initSkin(skin:Dynamic):Void;
	var skin : Dynamic;
	var matrices : Array<Dynamic>;
	function uploadBones(device:Dynamic):Void;
	function _updateMatrices(rootNode:Dynamic, skinUpdateIndex:Dynamic):Void;
	function updateMatrices(rootNode:Dynamic, skinUpdateIndex:Dynamic):Void;
	function updateMatrixPalette(rootNode:Dynamic, skinUpdateIndex:Dynamic):Void;
	static var prototype : SkinInstance;
}