package global.pc;

/**
	An object that renders a quad using a {@link Shader}.
	
	Example:
	
	```javascript
	const shader = pc.createShaderFromCode(app.graphicsDevice, vertexShader, fragmentShader, `MyShader`);
	const quad = new QuadRender(shader);
	quad.render();
	quad.destroy();
	```
**/
@:native("pc.QuadRender") extern class QuadRender {
	/**
		Create a new QuadRender instance.
	**/
	function new(shader:Shader);
	var uniformBuffer : playcanvas.UniformBuffer;
	var bindGroup : playcanvas.BindGroup;
	var shader : Shader;
	/**
		Destroys the resources associated with this instance.
	**/
	function destroy():Void;
	/**
		Renders the quad. If the viewport is provided, the original viewport and scissor is restored
		after the rendering.
	**/
	function render(?viewport:Vec4, ?scissor:Vec4):Void;
	static var prototype : QuadRender;
}