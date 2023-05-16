package playcanvas.time;

@:jsRequire("playcanvas", "time.Timer") extern class Timer {
	function new();
	var _isRunning : Bool;
	var _a : Float;
	var _b : Float;
	function start():Void;
	function stop():Void;
	function getMilliseconds():Float;
	static var prototype : Timer;
}