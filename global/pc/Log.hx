package global.pc;

@:native("pc.log") @valueModuleOnly extern class Log {
	static function write(text:Dynamic):Void;
	static function open():Void;
	static function info(text:Dynamic):Void;
	static function debug(text:Dynamic):Void;
	static function error(text:Dynamic):Void;
	static function warning(text:Dynamic):Void;
	static function alert(text:Dynamic):Void;
	static function assert(condition:Dynamic, text:Dynamic):Void;
}