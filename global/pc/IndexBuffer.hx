package global.pc;

/**
	An index buffer stores index values into a {@link VertexBuffer}. Indexed graphical primitives
	can normally utilize less memory that unindexed primitives (if vertices are shared).
	
	Typically, index buffers are set on {@link Mesh} objects.
**/
@:native("pc.IndexBuffer") extern class IndexBuffer {
	/**
		Create a new IndexBuffer instance.
	**/
	function new(graphicsDevice:GraphicsDevice, format:Float, numIndices:Float, ?usage:Float, ?initialData:js.lib.ArrayBuffer);
	var device : GraphicsDevice;
	var format : Float;
	var numIndices : Float;
	var usage : Float;
	var id : Float;
	var impl : Dynamic;
	var bytesPerIndex : Float;
	var numBytes : Float;
	var storage : js.lib.ArrayBuffer;
	/**
		Frees resources associated with this index buffer.
	**/
	function destroy():Void;
	function adjustVramSizeTracking(vram:Dynamic, size:Dynamic):Void;
	/**
		Called when the rendering context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		Returns the data format of the specified index buffer.
	**/
	function getFormat():Float;
	/**
		Returns the number of indices stored in the specified index buffer.
	**/
	function getNumIndices():Float;
	/**
		Gives access to the block of memory that stores the buffer's indices.
	**/
	function lock():js.lib.ArrayBuffer;
	/**
		Signals that the block of memory returned by a call to the lock function is ready to be
		given to the graphics hardware. Only unlocked index buffers can be set on the currently
		active device.
	**/
	function unlock():Void;
	/**
		Set preallocated data on the index buffer.
	**/
	function setData(data:js.lib.ArrayBuffer):Bool;
	/**
		Get the appropriate typed array from an index buffer.
	**/
	private var _lockTypedArray : Dynamic;
	/**
		Copies the specified number of elements from data into index buffer. Optimized for
		performance from both typed array as well as array.
	**/
	function writeData(data:ts.AnyOf4<Array<Float>, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array>, count:Float):Void;
	/**
		Copies index data from index buffer into provided data array.
	**/
	function readData(data:ts.AnyOf4<Array<Float>, js.lib.Uint8Array, js.lib.Uint16Array, js.lib.Uint32Array>):Float;
	static var prototype : IndexBuffer;
}