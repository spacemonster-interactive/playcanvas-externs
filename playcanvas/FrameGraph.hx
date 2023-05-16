package playcanvas;

/**
	A frame graph represents a single rendering frame as a sequence of render passes.
**/
@jsInaccessible extern class FrameGraph {
	function new();
	var renderPasses : Array<RenderPass>;
	/**
		Map used during frame graph compilation. It maps a render target to its previous occurrence.
	**/
	var renderTargetMap : js.lib.Map<RenderTarget, RenderPass>;
	/**
		Add a render pass to the frame.
	**/
	function addRenderPass(renderPass:RenderPass):Void;
	function reset():Void;
	function compile():Void;
	function render(device:Dynamic):Void;
	static var prototype : FrameGraph;
}