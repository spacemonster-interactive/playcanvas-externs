package playcanvas;

/**
	A WebGPU implementation of the VertexBuffer.
**/
@jsInaccessible extern class WebgpuVertexBuffer extends WebgpuBuffer {
	function new(vertexBuffer:Dynamic, format:Dynamic);
	function unlock(vertexBuffer:Dynamic):Void;
	static var prototype : WebgpuVertexBuffer;
}