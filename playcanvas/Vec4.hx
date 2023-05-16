package playcanvas;

/**
	A 4-dimensional vector.
**/
@:jsRequire("playcanvas", "Vec4") extern class Vec4 {
	/**
		Creates a new Vec4 object.
	**/
	function new(?x:ts.AnyOf2<Float, Array<Float>>, ?y:Float, ?z:Float, ?w:Float);
	/**
		The first component of the vector.
	**/
	var x : Float;
	/**
		The second component of the vector.
	**/
	var y : Float;
	/**
		The third component of the vector.
	**/
	var z : Float;
	/**
		The fourth component of the vector.
	**/
	var w : Float;
	/**
		Adds a 4-dimensional vector to another in place.
	**/
	function add(rhs:Vec4):Vec4;
	/**
		Adds two 4-dimensional vectors together and returns the result.
	**/
	function add2(lhs:Vec4, rhs:Vec4):Vec4;
	/**
		Adds a number to each element of a vector.
	**/
	function addScalar(scalar:Float):Vec4;
	/**
		Returns an identical copy of the specified 4-dimensional vector.
	**/
	function clone():Vec4;
	/**
		Copies the contents of a source 4-dimensional vector to a destination 4-dimensional vector.
	**/
	function copy(rhs:Vec4):Vec4;
	/**
		Divides a 4-dimensional vector by another in place.
	**/
	function div(rhs:Vec4):Vec4;
	/**
		Divides one 4-dimensional vector by another and writes the result to the specified vector.
	**/
	function div2(lhs:Vec4, rhs:Vec4):Vec4;
	/**
		Divides each element of a vector by a number.
	**/
	function divScalar(scalar:Float):Vec4;
	/**
		Returns the result of a dot product operation performed on the two specified 4-dimensional
		vectors.
	**/
	function dot(rhs:Vec4):Float;
	/**
		Reports whether two vectors are equal.
	**/
	function equals(rhs:Vec4):Bool;
	/**
		Returns the magnitude of the specified 4-dimensional vector.
	**/
	function length():Float;
	/**
		Returns the magnitude squared of the specified 4-dimensional vector.
	**/
	function lengthSq():Float;
	/**
		Returns the result of a linear interpolation between two specified 4-dimensional vectors.
	**/
	function lerp(lhs:Vec4, rhs:Vec4, alpha:Float):Vec4;
	/**
		Multiplies a 4-dimensional vector to another in place.
	**/
	function mul(rhs:Vec4):Vec4;
	/**
		Returns the result of multiplying the specified 4-dimensional vectors together.
	**/
	function mul2(lhs:Vec4, rhs:Vec4):Vec4;
	/**
		Multiplies each element of a vector by a number.
	**/
	function mulScalar(scalar:Float):Vec4;
	/**
		Returns this 4-dimensional vector converted to a unit vector in place. If the vector has a
		length of zero, the vector's elements will be set to zero.
	**/
	function normalize():Vec4;
	/**
		Each element is set to the largest integer less than or equal to its value.
	**/
	function floor():Vec4;
	/**
		Each element is rounded up to the next largest integer.
	**/
	function ceil():Vec4;
	/**
		Each element is rounded up or down to the nearest integer.
	**/
	function round():Vec4;
	/**
		Each element is assigned a value from rhs parameter if it is smaller.
	**/
	function min(rhs:Vec4):Vec4;
	/**
		Each element is assigned a value from rhs parameter if it is larger.
	**/
	function max(rhs:Vec4):Vec4;
	/**
		Sets the specified 4-dimensional vector to the supplied numerical values.
	**/
	function set(x:Float, y:Float, z:Float, w:Float):Vec4;
	/**
		Subtracts a 4-dimensional vector from another in place.
	**/
	function sub(rhs:Vec4):Vec4;
	/**
		Subtracts two 4-dimensional vectors from one another and returns the result.
	**/
	function sub2(lhs:Vec4, rhs:Vec4):Vec4;
	/**
		Subtracts a number from each element of a vector.
	**/
	function subScalar(scalar:Float):Vec4;
	/**
		Converts the vector to string form.
	**/
	function toString():String;
	static var prototype : Vec4;
	/**
		A constant vector set to [0, 0, 0, 0].
	**/
	static final ZERO : Vec4;
	/**
		A constant vector set to [1, 1, 1, 1].
	**/
	static final ONE : Vec4;
}