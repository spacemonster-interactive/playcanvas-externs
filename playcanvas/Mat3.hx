package playcanvas;

/**
	A 3x3 matrix.
**/
@:jsRequire("playcanvas", "Mat3") extern class Mat3 {
	function new();
	/**
		Matrix elements in the form of a flat array.
	**/
	var data : js.lib.Float32Array;
	/**
		Creates a duplicate of the specified matrix.
	**/
	function clone():Mat3;
	/**
		Copies the contents of a source 3x3 matrix to a destination 3x3 matrix.
	**/
	function copy(rhs:Mat3):Mat3;
	/**
		Copies the contents of a source array[9] to a destination 3x3 matrix.
	**/
	function set(src:Array<Float>):Mat3;
	/**
		Reports whether two matrices are equal.
	**/
	function equals(rhs:Mat3):Bool;
	/**
		Reports whether the specified matrix is the identity matrix.
	**/
	function isIdentity():Bool;
	/**
		Sets the matrix to the identity matrix.
	**/
	function setIdentity():Mat3;
	/**
		Converts the matrix to string form.
	**/
	function toString():String;
	/**
		Generates the transpose of the specified 3x3 matrix.
	**/
	function transpose():Mat3;
	/**
		Converts the specified 4x4 matrix to a Mat3.
	**/
	function setFromMat4(m:Mat4):Mat3;
	/**
		Transforms a 3-dimensional vector by a 3x3 matrix.
	**/
	function transformVector(vec:Vec3, ?res:Vec3):Vec3;
	static var prototype : Mat3;
	/**
		A constant matrix set to the identity.
	**/
	static final IDENTITY : Mat3;
	/**
		A constant matrix with all elements set to 0.
	**/
	static final ZERO : Mat3;
}