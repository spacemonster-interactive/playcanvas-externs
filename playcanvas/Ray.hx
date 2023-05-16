package playcanvas;

/**
	An infinite ray.
**/
@:jsRequire("playcanvas", "Ray") extern class Ray {
	/**
		Creates a new Ray instance. The ray is infinite, starting at a given origin and pointing in
		a given direction.
	**/
	function new(?origin:Vec3, ?direction:Vec3);
	/**
		The starting point of the ray.
	**/
	final origin : Vec3;
	/**
		The direction of the ray.
	**/
	final direction : Vec3;
	/**
		Sets origin and direction to the supplied vector values.
	**/
	function set(origin:Vec3, direction:Vec3):Ray;
	/**
		Copies the contents of a source Ray.
	**/
	function copy(src:Ray):Ray;
	/**
		Returns a clone of the Ray.
	**/
	function clone():Ray;
	static var prototype : Ray;
}