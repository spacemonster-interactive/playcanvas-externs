package global.pc;

/**
	A curve is a collection of keys (time/value pairs). The shape of the curve is defined by its
	type that specifies an interpolation scheme for the keys.
**/
@:native("pc.Curve") extern class Curve {
	/**
		Creates a new Curve instance.
	**/
	function new(?data:Array<Float>);
	var keys : Array<Dynamic>;
	/**
		The curve interpolation scheme. Can be:
		
		- {@link CURVE_LINEAR}
		- {@link CURVE_SMOOTHSTEP}
		- {@link CURVE_SPLINE}
		- {@link CURVE_STEP}
		
		Defaults to {@link CURVE_SMOOTHSTEP}.
	**/
	var type : Float;
	/**
		Controls how {@link CURVE_SPLINE} tangents are calculated. Valid range is between 0 and 1
		where 0 results in a non-smooth curve (equivalent to linear interpolation) and 1 results in
		a very smooth curve. Use 0.5 for a Catmull-rom spline.
	**/
	var tension : Float;
	private var _eval : Dynamic;
	/**
		Get the number of keys in the curve.
	**/
	final length : Float;
	/**
		Add a new key to the curve.
	**/
	function add(time:Float, value:Float):Array<Float>;
	/**
		Return a specific key.
	**/
	function get(index:Float):Array<Float>;
	/**
		Sort keys by time.
	**/
	function sort():Void;
	/**
		Returns the interpolated value of the curve at specified time.
	**/
	function value(time:Float):Float;
	function closest(time:Dynamic):Dynamic;
	/**
		Returns a clone of the specified curve object.
	**/
	function clone():Curve;
	/**
		Sample the curve at regular intervals over the range [0..1].
	**/
	function quantize(precision:Float):js.lib.Float32Array;
	/**
		Sample the curve at regular intervals over the range [0..1] and clamp the resulting samples
		to [min..max].
	**/
	function quantizeClamped(precision:Float, min:Float, max:Float):js.lib.Float32Array;
	static var prototype : Curve;
}