package playcanvas;

/**
	A WebGPU helper class implementing a viewport clear operation. When rendering to a texture,
	the whole surface can be cleared using loadOp, but if only a viewport needs to be cleared, or if
	it needs to be cleared later during the rendering, this need to be archieved by rendering a quad.
	This class renders a full-screen quad, and expects the viewport / scissor to be set up to clip
	it to only required area.
**/
@jsInaccessible extern class WebgpuClearRenderer {
	function new(device:Dynamic);
	var shader : Shader;
	var uniformBuffer : UniformBuffer;
	var bindGroup : BindGroup;
	var colorData : js.lib.Float32Array;
	var colorId : Dynamic;
	var depthId : Dynamic;
	function clear(device:Dynamic, renderTarget:Dynamic, options:Dynamic, defaultOptions:Dynamic):Void;
	static var prototype : WebgpuClearRenderer;
}