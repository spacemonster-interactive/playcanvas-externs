package global.pc;

/**
	A vertex buffer is the mechanism via which the application specifies vertex data to the graphics
	hardware.
**/
@:native("pc.VertexBuffer") extern class VertexBuffer {
	/**
		Create a new VertexBuffer instance.
	**/
	function new(graphicsDevice:GraphicsDevice, format:VertexFormat, numVertices:Float, ?usage:Float, ?initialData:js.lib.ArrayBuffer);
	var device : GraphicsDevice;
	var format : VertexFormat;
	var numVertices : Float;
	var usage : Float;
	var id : Float;
	var impl : Dynamic;
	var numBytes : Float;
	var storage : js.lib.ArrayBuffer;
	/**
		Frees resources associated with this vertex buffer.
	**/
	function destroy():Void;
	function adjustVramSizeTracking(vram:Dynamic, size:Dynamic):Void;
	/**
		Called when the rendering context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		Returns the data format of the specified vertex buffer.
	**/
	function getFormat():VertexFormat;
	/**
		Returns the usage type of the specified vertex buffer. This indicates whether the buffer can
		be modified once and used many times {@link BUFFER_STATIC}, modified repeatedly and used
		many times {@link BUFFER_DYNAMIC} or modified once and used at most a few times
		{@link BUFFER_STREAM}.
	**/
	function getUsage():Float;
	/**
		Returns the number of vertices stored in the specified vertex buffer.
	**/
	function getNumVertices():Float;
	/**
		Returns a mapped memory block representing the content of the vertex buffer.
	**/
	function lock():js.lib.ArrayBuffer;
	/**
		Notifies the graphics engine that the client side copy of the vertex buffer's memory can be
		returned to the control of the graphics driver.
	**/
	function unlock():Void;
	/**
		Copies data into vertex buffer's memory.
	**/
	function setData(?data:js.lib.ArrayBuffer):Bool;
	static var prototype : VertexBuffer;
}