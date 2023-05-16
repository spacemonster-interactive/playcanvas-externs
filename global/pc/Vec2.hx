package global.pc;

/**
	A 2-dimensional vector.
**/
@:native("pc.Vec2") extern class Vec2 {
	/**
		Create a new Vec2 instance.
	**/
	function new(?x:ts.AnyOf2<Float, Array<Float>>, ?y:Float);
	/**
		The first component of the vector.
	**/
	var x : Float;
	/**
		The second component of the vector.
	**/
	var y : Float;
	/**
		Adds a 2-dimensional vector to another in place.
	**/
	function add(rhs:Vec2):Vec2;
	/**
		Adds two 2-dimensional vectors together and returns the result.
	**/
	function add2(lhs:Vec2, rhs:Vec2):Vec2;
	/**
		Adds a number to each element of a vector.
	**/
	function addScalar(scalar:Float):Vec2;
	/**
		Returns an identical copy of the specified 2-dimensional vector.
	**/
	function clone():Vec2;
	/**
		Copies the contents of a source 2-dimensional vector to a destination 2-dimensional vector.
	**/
	function copy(rhs:Vec2):Vec2;
	/**
		Returns the result of a cross product operation performed on the two specified 2-dimensional
		vectors.
	**/
	function cross(rhs:Vec2):Float;
	/**
		Returns the distance between the two specified 2-dimensional vectors.
	**/
	function distance(rhs:Vec2):Float;
	/**
		Divides a 2-dimensional vector by another in place.
	**/
	function div(rhs:Vec2):Vec2;
	/**
		Divides one 2-dimensional vector by another and writes the result to the specified vector.
	**/
	function div2(lhs:Vec2, rhs:Vec2):Vec2;
	/**
		Divides each element of a vector by a number.
	**/
	function divScalar(scalar:Float):Vec2;
	/**
		Returns the result of a dot product operation performed on the two specified 2-dimensional
		vectors.
	**/
	function dot(rhs:Vec2):Float;
	/**
		Reports whether two vectors are equal.
	**/
	function equals(rhs:Vec2):Bool;
	/**
		Returns the magnitude of the specified 2-dimensional vector.
	**/
	function length():Float;
	/**
		Returns the magnitude squared of the specified 2-dimensional vector.
	**/
	function lengthSq():Float;
	/**
		Returns the result of a linear interpolation between two specified 2-dimensional vectors.
	**/
	function lerp(lhs:Vec2, rhs:Vec2, alpha:Float):Vec2;
	/**
		Multiplies a 2-dimensional vector to another in place.
	**/
	function mul(rhs:Vec2):Vec2;
	/**
		Returns the result of multiplying the specified 2-dimensional vectors together.
	**/
	function mul2(lhs:Vec2, rhs:Vec2):Vec2;
	/**
		Multiplies each element of a vector by a number.
	**/
	function mulScalar(scalar:Float):Vec2;
	/**
		Returns this 2-dimensional vector converted to a unit vector in place. If the vector has a
		length of zero, the vector's elements will be set to zero.
	**/
	function normalize():Vec2;
	/**
		Each element is set to the largest integer less than or equal to its value.
	**/
	function floor():Vec2;
	/**
		Each element is rounded up to the next largest integer.
	**/
	function ceil():Vec2;
	/**
		Each element is rounded up or down to the nearest integer.
	**/
	function round():Vec2;
	/**
		Each element is assigned a value from rhs parameter if it is smaller.
	**/
	function min(rhs:Vec2):Vec2;
	/**
		Each element is assigned a value from rhs parameter if it is larger.
	**/
	function max(rhs:Vec2):Vec2;
	/**
		Sets the specified 2-dimensional vector to the supplied numerical values.
	**/
	function set(x:Float, y:Float):Vec2;
	/**
		Subtracts a 2-dimensional vector from another in place.
	**/
	function sub(rhs:Vec2):Vec2;
	/**
		Subtracts two 2-dimensional vectors from one another and returns the result.
	**/
	function sub2(lhs:Vec2, rhs:Vec2):Vec2;
	/**
		Subtracts a number from each element of a vector.
	**/
	function subScalar(scalar:Float):Vec2;
	/**
		Converts the vector to string form.
	**/
	function toString():String;
	static var prototype : Vec2;
	/**
		Calculates the angle between two Vec2's in radians.
	**/
	static function angleRad(lhs:Vec2, rhs:Vec2):Float;
	/**
		A constant vector set to [0, 0].
	**/
	static final ZERO : Vec2;
	/**
		A constant vector set to [1, 1].
	**/
	static final ONE : Vec2;
	/**
		A constant vector set to [0, 1].
	**/
	static final UP : Vec2;
	/**
		A constant vector set to [0, -1].
	**/
	static final DOWN : Vec2;
	/**
		A constant vector set to [1, 0].
	**/
	static final RIGHT : Vec2;
	/**
		A constant vector set to [-1, 0].
	**/
	static final LEFT : Vec2;
}