package playcanvas;

/**
	Internal cache data for the evaluation of a single curve timeline.
**/
@jsInaccessible extern class AnimCache {
	function new();
	var _left : Float;
	var _right : Float;
	var _len : Float;
	var _recip : Float;
	var _p0 : Float;
	var _p1 : Float;
	var _t : Float;
	var _hermite : {
		var valid : Bool;
		var p0 : Float;
		var m0 : Float;
		var p1 : Float;
		var m1 : Float;
	};
	function update(time:Dynamic, input:Dynamic):Void;
	function _findKey(time:Dynamic, input:Dynamic):Float;
	function eval(result:Dynamic, interpolation:Dynamic, output:Dynamic):Void;
	static var prototype : AnimCache;
}