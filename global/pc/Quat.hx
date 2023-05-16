package global.pc;

/**
	A quaternion.
**/
@:native("pc.Quat") extern class Quat {
	/**
		Create a new Quat instance.
	**/
	function new(?x:ts.AnyOf2<Float, Array<Float>>, ?y:Float, ?z:Float, ?w:Float);
	/**
		The x component of the quaternion.
	**/
	var x : Float;
	/**
		The y component of the quaternion.
	**/
	var y : Float;
	/**
		The z component of the quaternion.
	**/
	var z : Float;
	/**
		The w component of the quaternion.
	**/
	var w : Float;
	/**
		Returns an identical copy of the specified quaternion.
	**/
	function clone():Quat;
	function conjugate():Quat;
	/**
		Copies the contents of a source quaternion to a destination quaternion.
	**/
	function copy(rhs:Quat):Quat;
	/**
		Reports whether two quaternions are equal.
	**/
	function equals(rhs:Quat):Bool;
	/**
		Reports whether two quaternions are equal using an absolute error tolerance.
	**/
	function equalsApprox(rhs:Quat, ?epsilon:Float):Bool;
	/**
		Gets the rotation axis and angle for a given quaternion. If a quaternion is created with
		`setFromAxisAngle`, this method will return the same values as provided in the original
		parameter list OR functionally equivalent values.
	**/
	function getAxisAngle(axis:Vec3):Float;
	/**
		Converts the supplied quaternion to Euler angles.
	**/
	function getEulerAngles(?eulers:Vec3):Vec3;
	/**
		Generates the inverse of the specified quaternion.
	**/
	function invert():Quat;
	/**
		Returns the magnitude of the specified quaternion.
	**/
	function length():Float;
	/**
		Returns the magnitude squared of the specified quaternion.
	**/
	function lengthSq():Float;
	/**
		Returns the result of multiplying the specified quaternions together.
	**/
	function mul(rhs:Quat):Quat;
	/**
		Returns the result of multiplying the specified quaternions together.
	**/
	function mul2(lhs:Quat, rhs:Quat):Quat;
	/**
		Returns the specified quaternion converted in place to a unit quaternion.
	**/
	function normalize():Quat;
	/**
		Sets the specified quaternion to the supplied numerical values.
	**/
	function set(x:Float, y:Float, z:Float, w:Float):Quat;
	/**
		Sets a quaternion from an angular rotation around an axis.
	**/
	function setFromAxisAngle(axis:Vec3, angle:Float):Quat;
	/**
		Sets a quaternion from Euler angles specified in XYZ order.
	**/
	function setFromEulerAngles(ex:ts.AnyOf2<Float, Vec3>, ?ey:Float, ?ez:Float):Quat;
	/**
		Converts the specified 4x4 matrix to a quaternion. Note that since a quaternion is purely a
		representation for orientation, only the translational part of the matrix is lost.
	**/
	function setFromMat4(m:Mat4):Quat;
	/**
		Set the quaternion that represents the shortest rotation from one direction to another.
	**/
	function setFromDirections(from:Vec3, to:Vec3):Quat;
	/**
		Performs a spherical interpolation between two quaternions. The result of the interpolation
		is written to the quaternion calling the function.
	**/
	function slerp(lhs:Quat, rhs:Quat, alpha:Float):Quat;
	/**
		Transforms a 3-dimensional vector by the specified quaternion.
	**/
	function transformVector(vec:Vec3, ?res:Vec3):Vec3;
	/**
		Converts the quaternion to string form.
	**/
	function toString():String;
	static var prototype : Quat;
	/**
		A constant quaternion set to [0, 0, 0, 1] (the identity).
	**/
	static final IDENTITY : Quat;
	/**
		A constant quaternion set to [0, 0, 0, 0].
	**/
	static final ZERO : Quat;
}