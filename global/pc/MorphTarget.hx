package global.pc;

/**
	A Morph Target (also known as Blend Shape) contains deformation data to apply to existing mesh.
	Multiple morph targets can be blended together on a mesh. This is useful for effects that are
	hard to achieve with conventional animation and skinning.
**/
@:native("pc.MorphTarget") extern class MorphTarget {
	/**
		Create a new MorphTarget instance.
	**/
	function new(options:{ var deltaPositions : js.lib.ArrayBuffer; var deltaPositionsType : Float; @:optional var deltaNormals : js.lib.ArrayBuffer; var deltaNormalsType : Float; @:optional var name : String; @:optional var aabb : BoundingBox; @:optional var defaultWeight : Float; @:optional var preserveData : Bool; }, args:haxe.extern.Rest<Dynamic>);
	/**
		A used flag. A morph target can be used / owned by the Morph class only one time.
	**/
	var used : Bool;
	var options : {
		var deltaPositions : js.lib.ArrayBuffer;
		var deltaPositionsType : Float;
		@:optional
		var deltaNormals : js.lib.ArrayBuffer;
		var deltaNormalsType : Float;
		@:optional
		var name : String;
		@:optional
		var aabb : BoundingBox;
		@:optional
		var defaultWeight : Float;
		@:optional
		var preserveData : Bool;
	};
	var _name : String;
	var _defaultWeight : Float;
	var _aabb : BoundingBox;
	var deltaPositions : js.lib.ArrayBuffer;
	function destroy():Void;
	var _vertexBufferPositions : VertexBuffer;
	var _vertexBufferNormals : VertexBuffer;
	var texturePositions : Dynamic;
	var textureNormals : Dynamic;
	/**
		The name of the morph target.
	**/
	final name : String;
	/**
		The default weight of the morph target.
	**/
	final defaultWeight : Float;
	final aabb : BoundingBox;
	final morphPositions : Bool;
	final morphNormals : Bool;
	/**
		Returns an identical copy of the specified morph target. This can only be used if the morph target
		was created with options.preserveData set to true.
	**/
	function clone():MorphTarget;
	function _postInit():Void;
	function _initVertexBuffers(graphicsDevice:Dynamic):Void;
	function _createVertexBuffer(device:Dynamic, data:Dynamic, ?dataType:Float):VertexBuffer;
	function _setTexture(name:Dynamic, texture:Dynamic):Void;
	static var prototype : MorphTarget;
}