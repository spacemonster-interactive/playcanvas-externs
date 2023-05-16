package playcanvas;

/**
	Internal class abstracting the access to the depth and color texture of the scene.
	color frame buffer is copied to a texture
	For webgl 2 devices, the depth buffer is copied to a texture
	for webgl 1 devices, the scene's depth is rendered to a separate RGBA texture
	
	TODO: implement mipmapped color buffer support for WebGL 1 as well, which requires
	the texture to be a power of two, by first downscaling the captured framebuffer
	texture to smaller power of 2 texture, and then generate mipmaps and use it for rendering
	TODO: or even better, implement blur filter to have smoother lower levels
**/
@jsInaccessible extern class SceneGrab {
	/**
		Create an instance of SceneGrab.
	**/
	function new(device:GraphicsDevice, scene:Scene);
	var scene : Scene;
	var device : GraphicsDevice;
	var layer : Layer;
	function setupUniform(device:Dynamic, depth:Dynamic, buffer:Dynamic):Void;
	function allocateTexture(device:Dynamic, source:Dynamic, name:Dynamic, format:Dynamic, isDepth:Dynamic, mipmaps:Dynamic):Texture;
	function getSourceColorFormat(texture:Dynamic):Dynamic;
	function shouldReallocate(targetRT:Dynamic, sourceTexture:Dynamic, testFormat:Dynamic):Bool;
	function allocateRenderTarget(renderTarget:Dynamic, sourceRenderTarget:Dynamic, device:Dynamic, format:Dynamic, isDepth:Dynamic, mipmaps:Dynamic, isDepthUniforms:Dynamic):Dynamic;
	function releaseRenderTarget(rt:Dynamic):Void;
	function initMainPath():Void;
	function initFallbackPath():Void;
	function patch(layer:Dynamic):Void;
	static var prototype : SceneGrab;
	/**
		Returns true if the camera rendering scene grab textures requires a render pass to do it.
	**/
	static function requiresRenderPass(device:GraphicsDevice, camera:CameraComponent):Bool;
}