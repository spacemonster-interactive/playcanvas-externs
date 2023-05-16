package global.pc;

@:native("pc.events") @valueModuleOnly extern class Events {
	static function attach(target:Dynamic):Dynamic;
	static function _addCallback(name:String, callback:HandleEventCallback, ?scope:Dynamic, ?once:Bool):Void;
	static function on(name:String, callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	static function off(?name:String, ?callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	static function fire(name:String, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic, ?arg8:Dynamic):EventHandler;
	static function once(name:String, callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	static function hasEvent(name:String):Bool;
}