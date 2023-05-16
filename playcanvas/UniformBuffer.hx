package playcanvas;

/**
	A uniform buffer represents a GPU memory buffer storing the uniforms.
**/
@jsInaccessible extern class UniformBuffer {
	/**
		Create a new UniformBuffer instance.
	**/
	function new(graphicsDevice:GraphicsDevice, format:UniformBufferFormat);
	var device : GraphicsDevice;
	var format : UniformBufferFormat;
	var impl : Dynamic;
	var storage : js.lib.ArrayBuffer;
	var storageFloat32 : js.lib.Float32Array;
	var storageInt32 : js.lib.Int32Array;
	/**
		Frees resources associated with this uniform buffer.
	**/
	function destroy():Void;
	/**
		Called when the rendering context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		Assign a value to the uniform specified by its format. This is the fast version of assigning
		a value to a uniform, avoiding any lookups.
	**/
	function setUniform(uniformFormat:UniformFormat):Void;
	/**
		Assign a value to the uniform specified by name.
	**/
	function set(name:String):Void;
	function update():Void;
	static var prototype : UniformBuffer;
}