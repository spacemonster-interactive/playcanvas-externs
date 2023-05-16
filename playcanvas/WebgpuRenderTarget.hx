package playcanvas;

/**
	A WebGPU implementation of the RenderTarget.
**/
@jsInaccessible extern class WebgpuRenderTarget {
	function new(renderTarget:RenderTarget);
	var initialized : Bool;
	var colorFormat : String;
	/**
		Unique key used by render pipeline creation
	**/
	var key : String;
	var depthFormat : String;
	var hasStencil : Bool;
	private var multisampledColorBuffer : Dynamic;
	private var depthTexture : Dynamic;
	/**
		True if the depthTexture is internally allocated / owned
	**/
	var depthTextureInternal : Bool;
	/**
		Texture assigned each frame, and not owned by this render target. This is used on the
		framebuffer to assign per frame texture obtained from the context.
	**/
	private var assignedColorTexture : Dynamic;
	/**
		Render pass descriptor used when starting a render pass for this render target.
	**/
	private var renderPassDescriptor : Dynamic;
	var renderTarget : RenderTarget;
	/**
		Release associated resources. Note that this needs to leave this instance in a state where
		it can be re-initialized again, which is used by render target resizing.
	**/
	function destroy(device:WebgpuGraphicsDevice):Void;
	function updateKey():Void;
	function setDepthFormat(depthFormat:Dynamic):Void;
	/**
		Assign a color buffer. This allows the color buffer of the main framebuffer
		to be swapped each frame to a buffer provided by the context.
	**/
	function assignColorTexture(gpuTexture:Dynamic):Void;
	/**
		Initialize render target for rendering one time.
	**/
	function init(device:WebgpuGraphicsDevice, renderTarget:RenderTarget):Void;
	/**
		Update WebGPU render pass descriptor by RenderPass settings.
	**/
	function setupForRenderPass(renderPass:RenderPass):Void;
	function loseContext():Void;
	function resolve(device:Dynamic, target:Dynamic, color:Dynamic, depth:Dynamic):Void;
	static var prototype : WebgpuRenderTarget;
}