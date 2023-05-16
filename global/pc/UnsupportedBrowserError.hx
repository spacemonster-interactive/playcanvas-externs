package global.pc;

@:native("pc.UnsupportedBrowserError") extern class UnsupportedBrowserError {
	function new(message:Dynamic);
	@:selfCall
	static function call(message:Dynamic):Void;
	var name : String;
	var message : Dynamic;
	static var prototype : UnsupportedBrowserError;
}