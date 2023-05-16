package playcanvas;

/**
	A WebGL implementation of the VertexBuffer.
**/
@jsInaccessible extern class WebglVertexBuffer extends WebglBuffer {
	var vao : Dynamic;
	function unlock(vertexBuffer:Dynamic):Void;
	static var prototype : WebglVertexBuffer;
}