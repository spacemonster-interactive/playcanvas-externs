package global.pc;

@:native("pc.SkinBatchInstance") extern class SkinBatchInstance extends SkinInstance {
	function new(device:Dynamic, nodes:Dynamic, rootNode:Dynamic);
	var device : Dynamic;
	var rootNode : Dynamic;
	static var prototype : SkinBatchInstance;
}