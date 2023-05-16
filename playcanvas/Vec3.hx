package playcanvas;

/**
	3-dimensional vector.
**/
@:jsRequire("playcanvas", "Vec3") extern class Vec3 {
	/**
		Creates a new Vec3 object.
	**/
	function new(?x:ts.AnyOf2<Float, Array<Float>>, ?y:Float, ?z:Float);
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
		Adds a 3-dimensional vector to another in place.
	**/
	function add(rhs:Vec3):Vec3;
	/**
		Adds two 3-dimensional vectors together and returns the result.
	**/
	function add2(lhs:Vec3, rhs:Vec3):Vec3;
	/**
		Adds a number to each element of a vector.
	**/
	function addScalar(scalar:Float):Vec3;
	/**
		Returns an identical copy of the specified 3-dimensional vector.
	**/
	function clone():Vec3;
	/**
		Copies the contents of a source 3-dimensional vector to a destination 3-dimensional vector.
	**/
	function copy(rhs:Vec3):Vec3;
	/**
		Returns the result of a cross product operation performed on the two specified 3-dimensional
		vectors.
	**/
	function cross(lhs:Vec3, rhs:Vec3):Vec3;
	/**
		Returns the distance between the two specified 3-dimensional vectors.
	**/
	function distance(rhs:Vec3):Float;
	/**
		Divides a 3-dimensional vector by another in place.
	**/
	function div(rhs:Vec3):Vec3;
	/**
		Divides one 3-dimensional vector by another and writes the result to the specified vector.
	**/
	function div2(lhs:Vec3, rhs:Vec3):Vec3;
	/**
		Divides each element of a vector by a number.
	**/
	function divScalar(scalar:Float):Vec3;
	/**
		Returns the result of a dot product operation performed on the two specified 3-dimensional
		vectors.
	**/
	function dot(rhs:Vec3):Float;
	/**
		Reports whether two vectors are equal.
	**/
	function equals(rhs:Vec3):Bool;
	/**
		Returns the magnitude of the specified 3-dimensional vector.
	**/
	function length():Float;
	/**
		Returns the magnitude squared of the specified 3-dimensional vector.
	**/
	function lengthSq():Float;
	/**
		Returns the result of a linear interpolation between two specified 3-dimensional vectors.
	**/
	function lerp(lhs:Vec3, rhs:Vec3, alpha:Float):Vec3;
	/**
		Multiplies a 3-dimensional vector to another in place.
	**/
	function mul(rhs:Vec3):Vec3;
	/**
		Returns the result of multiplying the specified 3-dimensional vectors together.
	**/
	function mul2(lhs:Vec3, rhs:Vec3):Vec3;
	/**
		Multiplies each element of a vector by a number.
	**/
	function mulScalar(scalar:Float):Vec3;
	/**
		Returns this 3-dimensional vector converted to a unit vector in place. If the vector has a
		length of zero, the vector's elements will be set to zero.
	**/
	function normalize():Vec3;
	/**
		Each element is set to the largest integer less than or equal to its value.
	**/
	function floor():Vec3;
	/**
		Each element is rounded up to the next largest integer.
	**/
	function ceil():Vec3;
	/**
		Each element is rounded up or down to the nearest integer.
	**/
	function round():Vec3;
	/**
		Each element is assigned a value from rhs parameter if it is smaller.
	**/
	function min(rhs:Vec3):Vec3;
	/**
		Each element is assigned a value from rhs parameter if it is larger.
	**/
	function max(rhs:Vec3):Vec3;
	/**
		Projects this 3-dimensional vector onto the specified vector.
	**/
	function project(rhs:Vec3):Vec3;
	/**
		Sets the specified 3-dimensional vector to the supplied numerical values.
	**/
	function set(x:Float, y:Float, z:Float):Vec3;
	/**
		Subtracts a 3-dimensional vector from another in place.
	**/
	function sub(rhs:Vec3):Vec3;
	/**
		Subtracts two 3-dimensional vectors from one another and returns the result.
	**/
	function sub2(lhs:Vec3, rhs:Vec3):Vec3;
	/**
		Subtracts a number from each element of a vector.
	**/
	function subScalar(scalar:Float):Vec3;
	/**
		Converts the vector to string form.
	**/
	function toString():String;
	static var prototype : Vec3;
	/**
		A constant vector set to [0, 0, 0].
	**/
	static final ZERO : Vec3;
	/**
		A constant vector set to [1, 1, 1].
	**/
	static final ONE : Vec3;
	/**
		A constant vector set to [0, 1, 0].
	**/
	static final UP : Vec3;
	/**
		A constant vector set to [0, -1, 0].
	**/
	static final DOWN : Vec3;
	/**
		A constant vector set to [1, 0, 0].
	**/
	static final RIGHT : Vec3;
	/**
		A constant vector set to [-1, 0, 0].
	**/
	static final LEFT : Vec3;
	/**
		A constant vector set to [0, 0, -1].
	**/
	static final FORWARD : Vec3;
	/**
		A constant vector set to [0, 0, 1].
	**/
	static final BACK : Vec3;
}