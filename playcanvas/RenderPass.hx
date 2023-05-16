package playcanvas;

/**
	A render pass represents a node in the frame graph, and encapsulates a system which
	renders to a render target using an execution callback.
**/
@jsInaccessible extern class RenderPass {
	/**
		Creates an instance of the RenderPass.
	**/
	function new(graphicsDevice:GraphicsDevice, ?execute:haxe.Constraints.Function);
	var name : String;
	var renderTarget : RenderTarget;
	/**
		Number of samples. 0 if no render target, otherwise number of samples from the render target,
		or the main framebuffer if render target is null.
	**/
	var samples : Float;
	var colorOps : ColorAttachmentOps;
	var depthStencilOps : DepthStencilAttachmentOps;
	/**
		If true, this pass might use dynamically rendered cubemaps. Use for a case where rendering to cubemap
		faces is interleaved with rendering to shadows, to avoid generating cubemap mipmaps. This will likely
		be retired when render target dependency tracking gets implemented.
	**/
	var requiresCubemaps : Bool;
	/**
		True if the render pass uses the full viewport / scissor for rendering into the render target.
	**/
	var fullSizeClearRect : Bool;
	/**
		Custom function that is called to render the pass.
	**/
	var execute : haxe.Constraints.Function;
	/**
		Custom function that is called before the pass has started.
	**/
	var before : haxe.Constraints.Function;
	/**
		Custom function that is called after the pass has fnished.
	**/
	var after : haxe.Constraints.Function;
	var device : GraphicsDevice;
	function init(renderTarget:RenderTarget):Void;
	/**
		Mark render pass as clearing the full color buffer.
	**/
	function setClearColor(color:Color):Void;
	/**
		Mark render pass as clearing the full depth buffer.
	**/
	function setClearDepth(depthValue:Float):Void;
	/**
		Mark render pass as clearing the full stencil buffer.
	**/
	function setClearStencil(stencilValue:Float):Void;
	/**
		Render the render pass
	**/
	function render():Void;
	function log(device:Dynamic, index:Dynamic):Void;
	static var prototype : RenderPass;
}