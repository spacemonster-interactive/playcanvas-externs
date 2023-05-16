package global.pc;

/**
	An infinite plane. Internally it's represented in a parametric equation form:
	ax + by + cz + distance = 0.
**/
@:native("pc.Plane") extern class Plane {
	/**
		Create a new Plane instance.
	**/
	function new(?normal:Vec3, ?distance:Vec3);
	/**
		The normal of the plane.
	**/
	final normal : Vec3;
	/**
		The distance from the plane to the origin, along its normal.
	**/
	final distance : Float;
	/**
		Sets the plane based on a specified normal and a point on the plane.
	**/
	function setFromPointNormal(point:Vec3, normal:Vec3):Plane;
	/**
		Test if the plane intersects between two points.
	**/
	function intersectsLine(start:Vec3, end:Vec3, ?point:Vec3):Bool;
	/**
		Test if a ray intersects with the infinite plane.
	**/
	function intersectsRay(ray:Ray, ?point:Vec3):Bool;
	/**
		Copies the contents of a source Plane.
	**/
	function copy(src:Plane):Plane;
	/**
		Returns a clone of the Plane.
	**/
	function clone():Plane;
	static var prototype : Plane;
}