package global.pc;

@:native("pc.Key") extern class Key {
	function new(time:Dynamic, position:Dynamic, rotation:Dynamic, scale:Dynamic);
	var time : Dynamic;
	var position : Dynamic;
	var rotation : Dynamic;
	var scale : Dynamic;
	static var prototype : Key;
}