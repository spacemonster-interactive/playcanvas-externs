package playcanvas;

/**
	A WebGL implementation of the IndexBuffer.
**/
@jsInaccessible extern class WebglIndexBuffer extends WebglBuffer {
	function new(indexBuffer:Dynamic);
	var glFormat : Dynamic;
	function unlock(indexBuffer:Dynamic):Void;
	static var prototype : WebglIndexBuffer;
}