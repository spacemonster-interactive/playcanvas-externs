package playcanvas;

/**
	A WebGL implementation of the RenderTarget.
**/
@jsInaccessible extern class WebglRenderTarget {
	function new();
	var _glFrameBuffer : Dynamic;
	var _glDepthBuffer : Dynamic;
	var _glResolveFrameBuffer : Dynamic;
	var _glMsaaColorBuffer : Dynamic;
	var _glMsaaDepthBuffer : Dynamic;
	function destroy(device:Dynamic):Void;
	final initialized : Bool;
	function init(device:Dynamic, target:Dynamic):Void;
	/**
		Checks the completeness status of the currently bound WebGLFramebuffer object.
	**/
	private var _checkFbo : Dynamic;
	function loseContext():Void;
	function resolve(device:Dynamic, target:Dynamic, color:Dynamic, depth:Dynamic):Void;
	static var prototype : WebglRenderTarget;
}