package playcanvas;

/**
	A WebGPU implementation of the UniformBuffer.
**/
@jsInaccessible extern class WebgpuUniformBuffer extends WebgpuBuffer {
	function new(uniformBuffer:Dynamic);
	function unlock(uniformBuffer:Dynamic):Void;
	static var prototype : WebgpuUniformBuffer;
}