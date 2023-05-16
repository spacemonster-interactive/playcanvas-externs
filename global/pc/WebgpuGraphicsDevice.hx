package global.pc;

@:native("pc.WebgpuGraphicsDevice") extern class WebgpuGraphicsDevice extends GraphicsDevice {
	function new(canvas:Dynamic, ?options:{ });
	/**
		The render target representing the main framebuffer.
	**/
	var frameBuffer : RenderTarget;
	/**
		Object responsible for caching and creation of render pipelines.
	**/
	var renderPipeline : playcanvas.WebgpuRenderPipeline;
	/**
		Object responsible for clearing the rendering surface by rendering a quad.
	**/
	var clearRenderer : playcanvas.WebgpuClearRenderer;
	/**
		Object responsible for mipmap generation.
	**/
	var mipmapRenderer : playcanvas.WebgpuMipmapRenderer;
	/**
		Render pipeline currently set on the device.
	**/
	private var pipeline : Dynamic;
	/**
		An array of bind group formats, based on currently assigned bind groups
	**/
	var bindGroupFormats : Array<playcanvas.WebgpuBindGroupFormat>;
	/**
		Current command buffer encoder.
	**/
	private var commandEncoder : Dynamic;
	var _deviceType : String;
	function initDeviceCaps():Void;
	var disableParticleSystem : Bool;
	var maxPrecision : String;
	var maxSamples : Float;
	var maxTextures : Float;
	var supportsBoneTextures : Bool;
	var supportsMorphTargetTexturesCore : Bool;
	var supportsAreaLights : Bool;
	var supportsDepthShadow : Bool;
	var supportsGpuParticles : Bool;
	var extUintElement : Bool;
	var extTextureFloat : Bool;
	var extTextureHalfFloat : Bool;
	var textureHalfFloatUpdatable : Bool;
	var supportsImageBitmap : Bool;
	var extStandardDerivatives : Bool;
	var extBlendMinmax : Bool;
	var areaLightLutFormat : Float;
	var supportsTextureFetch : Bool;
	function initWebGpu(glslangUrl:Dynamic, twgslUrl:Dynamic):js.lib.Promise<WebgpuGraphicsDevice>;
	var glslang : Dynamic;
	var twgsl : Dynamic;
	private var gpuAdapter : Dynamic;
	var floatFilterable : Bool;
	private var wgpu : Dynamic;
	var gpuContext : js.html.RenderingContext;
	var framebufferFormat : Float;
	/**
		Configuration of the main colorframebuffer we obtain using getCurrentTexture
	**/
	private var canvasConfig : Dynamic;
	function createFramebuffer():Void;
	var frameBufferDimensions : Vec2;
	/**
		Sets the width and height of the canvas, then fires the `resizecanvas` event. Note that the
		specified width and height values will be multiplied by the value of
		{@link GraphicsDevice#maxPixelRatio} to give the final resultant width and height for the
		canvas.
	**/
	function resizeCanvas(width:Dynamic, height:Dynamic):Void;
	function createUniformBufferImpl(uniformBuffer:Dynamic):playcanvas.WebgpuUniformBuffer;
	function createVertexBufferImpl(vertexBuffer:Dynamic, format:Dynamic):playcanvas.WebgpuVertexBuffer;
	function createIndexBufferImpl(indexBuffer:Dynamic):playcanvas.WebgpuIndexBuffer;
	function createShaderImpl(shader:Dynamic):playcanvas.WebgpuShader;
	function createTextureImpl(texture:Dynamic):playcanvas.WebgpuTexture;
	function createRenderTargetImpl(renderTarget:Dynamic):playcanvas.WebgpuRenderTarget;
	function createBindGroupFormatImpl(bindGroupFormat:Dynamic):playcanvas.WebgpuBindGroupFormat;
	function createBindGroupImpl(bindGroup:Dynamic):playcanvas.WebgpuBindGroup;
	function setBindGroup(index:Float, bindGroup:playcanvas.BindGroup):Void;
	function submitVertexBuffer(vertexBuffer:Dynamic, slot:Dynamic):Dynamic;
	function draw(primitive:Dynamic, numInstances:Float, keepBuffers:Dynamic):Void;
	function setShader(shader:Dynamic):Bool;
	/**
		Sets the specified blend state.
	**/
	function setBlendState(blendState:Dynamic):Void;
	/**
		Sets the specified depth state.
	**/
	function setDepthState(depthState:Dynamic):Void;
	/**
		Sets the specified stencil state. If both stencilFront and stencilBack are null, stencil
		operation is disabled.
	**/
	function setStencilState(stencilFront:Dynamic, stencilBack:Dynamic):Void;
	var stencilRef : Dynamic;
	function setBlendColor(r:Dynamic, g:Dynamic, b:Dynamic, a:Dynamic):Void;
	/**
		Controls how triangles are culled based on their face direction. The default cull mode is
		{@link CULLFACE_BACK}.
	**/
	function setCullMode(cullMode:Dynamic):Void;
	function setAlphaToCoverage(state:Dynamic):Void;
	/**
		Set up default values for the render pass encoder.
	**/
	function setupPassEncoderDefaults():Void;
	/**
		Start a render pass.
	**/
	function startPass(renderPass:playcanvas.RenderPass):Void;
	var passEncoder : Dynamic;
	/**
		End a render pass.
	**/
	function endPass(renderPass:playcanvas.RenderPass):Void;
	function clear(options:Dynamic):Void;
	function setDepthBias(on:Dynamic):Void;
	function setDepthBiasValues(constBias:Dynamic, slopeBias:Dynamic):Void;
	function setViewport(x:Dynamic, y:Dynamic, w:Dynamic, h:Dynamic):Void;
	function setScissor(x:Dynamic, y:Dynamic, w:Dynamic, h:Dynamic):Void;
	/**
		Copies source render target into destination render target. Mostly used by post-effects.
	**/
	function copyRenderTarget(?source:RenderTarget, ?dest:RenderTarget, ?color:Bool, ?depth:Bool):Bool;
	function pushMarker(name:Dynamic):Void;
	function popMarker():Void;
	static var prototype : WebgpuGraphicsDevice;
}