package playcanvas;

@:jsRequire("playcanvas", "ContextCreationError") extern class ContextCreationError {
	function new(message:Dynamic);
	@:selfCall
	static function call(message:Dynamic):Void;
	var name : String;
	var message : Dynamic;
	static var prototype : ContextCreationError;
}