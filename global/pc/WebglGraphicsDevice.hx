package global.pc;

/**
	The graphics device manages the underlying graphics context. It is responsible for submitting
	render state changes and graphics primitives to the hardware. A graphics device is tied to a
	specific canvas HTML element. It is valid to have more than one canvas element per page and
	create a new graphics device against each.
**/
@:native("pc.WebglGraphicsDevice") extern class WebglGraphicsDevice extends GraphicsDevice {
	/**
		Creates a new WebglGraphicsDevice instance.
	**/
	function new(canvas:js.html.CanvasElement, ?options:{ @:optional var alpha : Bool; @:optional var depth : Bool; @:optional var stencil : Bool; @:optional var antialias : Bool; @:optional var premultipliedAlpha : Bool; @:optional var preserveDrawingBuffer : Bool; @:optional var powerPreference : String; @:optional var failIfMajorPerformanceCaveat : Bool; @:optional var preferWebGl2 : Bool; @:optional var desynchronized : Bool; @:optional var xrCompatible : Bool; @:optional var gl : ts.AnyOf2<js.html.webgl.RenderingContext, js.html.webgl.WebGL2RenderingContext>; });
	/**
		The WebGL context managed by the graphics device. The type could also technically be
		`WebGLRenderingContext` if WebGL 2.0 is not available. But in order for IntelliSense to be
		able to function for all WebGL calls in the codebase, we specify `WebGL2RenderingContext`
		here instead.
	**/
	var gl : js.html.webgl.WebGL2RenderingContext;
	/**
		True if the WebGL context of this device is using the WebGL 2.0 API. If false, WebGL 1.0 is
		being used.
	**/
	var webgl2 : Bool;
	var defaultFramebuffer : Dynamic;
	var contextLost : Bool;
	dynamic function _contextLostHandler(event:Dynamic):Void;
	dynamic function _contextRestoredHandler():Void;
	var forceDisableMultisampling : Bool;
	var _deviceType : String;
	var framebufferFormat : Float;
	var _tempEnableSafariTextureUnitWorkaround : Bool;
	var _tempMacChromeBlitFramebufferWorkaround : Bool;
	var supportsImageBitmap : Bool;
	var glAddress : Array<Dynamic>;
	var glBlendEquation : Array<Dynamic>;
	var glBlendFunctionColor : Array<Dynamic>;
	var glBlendFunctionAlpha : Array<Dynamic>;
	var glComparison : Array<Dynamic>;
	var glStencilOp : Array<Dynamic>;
	var glClearFlag : Array<Dynamic>;
	var glCull : Array<Dynamic>;
	var glFilter : Array<Dynamic>;
	var glPrimitive : Array<Dynamic>;
	var glType : Array<Dynamic>;
	var pcUniformType : { };
	var targetToSlot : { };
	var commitFunction : Array<{ }>;
	var supportsBoneTextures : Bool;
	var constantTexSource : ScopeId;
	var supportsMorphTargetTexturesCore : Bool;
	var supportsDepthShadow : Bool;
	var _textureFloatHighPrecision : Bool;
	var _textureHalfFloatUpdatable : Bool;
	var areaLightLutFormat : Float;
	function createVertexBufferImpl(vertexBuffer:Dynamic, format:Dynamic):playcanvas.WebglVertexBuffer;
	function createIndexBufferImpl(indexBuffer:Dynamic):playcanvas.WebglIndexBuffer;
	function createShaderImpl(shader:Dynamic):playcanvas.WebglShader;
	function createTextureImpl(texture:Dynamic):playcanvas.WebglTexture;
	function createRenderTargetImpl(renderTarget:Dynamic):playcanvas.WebglRenderTarget;
	function pushMarker(name:Dynamic):Void;
	function popMarker():Void;
	/**
		Query the precision supported by ints and floats in vertex and fragment shaders. Note that
		getShaderPrecisionFormat is not guaranteed to be present (such as some instances of the
		default Android browser). In this case, assume highp is available.
	**/
	function getPrecision():String;
	function getExtension(args:haxe.extern.Rest<Dynamic>):js.html.webgl.extension.ANGLEInstancedArrays;
	final extDisjointTimerQuery : js.html.webgl.extension.ANGLEInstancedArrays;
	var _extDisjointTimerQuery : js.html.webgl.extension.ANGLEInstancedArrays;
	/**
		Initialize the extensions provided by the WebGL context.
	**/
	function initializeExtensions():Void;
	var supportedExtensions : Array<String>;
	var extBlendMinmax : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extDrawBuffers : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extInstancing : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extStandardDerivatives : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extTextureFloat : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extTextureHalfFloat : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extTextureLod : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extUintElement : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extVertexArrayObject : ts.AnyOf2<Bool, js.html.webgl.extension.ANGLEInstancedArrays>;
	var extColorBufferFloat : js.html.webgl.extension.ANGLEInstancedArrays;
	var extDepthTexture : ts.AnyOf2<Bool, js.html.webgl.extension.WEBGLDepthTexture>;
	var extDebugRendererInfo : js.html.webgl.extension.ANGLEInstancedArrays;
	var extTextureFloatLinear : js.html.webgl.extension.ANGLEInstancedArrays;
	var extTextureHalfFloatLinear : js.html.webgl.extension.ANGLEInstancedArrays;
	var extFloatBlend : js.html.webgl.extension.ANGLEInstancedArrays;
	var extTextureFilterAnisotropic : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTextureETC1 : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTextureETC : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTexturePVRTC : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTextureS3TC : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTextureATC : js.html.webgl.extension.ANGLEInstancedArrays;
	var extCompressedTextureASTC : js.html.webgl.extension.ANGLEInstancedArrays;
	var extParallelShaderCompile : js.html.webgl.extension.ANGLEInstancedArrays;
	var extColorBufferHalfFloat : js.html.webgl.extension.ANGLEInstancedArrays;
	/**
		Query the capabilities of the WebGL context.
	**/
	function initializeCapabilities():Void;
	var maxPrecision : String;
	var supportsMsaa : Bool;
	var maxRenderBufferSize : Dynamic;
	var maxTextures : Dynamic;
	var maxCombinedTextures : Dynamic;
	var maxVertexTextures : Dynamic;
	var vertexUniformsCount : Dynamic;
	var fragmentUniformsCount : Dynamic;
	var maxDrawBuffers : Dynamic;
	var maxColorAttachments : Dynamic;
	var unmaskedRenderer : Dynamic;
	var unmaskedVendor : Dynamic;
	var supportsGpuParticles : Bool;
	var maxSamples : Dynamic;
	var supportsAreaLights : Bool;
	var supportsTextureFetch : Bool;
	var blendColor : Color;
	var stencil : Dynamic;
	var stencilFuncFront : Dynamic;
	var stencilFuncBack : Dynamic;
	var stencilRefFront : Dynamic;
	var stencilRefBack : Dynamic;
	var stencilMaskFront : Dynamic;
	var stencilMaskBack : Dynamic;
	var stencilFailFront : Dynamic;
	var stencilFailBack : Dynamic;
	var stencilZfailFront : Dynamic;
	var stencilZfailBack : Dynamic;
	var stencilZpassFront : Dynamic;
	var stencilZpassBack : Dynamic;
	var stencilWriteMaskFront : Dynamic;
	var stencilWriteMaskBack : Dynamic;
	var alphaToCoverage : Dynamic;
	var raster : Dynamic;
	var depthBiasEnabled : Dynamic;
	var clearDepth : Dynamic;
	var clearColor : Color;
	var clearStencil : Dynamic;
	var unpackFlipY : Dynamic;
	var unpackPremultiplyAlpha : Dynamic;
	var _vaoMap : js.lib.Map<Dynamic, Dynamic>;
	var boundVao : Dynamic;
	var activeFramebuffer : Dynamic;
	var feedback : js.html.webgl.TransformFeedback;
	var transformFeedbackBuffer : Dynamic;
	var textureUnit : Dynamic;
	var textureUnits : Array<Dynamic>;
	/**
		Called when the WebGL context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		Called when the WebGL context is restored. It reinitializes all context related resources.
	**/
	function restoreContext():Void;
	/**
		Called after a batch of shaders was created, to guide in their optimal preparation for rendering.
	**/
	function endShaderBatch():Void;
	/**
		Set the active rectangle for rendering on the specified device.
	**/
	function setViewport(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		Set the active scissor rectangle on the specified device.
	**/
	function setScissor(x:Float, y:Float, w:Float, h:Float):Void;
	/**
		Binds the specified framebuffer object.
	**/
	function setFramebuffer(fb:Null<js.html.webgl.Framebuffer>):Void;
	/**
		Copies source render target into destination render target. Mostly used by post-effects.
	**/
	function copyRenderTarget(?source:RenderTarget, ?dest:RenderTarget, ?color:Bool, ?depth:Bool):Bool;
	/**
		Get copy shader for efficient rendering of fullscreen-quad with texture.
	**/
	function getCopyShader():Shader;
	var _copyShader : Shader;
	/**
		Start a render pass.
	**/
	function startPass(renderPass:playcanvas.RenderPass):Void;
	/**
		End a render pass.
	**/
	function endPass(renderPass:playcanvas.RenderPass):Void;
	/**
		Marks the beginning of a block of rendering. Internally, this function binds the render
		target currently set on the device. This function should be matched with a call to
		{@link GraphicsDevice#updateEnd}. Calls to {@link GraphicsDevice#updateBegin} and
		{@link GraphicsDevice#updateEnd} must not be nested.
	**/
	function updateBegin():Void;
	/**
		Marks the end of a block of rendering. This function should be called after a matching call
		to {@link GraphicsDevice#updateBegin}. Calls to {@link GraphicsDevice#updateBegin} and
		{@link GraphicsDevice#updateEnd} must not be nested.
	**/
	function updateEnd():Void;
	/**
		Updates a texture's vertical flip.
	**/
	function setUnpackFlipY(flipY:Bool):Void;
	/**
		Updates a texture to have its RGB channels premultiplied by its alpha channel or not.
	**/
	function setUnpackPremultiplyAlpha(premultiplyAlpha:Bool):Void;
	/**
		Activate the specified texture unit.
	**/
	function activeTexture(textureUnit:Float):Void;
	/**
		If the texture is not already bound on the currently active texture unit, bind it.
	**/
	function bindTexture(texture:Texture):Void;
	/**
		If the texture is not bound on the specified texture unit, active the texture unit and bind
		the texture to it.
	**/
	function bindTextureOnUnit(texture:Texture, textureUnit:Float):Void;
	/**
		Update the texture parameters for a given texture if they have changed.
	**/
	function setTextureParameters(texture:Texture):Void;
	/**
		Sets the specified texture on the specified texture unit.
	**/
	function setTexture(texture:Texture, textureUnit:Float):Void;
	function createVertexArray(vertexBuffers:Dynamic):Dynamic;
	function unbindVertexArray():Void;
	function setBuffers():Void;
	/**
		Submits a graphical primitive to the hardware for immediate rendering.
	**/
	function draw(primitive:{ var type : Float; var base : Float; var count : Float; @:optional var indexed : Bool; }, ?numInstances:Float, ?keepBuffers:Bool):Void;
	/**
		Clears the frame buffer of the currently set render target.
	**/
	function clear(?options:{ @:optional var color : Array<Float>; @:optional var depth : Float; @:optional var flags : Float; @:optional var stencil : Float; }):Void;
	/**
		Reads a block of pixels from a specified rectangle of the current color framebuffer into an
		ArrayBufferView object.
	**/
	function readPixels(x:Float, y:Float, w:Float, h:Float, pixels:js.lib.ArrayBufferView):Void;
	/**
		Enables or disables alpha to coverage (WebGL2 only).
	**/
	function setAlphaToCoverage(state:Bool):Void;
	/**
		Sets the output vertex buffer. It will be written to by a shader with transform feedback
		varyings.
	**/
	function setTransformFeedbackBuffer(tf:VertexBuffer):Void;
	/**
		Toggles the rasterization render state. Useful with transform feedback, when you only need
		to process the data without drawing.
	**/
	function setRaster(on:Bool):Void;
	/**
		Toggles the polygon offset render state.
	**/
	function setDepthBias(on:Bool):Void;
	/**
		Specifies the scale factor and units to calculate depth values. The offset is added before
		the depth test is performed and before the value is written into the depth buffer.
	**/
	function setDepthBiasValues(constBias:Float, slopeBias:Float):Void;
	function setStencilTest(enable:Dynamic):Void;
	function setStencilFunc(func:Dynamic, ref:Dynamic, mask:Dynamic):Void;
	function setStencilFuncFront(func:Dynamic, ref:Dynamic, mask:Dynamic):Void;
	function setStencilFuncBack(func:Dynamic, ref:Dynamic, mask:Dynamic):Void;
	function setStencilOperation(fail:Dynamic, zfail:Dynamic, zpass:Dynamic, writeMask:Dynamic):Void;
	function setStencilOperationFront(fail:Dynamic, zfail:Dynamic, zpass:Dynamic, writeMask:Dynamic):Void;
	function setStencilOperationBack(fail:Dynamic, zfail:Dynamic, zpass:Dynamic, writeMask:Dynamic):Void;
	/**
		Sets the specified blend state.
	**/
	function setBlendState(blendState:Dynamic):Void;
	/**
		Set the source and destination blending factors.
	**/
	function setBlendColor(r:Float, g:Float, b:Float, a:Float):Void;
	/**
		Sets the specified stencil state. If both stencilFront and stencilBack are null, stencil
		operation is disabled.
	**/
	function setStencilState(stencilFront:Dynamic, stencilBack:Dynamic):Void;
	/**
		Sets the specified depth state.
	**/
	function setDepthState(depthState:Dynamic):Void;
	/**
		Controls how triangles are culled based on their face direction. The default cull mode is
		{@link CULLFACE_BACK}.
	**/
	function setCullMode(cullMode:Dynamic):Void;
	var cullFace : Dynamic;
	/**
		Sets the active shader to be used during subsequent draw calls.
	**/
	function setShader(shader:Shader):Bool;
	var attributesInvalidated : Bool;
	/**
		Get a supported HDR pixel format given a set of hardware support requirements.
	**/
	function getHdrFormat(preferLargest:Bool, renderable:Bool, updatable:Bool, filterable:Bool):Float;
	/**
		Frees memory from all vertex array objects ever allocated with this device.
	**/
	function clearVertexArrayObjectCache():Void;
	/**
		Sets the width and height of the canvas, then fires the `resizecanvas` event. Note that the
		specified width and height values will be multiplied by the value of
		{@link GraphicsDevice#maxPixelRatio} to give the final resultant width and height for the
		canvas.
	**/
	function resizeCanvas(width:Dynamic, height:Dynamic):Void;
	/**
		Check if high precision floating-point textures are supported.
	**/
	final textureFloatHighPrecision : Bool;
	/**
		Check if texture with half float format can be updated with data.
	**/
	final textureHalfFloatUpdatable : Bool;
	static var prototype : WebglGraphicsDevice;
}