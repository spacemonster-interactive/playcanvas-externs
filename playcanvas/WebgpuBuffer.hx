package playcanvas;

/**
	A WebGPU implementation of the Buffer.
**/
@jsInaccessible extern class WebgpuBuffer {
	function new();
	private var buffer : Dynamic;
	function destroy(device:Dynamic):Void;
	final initialized : Bool;
	function loseContext():Void;
	function unlock(device:WebgpuGraphicsDevice, usage:Dynamic, target:Dynamic, storage:Dynamic):Void;
	static var prototype : WebgpuBuffer;
}