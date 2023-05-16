package playcanvas;

/**
	A WebGPU implementation of the IndexBuffer.
**/
@jsInaccessible extern class WebgpuIndexBuffer extends WebgpuBuffer {
	function new(indexBuffer:Dynamic);
	var format : Dynamic;
	function unlock(indexBuffer:Dynamic):Void;
	static var prototype : WebgpuIndexBuffer;
}