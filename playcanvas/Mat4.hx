package playcanvas;

/**
	A 4x4 matrix.
**/
@:jsRequire("playcanvas", "Mat4") extern class Mat4 {
	function new();
	/**
		Matrix elements in the form of a flat array.
	**/
	var data : js.lib.Float32Array;
	/**
		Adds the specified 4x4 matrices together and stores the result in the current instance.
	**/
	function add2(lhs:Mat4, rhs:Mat4):Mat4;
	/**
		Adds the specified 4x4 matrix to the current instance.
	**/
	function add(rhs:Mat4):Mat4;
	/**
		Creates a duplicate of the specified matrix.
	**/
	function clone():Mat4;
	/**
		Copies the contents of a source 4x4 matrix to a destination 4x4 matrix.
	**/
	function copy(rhs:Mat4):Mat4;
	/**
		Reports whether two matrices are equal.
	**/
	function equals(rhs:Mat4):Bool;
	/**
		Reports whether the specified matrix is the identity matrix.
	**/
	function isIdentity():Bool;
	/**
		Multiplies the specified 4x4 matrices together and stores the result in the current
		instance.
	**/
	function mul2(lhs:Mat4, rhs:Mat4):Mat4;
	/**
		Multiplies the specified 4x4 matrices together and stores the result in the current
		instance. This function assumes the matrices are affine transformation matrices, where the
		upper left 3x3 elements are a rotation matrix, and the bottom left 3 elements are
		translation. The rightmost column is assumed to be [0, 0, 0, 1]. The parameters are not
		verified to be in the expected format. This function is faster than general
		{@link Mat4#mul2}.
	**/
	function mulAffine2(lhs:Mat4, rhs:Mat4):Mat4;
	/**
		Multiplies the current instance by the specified 4x4 matrix.
	**/
	function mul(rhs:Mat4):Mat4;
	/**
		Transforms a 3-dimensional point by a 4x4 matrix.
	**/
	function transformPoint(vec:Vec3, ?res:Vec3):Vec3;
	/**
		Transforms a 3-dimensional vector by a 4x4 matrix.
	**/
	function transformVector(vec:Vec3, ?res:Vec3):Vec3;
	/**
		Transforms a 4-dimensional vector by a 4x4 matrix.
	**/
	function transformVec4(vec:Vec4, ?res:Vec4):Vec4;
	/**
		Sets the specified matrix to a viewing matrix derived from an eye point, a target point and
		an up vector. The matrix maps the target point to the negative z-axis and the eye point to
		the origin, so that when you use a typical projection matrix, the center of the scene maps
		to the center of the viewport. Similarly, the direction described by the up vector projected
		onto the viewing plane is mapped to the positive y-axis so that it points upward in the
		viewport. The up vector must not be parallel to the line of sight from the eye to the
		reference point.
	**/
	function setLookAt(position:Vec3, target:Vec3, up:Vec3):Mat4;
	/**
		Sets the specified matrix to a perspective projection matrix. The function's parameters
		define the shape of a frustum.
	**/
	function setFrustum(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float):Mat4;
	/**
		Sets the specified matrix to a perspective projection matrix. The function's parameters
		define the shape of a frustum.
	**/
	function setPerspective(fov:Float, aspect:Float, znear:Float, zfar:Float, ?fovIsHorizontal:Bool):Mat4;
	/**
		Sets the specified matrix to an orthographic projection matrix. The function's parameters
		define the shape of a cuboid-shaped frustum.
	**/
	function setOrtho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):Mat4;
	/**
		Sets the specified matrix to a rotation matrix equivalent to a rotation around an axis. The
		axis must be normalized (unit length) and the angle must be specified in degrees.
	**/
	function setFromAxisAngle(axis:Vec3, angle:Float):Mat4;
	/**
		Sets the specified matrix to a translation matrix.
	**/
	function setTranslate(x:Float, y:Float, z:Float):Mat4;
	/**
		Sets the specified matrix to a scale matrix.
	**/
	function setScale(x:Float, y:Float, z:Float):Mat4;
	/**
		Sets the specified matrix to a matrix transforming a normalized view volume (in range of
		-1 .. 1) to their position inside a viewport (in range of 0 .. 1). This encapsulates a
		scaling to the size of the viewport and a translation to the position of the viewport.
	**/
	function setViewport(x:Float, y:Float, width:Float, height:Float):Mat4;
	/**
		Sets the matrix to a reflection matrix, which can be used as a mirror transformation by the
		plane.
	**/
	function setReflection(normal:Vec3, distance:Float):Mat4;
	/**
		Sets the specified matrix to its inverse.
	**/
	function invert():Mat4;
	/**
		Sets matrix data from an array.
	**/
	function set(src:Array<Float>):Mat4;
	/**
		Sets the specified matrix to the identity matrix.
	**/
	function setIdentity():Mat4;
	/**
		Sets the specified matrix to the concatenation of a translation, a quaternion rotation and a
		scale.
	**/
	function setTRS(t:Vec3, r:Quat, s:Vec3):Mat4;
	/**
		Sets the specified matrix to its transpose.
	**/
	function transpose():Mat4;
	function invertTo3x3(res:Dynamic):Mat4;
	/**
		Extracts the translational component from the specified 4x4 matrix.
	**/
	function getTranslation(?t:Vec3):Vec3;
	/**
		Extracts the x-axis from the specified 4x4 matrix.
	**/
	function getX(?x:Vec3):Vec3;
	/**
		Extracts the y-axis from the specified 4x4 matrix.
	**/
	function getY(?y:Vec3):Vec3;
	/**
		Extracts the z-axis from the specified 4x4 matrix.
	**/
	function getZ(?z:Vec3):Vec3;
	/**
		Extracts the scale component from the specified 4x4 matrix.
	**/
	function getScale(?scale:Vec3):Vec3;
	/**
		-1 if the the matrix has an odd number of negative scales (mirrored); 1 otherwise.
	**/
	final scaleSign : Float;
	/**
		Sets the specified matrix to a rotation matrix defined by Euler angles. The Euler angles are
		specified in XYZ order and in degrees.
	**/
	function setFromEulerAngles(ex:Float, ey:Float, ez:Float):Mat4;
	/**
		Extracts the Euler angles equivalent to the rotational portion of the specified matrix. The
		returned Euler angles are in XYZ order an in degrees.
	**/
	function getEulerAngles(?eulers:Vec3):Vec3;
	/**
		Converts the specified matrix to string form.
	**/
	function toString():String;
	static var prototype : Mat4;
	static function _getPerspectiveHalfSize(halfSize:Dynamic, fov:Dynamic, aspect:Dynamic, znear:Dynamic, fovIsHorizontal:Dynamic):Void;
	/**
		A constant matrix set to the identity.
	**/
	static final IDENTITY : Mat4;
	/**
		A constant matrix with all elements set to 0.
	**/
	static final ZERO : Mat4;
}