package playcanvas;

/**
	AnimClip wraps the running state of an animation track. It contains and update the animation
	'cursor' and performs looping logic.
**/
@:jsRequire("playcanvas", "AnimClip") extern class AnimClip {
	/**
		Create a new animation clip.
	**/
	function new(track:AnimTrack, time:Float, speed:Float, playing:Bool, loop:Bool, ?eventHandler:EventHandler);
	var _name : String;
	var _track : AnimTrack;
	var _snapshot : AnimSnapshot;
	var _playing : Bool;
	var _time : Float;
	var _speed : Float;
	var _loop : Bool;
	var _blendWeight : Float;
	var _blendOrder : Float;
	var _eventHandler : EventHandler;
	var name : String;
	var track : AnimTrack;
	final snapshot : AnimSnapshot;
	var time : Float;
	var speed : Float;
	var loop : Bool;
	var blendWeight : Float;
	var blendOrder : Float;
	var eventCursor : Dynamic;
	var _eventCursor : Dynamic;
	function alignCursorToCurrentTime():Void;
	function activeEventsForFrame(frameStartTime:Dynamic, frameEndTime:Dynamic):Void;
	function progressForTime(time:Dynamic):Float;
	function _update(deltaTime:Dynamic):Void;
	function play():Void;
	function stop():Void;
	function pause():Void;
	function resume():Void;
	function reset():Void;
	static var prototype : AnimClip;
}