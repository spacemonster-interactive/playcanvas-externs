package playcanvas;

/**
	Helps with accessing a specific vertex attribute.
**/
@jsInaccessible extern class VertexIteratorAccessor {
	/**
		Create a new VertexIteratorAccessor instance.
	**/
	function new(buffer:js.lib.ArrayBuffer, vertexElement:{ var name : String; var numComponents : Float; var dataType : Float; var normalize : Bool; var offset : Float; var stride : Float; var scopeId : ScopeId; var size : Float; }, vertexFormat:VertexFormat);
	var index : Float;
	var numComponents : Float;
	var array : ts.AnyOf7<js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array>;
	var stride : Float;
	/**
		Set all the attribute components at the iterator's current index.
	**/
	function set(a:Float, ?b:Float, ?c:Float, ?d:Float):Void;
	/**
		Read attribute components to an output array.
	**/
	function getToArray(offset:Float, outputArray:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, outputIndex:Float):Void;
	/**
		Write attribute components from an input array.
	**/
	function setFromArray(index:Float, inputArray:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, inputIndex:Float):Void;
	/**
		Get a attribute component at the iterator's current index.
	**/
	function get(offset:Float):Float;
	static var prototype : VertexIteratorAccessor;
}