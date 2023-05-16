package playcanvas;

/**
	A WebGL implementation of the Buffer.
**/
@jsInaccessible extern class WebglBuffer {
	function new();
	var bufferId : Dynamic;
	function destroy(device:Dynamic):Void;
	final initialized : Bool;
	function loseContext():Void;
	function unlock(device:Dynamic, usage:Dynamic, target:Dynamic, storage:Dynamic):Void;
	static var prototype : WebglBuffer;
}