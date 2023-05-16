package playcanvas;

/**
	A vertex iterator simplifies the process of writing vertex data to a vertex buffer.
**/
@:jsRequire("playcanvas", "VertexIterator") extern class VertexIterator {
	/**
		Create a new VertexIterator instance.
	**/
	function new(vertexBuffer:VertexBuffer);
	var vertexBuffer : VertexBuffer;
	var vertexFormatSize : Float;
	var buffer : js.lib.ArrayBuffer;
	var accessors : Array<VertexIteratorAccessor>;
	/**
		The vertex buffer elements.
	**/
	var element : haxe.DynamicAccess<VertexIteratorAccessor>;
	/**
		Moves the vertex iterator on to the next vertex.
	**/
	function next(?count:Float):Void;
	/**
		Notifies the vertex buffer being iterated that writes are complete. Internally the vertex
		buffer is unlocked and vertex data is uploaded to video memory.
	**/
	function end():Void;
	/**
		Copies data for specified semantic into vertex buffer. Works with both interleaved (slower)
		and non-interleaved (fast) vertex buffers.
	**/
	function writeData(semantic:String, data:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>, numVertices:Float):Void;
	/**
		Function to extract elements of a specified semantic from vertex buffer into flat array
		(data). Works with both interleaved (slower) and non-interleaved (fast) vertex buffers.
		Returns number of vertices. Note: when data is a typed array and is smaller than needed,
		only part of the data gets copied out (typed arrays ignore read/write out of range).
	**/
	function readData(semantic:String, data:ts.AnyOf9<Array<Float>, js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Int32Array>):Float;
	static var prototype : VertexIterator;
}