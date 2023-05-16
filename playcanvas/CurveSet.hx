package playcanvas;

/**
	A curve set is a collection of curves.
**/
@:jsRequire("playcanvas", "CurveSet") extern class CurveSet {
	/**
		Creates a new CurveSet instance.
	**/
	function new(args:haxe.extern.Rest<Dynamic>);
	var curves : Array<Dynamic>;
	private var _type : Dynamic;
	/**
		The number of curves in the curve set.
	**/
	final length : Float;
	/**
		The interpolation scheme applied to all curves in the curve set. Can be:
		
		- {@link CURVE_LINEAR}
		- {@link CURVE_SMOOTHSTEP}
		- {@link CURVE_SPLINE}
		- {@link CURVE_STEP}
		
		Defaults to {@link CURVE_SMOOTHSTEP}.
	**/
	var type : Float;
	/**
		Return a specific curve in the curve set.
	**/
	function get(index:Float):Curve;
	/**
		Returns the interpolated value of all curves in the curve set at the specified time.
	**/
	function value(time:Float, ?result:Array<Float>):Array<Float>;
	/**
		Returns a clone of the specified curve set object.
	**/
	function clone():CurveSet;
	/**
		Sample the curveset at regular intervals over the range [0..1].
	**/
	function quantize(precision:Float):js.lib.Float32Array;
	/**
		Sample the curveset at regular intervals over the range [0..1] and clamp the result to min
		and max.
	**/
	function quantizeClamped(precision:Float, min:Float, max:Float):js.lib.Float32Array;
	static var prototype : CurveSet;
}