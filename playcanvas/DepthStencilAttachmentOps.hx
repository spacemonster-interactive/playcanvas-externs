package playcanvas;

@jsInaccessible extern class DepthStencilAttachmentOps {
	function new();
	/**
		A depth value used to clear the depth attachment when the clear is enabled.
	**/
	var clearDepthValue : Float;
	/**
		A stencil value used to clear the stencil attachment when the clear is enabled.
	**/
	var clearStencilValue : Float;
	/**
		True if the depth attachment should be cleared before rendering, false to preserve
		the existing content.
	**/
	var clearDepth : Bool;
	/**
		True if the stencil attachment should be cleared before rendering, false to preserve
		the existing content.
	**/
	var clearStencil : Bool;
	/**
		True if the depth attachment needs to be stored after the render pass. False
		if it can be discarded.
	**/
	var storeDepth : Bool;
	/**
		True if the stencil attachment needs to be stored after the render pass. False
		if it can be discarded.
	**/
	var storeStencil : Bool;
	static var prototype : DepthStencilAttachmentOps;
}