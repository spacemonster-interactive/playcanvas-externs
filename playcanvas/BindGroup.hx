package playcanvas;

/**
	A bind group represents an collection of {@link UniformBuffer} and {@link Texture} instance,
	which can be bind on a GPU for rendering.
**/
@jsInaccessible extern class BindGroup {
	/**
		Create a new Bind Group.
	**/
	function new(graphicsDevice:GraphicsDevice, format:BindGroupFormat, ?defaultUniformBuffer:UniformBuffer);
	var id : Float;
	var device : GraphicsDevice;
	var format : BindGroupFormat;
	var dirty : Bool;
	var impl : Dynamic;
	var textures : Array<Dynamic>;
	var uniformBuffers : Array<Dynamic>;
	var defaultUniformBuffer : UniformBuffer;
	/**
		Frees resources associated with this bind group.
	**/
	function destroy():Void;
	/**
		Assign a uniform buffer to a slot.
	**/
	function setUniformBuffer(name:String, uniformBuffer:UniformBuffer):Void;
	/**
		Assign a texture to a named slot.
	**/
	function setTexture(name:String, texture:Texture):Void;
	/**
		Applies any changes made to the bind group's properties.
	**/
	function update():Void;
	static var prototype : BindGroup;
}