package playcanvas;

@jsInaccessible extern class ColorAttachmentOps {
	function new();
	/**
		A color used to clear the color attachment when the clear is enabled.
	**/
	var clearValue : Color;
	/**
		True if the attachment should be cleared before rendering, false to preserve
		the existing content.
	**/
	var clear : Bool;
	/**
		True if the attachment needs to be stored after the render pass. False
		if it can be discarded.
		Note: This relates to the surface that is getting rendered to, and can be either
		single or multi-sampled. Further, if a multi-sampled surface is used, the resolve
		flag further specifies if this gets resolved to a single-sampled surface. This
		behavior matches the WebGPU specification.
	**/
	var store : Bool;
	/**
		True if the attachment needs to be resolved.
	**/
	var resolve : Bool;
	/**
		True if the attachment needs to have mipmaps generated.
	**/
	var mipmaps : Bool;
	static var prototype : ColorAttachmentOps;
}