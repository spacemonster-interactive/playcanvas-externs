package global.pc;

/**
	Animation curve links an input data set to an output data set and defines the interpolation
	method to use.
**/
@:native("pc.AnimCurve") extern class AnimCurve {
	/**
		Create a new animation curve.
	**/
	function new(paths:Array<String>, input:Float, output:Float, interpolation:Float);
	var _paths : Array<String>;
	var _input : Float;
	var _output : Float;
	var _interpolation : Float;
	/**
		The list of paths which identify targets of this curve.
	**/
	final paths : Array<String>;
	/**
		The index of the AnimTrack input which contains the key data for this curve.
	**/
	final input : Float;
	/**
		The index of the AnimTrack input which contains the key data for this curve.
	**/
	final output : Float;
	/**
		The interpolation method used by this curve.
	**/
	final interpolation : Float;
	static var prototype : AnimCurve;
}