package playcanvas;

/**
	Contains a list of {@link MorphTarget}, a combined delta AABB and some associated data.
**/
@:jsRequire("playcanvas", "Morph") extern class Morph extends RefCountedObject {
	/**
		Create a new Morph instance.
	**/
	function new(targets:Array<MorphTarget>, graphicsDevice:GraphicsDevice, ?options:{ var preferHighPrecision : Bool; });
	var _aabb : BoundingBox;
	var preferHighPrecision : Bool;
	var device : Dynamic;
	var _targets : Array<MorphTarget>;
	var _renderTextureFormat : Float;
	var _textureFormat : Float;
	var _useTextureMorph : Bool;
	final aabb : BoundingBox;
	final morphPositions : Bool;
	final morphNormals : Bool;
	final maxActiveTargets : Float;
	final useTextureMorph : Bool;
	function _init():Void;
	function _findSparseSet(deltaArrays:Dynamic, ids:Dynamic, usedDataIndices:Dynamic):Float;
	function _initTextureBased():Bool;
	var morphTextureWidth : Float;
	var morphTextureHeight : Float;
	var vertexBufferIds : VertexBuffer;
	/**
		Frees video memory allocated by this object.
	**/
	function destroy():Void;
	/**
		The array of morph targets.
	**/
	final targets : Array<MorphTarget>;
	function _updateMorphFlags():Void;
	var _morphPositions : Bool;
	var _morphNormals : Bool;
	function _createTexture(name:Dynamic, format:Dynamic):Texture;
	static var prototype : Morph;
}