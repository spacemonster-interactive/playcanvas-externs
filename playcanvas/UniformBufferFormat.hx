package playcanvas;

/**
	A descriptor that defines the layout of of data inside the {@link UniformBuffer}.
**/
@jsInaccessible extern class UniformBufferFormat {
	/**
		Create a new UniformBufferFormat instance.
	**/
	function new(graphicsDevice:GraphicsDevice, uniforms:Array<UniformFormat>);
	var byteSize : Float;
	var map : js.lib.Map<String, UniformFormat>;
	var scope : ScopeSpace;
	var uniforms : Array<UniformFormat>;
	/**
		Returns format of a uniform with specified name.
	**/
	function get(name:String):UniformFormat;
	function getShaderDeclaration(bindGroup:Dynamic, bindIndex:Dynamic):String;
	static var prototype : UniformBufferFormat;
}