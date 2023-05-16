package playcanvas;

/**
	The graphics device manages the underlying graphics context. It is responsible for submitting
	render state changes and graphics primitives to the hardware. A graphics device is tied to a
	specific canvas HTML element. It is valid to have more than one canvas element per page and
	create a new graphics device against each.
**/
@:jsRequire("playcanvas", "GraphicsDevice") extern class GraphicsDevice extends EventHandler {
	function new(canvas:Dynamic, options:Dynamic);
	/**
		The canvas DOM element that provides the underlying WebGL context used by the graphics device.
	**/
	final canvas : js.html.CanvasElement;
	/**
		True if the deviceType is WebGPU
	**/
	final isWebGPU : Bool;
	/**
		The scope namespace for shader attributes and variables.
	**/
	final scope : ScopeSpace;
	/**
		The maximum number of supported bones using uniform buffers.
	**/
	final boneLimit : Float;
	/**
		The maximum supported texture anisotropy setting.
	**/
	final maxAnisotropy : Float;
	/**
		The maximum supported dimension of a cube map.
	**/
	final maxCubeMapSize : Float;
	/**
		The maximum supported dimension of a texture.
	**/
	final maxTextureSize : Float;
	/**
		The maximum supported dimension of a 3D texture (any axis).
	**/
	final maxVolumeSize : Float;
	/**
		The highest shader precision supported by this graphics device. Can be 'hiphp', 'mediump' or
		'lowp'.
	**/
	final precision : String;
	/**
		The number of hardware anti-aliasing samples used by the frame buffer.
	**/
	final samples : Float;
	/**
		True if the main framebuffer contains stencil attachment.
	**/
	var supportsStencil : Bool;
	/**
		Currently active render target.
	**/
	var renderTarget : RenderTarget;
	/**
		Index of the currently active render pass.
	**/
	var renderPassIndex : Float;
	var insideRenderPass : Bool;
	/**
		True if hardware instancing is supported.
	**/
	final supportsInstancing : Bool;
	/**
		True if the device supports uniform buffers.
	**/
	var supportsUniformBuffers : Bool;
	/**
		True if 32-bit floating-point textures can be used as a frame buffer.
	**/
	final textureFloatRenderable : Bool;
	/**
		True if 16-bit floating-point textures can be used as a frame buffer.
	**/
	final textureHalfFloatRenderable : Bool;
	/**
		A vertex buffer representing a quad.
	**/
	var quadVertexBuffer : VertexBuffer;
	/**
		An object representing current blend state
	**/
	var blendState : BlendState;
	/**
		The current depth state.
	**/
	var depthState : DepthState;
	/**
		True if stencil is enabled and stencilFront and stencilBack are used
	**/
	var stencilEnabled : Bool;
	/**
		The current front stencil parameters.
	**/
	var stencilFront : StencilParameters;
	/**
		The current back stencil parameters.
	**/
	var stencilBack : StencilParameters;
	var defaultClearOptions : {
		var color : Array<Float>;
		var depth : Float;
		var stencil : Float;
		var flags : Float;
	};
	var initOptions : Dynamic;
	var _width : Float;
	var _height : Float;
	var _maxPixelRatio : Float;
	var shaders : Array<Shader>;
	var buffers : Array<Dynamic>;
	var textures : Array<Texture>;
	var targets : Array<RenderTarget>;
	var _vram : {
		var texShadow : Float;
		var texAsset : Float;
		var texLightmap : Float;
		var tex : Float;
		var vb : Float;
		var ib : Float;
		var ub : Float;
	};
	var _shaderStats : {
		var vsCompiled : Float;
		var fsCompiled : Float;
		var linked : Float;
		var materialShaders : Float;
		var compileTime : Float;
	};
	var _drawCallsPerFrame : Float;
	var _shaderSwitchesPerFrame : Float;
	var _primsPerFrame : Array<Float>;
	var _renderTargetCreationTime : Float;
	var textureBias : ScopeId;
	/**
		Function that executes after the device has been created.
	**/
	function postInit():Void;
	/**
		Destroy the graphics device.
	**/
	function destroy():Void;
	function onDestroyShader(shader:Dynamic):Void;
	function postDestroy():Void;
	function toJSON(key:Dynamic):Dynamic;
	function initializeContextCaches():Void;
	var indexBuffer : IndexBuffer;
	var vertexBuffers : Array<Dynamic>;
	var shader : Dynamic;
	function initializeRenderState():Void;
	var cullMode : Float;
	var vx : Float;
	var vy : Float;
	var vw : Float;
	var vh : Float;
	var sx : Float;
	var sy : Float;
	var sw : Float;
	var sh : Float;
	/**
		Sets the specified stencil state. If both stencilFront and stencilBack are null, stencil
		operation is disabled.
	**/
	function setStencilState(?stencilFront:StencilParameters, ?stencilBack:StencilParameters):Void;
	/**
		Sets the specified blend state.
	**/
	function setBlendState(blendState:BlendState):Void;
	/**
		Sets the specified depth state.
	**/
	function setDepthState(depthState:DepthState):Void;
	/**
		Controls how triangles are culled based on their face direction. The default cull mode is
		{@link CULLFACE_BACK}.
	**/
	function setCullMode(cullMode:Float):Void;
	/**
		Sets the specified render target on the device. If null is passed as a parameter, the back
		buffer becomes the current target for all rendering operations.
	**/
	function setRenderTarget(renderTarget:RenderTarget):Void;
	/**
		Sets the current index buffer on the graphics device. On subsequent calls to
		{@link GraphicsDevice#draw}, the specified index buffer will be used to provide index data
		for any indexed primitives.
	**/
	function setIndexBuffer(indexBuffer:IndexBuffer):Void;
	/**
		Sets the current vertex buffer on the graphics device. On subsequent calls to
		{@link GraphicsDevice#draw}, the specified vertex buffer(s) will be used to provide vertex
		data for any primitives.
	**/
	function setVertexBuffer(vertexBuffer:VertexBuffer):Void;
	/**
		Queries the currently set render target on the device.
	**/
	function getRenderTarget():RenderTarget;
	/**
		Initialize render target before it can be used.
	**/
	function initRenderTarget(target:RenderTarget):Void;
	/**
		Reports whether a texture source is a canvas, image, video or ImageBitmap.
	**/
	function _isBrowserInterface(texture:Dynamic):Bool;
	function _isImageBrowserInterface(texture:Dynamic):Bool;
	function _isImageCanvasInterface(texture:Dynamic):Bool;
	function _isImageVideoInterface(texture:Dynamic):Bool;
	/**
		Sets the width and height of the canvas, then fires the `resizecanvas` event. Note that the
		specified width and height values will be multiplied by the value of
		{@link GraphicsDevice#maxPixelRatio} to give the final resultant width and height for the
		canvas.
	**/
	function resizeCanvas(width:Float, height:Float):Void;
	/**
		Sets the width and height of the canvas, then fires the `resizecanvas` event. Note that the
		value of {@link GraphicsDevice#maxPixelRatio} is ignored.
	**/
	function setResolution(width:Float, height:Float):Void;
	function updateClientRect():Void;
	var clientRect : js.html.DOMRect;
	/**
		Width of the back buffer in pixels.
	**/
	final width : Float;
	/**
		Height of the back buffer in pixels.
	**/
	final height : Float;
	/**
		Fullscreen mode.
	**/
	var fullscreen : Bool;
	/**
		Maximum pixel ratio.
	**/
	var maxPixelRatio : Float;
	/**
		The type of the device. Can be one of pc.DEVICETYPE_WEBGL1, pc.DEVICETYPE_WEBGL2 or pc.DEVICETYPE_WEBGPU.
	**/
	final deviceType : String;
	/**
		Queries the maximum number of bones that can be referenced by a shader. The shader
		generators (programlib) use this number to specify the matrix array size of the uniform
		'matrix_pose[0]'. The value is calculated based on the number of available uniform vectors
		available after subtracting the number taken by a typical heavyweight shader. If a different
		number is required, it can be tuned via {@link GraphicsDevice#setBoneLimit}.
	**/
	function getBoneLimit():Float;
	/**
		Specifies the maximum number of bones that the device can support on the current hardware.
		This function allows the default calculated value based on available vector uniforms to be
		overridden.
	**/
	function setBoneLimit(maxBones:Float):Void;
	/**
		Function which executes at the start of the frame. This should not be called manually, as
		it is handled by the AppBase instance.
	**/
	function frameStart():Void;
	static var prototype : GraphicsDevice;
	static var EVENT_RESIZE : String;
}