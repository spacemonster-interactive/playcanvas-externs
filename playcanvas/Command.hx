package playcanvas;

@:jsRequire("playcanvas", "Command") extern class Command {
	function new(layer:Dynamic, blendType:Dynamic, command:Dynamic);
	var _key : Array<Float>;
	var command : Dynamic;
	var key : Float;
	static var prototype : Command;
}