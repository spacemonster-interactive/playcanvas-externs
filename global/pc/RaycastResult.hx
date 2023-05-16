package global.pc;

/**
	Object holding the result of a successful raycast hit.
**/
@:native("pc.RaycastResult") extern class RaycastResult {
	/**
		Create a new RaycastResult instance.
	**/
	function new(entity:Entity, point:Vec3, normal:Vec3, hitFraction:Float);
	/**
		The entity that was hit.
	**/
	var entity : Entity;
	/**
		The point at which the ray hit the entity in world space.
	**/
	var point : Vec3;
	/**
		The normal vector of the surface where the ray hit in world space.
	**/
	var normal : Vec3;
	/**
		The normalized distance (between 0 and 1) at which the ray hit occurred from the
		starting point.
	**/
	var hitFraction : Float;
	static var prototype : RaycastResult;
}