package playcanvas;

/**
	A vertex format is a descriptor that defines the layout of vertex data inside a
	{@link VertexBuffer}.
**/
@:jsRequire("playcanvas", "VertexFormat") extern class VertexFormat {
	/**
		Create a new VertexFormat instance.
	**/
	function new(graphicsDevice:GraphicsDevice, description:Array<{ var semantic : String; var components : Float; var type : Float; @:optional var normalize : Bool; }>, ?vertexCount:Float);
	var device : GraphicsDevice;
	var _elements : Array<{
		var name : String;
		var offset : Dynamic;
		var stride : Dynamic;
		var dataType : Float;
		var numComponents : Float;
		var normalize : Bool;
		var size : Float;
	}>;
	var hasUv0 : Bool;
	var hasUv1 : Bool;
	var hasColor : Bool;
	var hasTangents : Bool;
	var verticesByteSize : Float;
	var vertexCount : Float;
	var interleaved : Bool;
	var instancing : Bool;
	var size : Float;
	final elements : Array<{
		var name : String;
		var offset : Dynamic;
		var stride : Dynamic;
		var dataType : Float;
		var numComponents : Float;
		var normalize : Bool;
		var size : Float;
	}>;
	/**
		Applies any changes made to the VertexFormat's properties.
	**/
	private var update : Dynamic;
	/**
		Evaluates hash values for the format allowing fast compare of batching / rendering compatibility.
	**/
	private var _evaluateHash : Dynamic;
	var batchingHash : Float;
	var renderingHashString : String;
	var renderingHash : Float;
	static var prototype : VertexFormat;
	private static var _defaultInstancingFormat : Dynamic;
	/**
		The {@link VertexFormat} used to store matrices of type {@link Mat4} for hardware instancing.
	**/
	static function getDefaultInstancingFormat(graphicsDevice:GraphicsDevice):VertexFormat;
}