package global.pc;

/**
	A bounding sphere is a volume for facilitating fast intersection testing.
**/
@:native("pc.BoundingSphere") extern class BoundingSphere {
	/**
		Creates a new BoundingSphere instance.
	**/
	function new(?center:Vec3, ?radius:Float);
	/**
		Center of sphere.
	**/
	var center : Vec3;
	/**
		The radius of the bounding sphere.
	**/
	var radius : Float;
	function containsPoint(point:Dynamic):Bool;
	/**
		Test if a ray intersects with the sphere.
	**/
	function intersectsRay(ray:Ray, ?point:Vec3):Bool;
	/**
		Test if a Bounding Sphere is overlapping, enveloping, or inside this Bounding Sphere.
	**/
	function intersectsBoundingSphere(sphere:BoundingSphere):Bool;
	static var prototype : BoundingSphere;
}