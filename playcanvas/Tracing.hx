package playcanvas;

/**
	Log tracing functionality, allowing for tracing of the internal functionality of the engine.
	Note that the trace logging only takes place in the debug build of the engine and is stripped
	out in other builds.
**/
@:jsRequire("playcanvas", "Tracing") extern class Tracing {
	function new();
	static var prototype : Tracing;
	/**
		Set storing the names of enabled trace channels.
	**/
	private static var _traceChannels : Dynamic;
	/**
		Enable call stack logging for trace calls. Defaults to false.
	**/
	static var stack : Bool;
	/**
		Enable or disable a trace channel.
	**/
	static function set(channel:String, ?enabled:Bool):Void;
	/**
		Test if the trace channel is enabled.
	**/
	static function get(channel:String):Bool;
}