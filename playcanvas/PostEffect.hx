package playcanvas;

/**
	Base class for all post effects. Post effects take a a render target as input apply effects to
	it and then render the result to an output render target or the screen if no output is
	specified.
**/
@:jsRequire("playcanvas", "PostEffect") extern class PostEffect {
	/**
		Create a new PostEffect instance.
	**/
	function new(graphicsDevice:GraphicsDevice);
	/**
		The graphics device of the application.
	**/
	var device : GraphicsDevice;
	/**
		The property that should to be set to `true` (by the custom post effect) if a depth map
		is necessary (default is false).
	**/
	var needsDepthBuffer : Bool;
	/**
		Render the post effect using the specified inputTarget to the specified outputTarget.
	**/
	function render(inputTarget:RenderTarget, outputTarget:RenderTarget, ?rect:Vec4):Void;
	/**
		Draw a screen-space rectangle in a render target, using a specified shader.
	**/
	function drawQuad(target:RenderTarget, shader:Shader, ?rect:Vec4):Void;
	static var prototype : PostEffect;
	/**
		A simple vertex shader used to render a quad, which requires 'vec2 aPosition' in the vertex
		buffer, and generates uv coordinates vUv0 for use in the fragment shader.
	**/
	static var quadVertexShader : String;
}