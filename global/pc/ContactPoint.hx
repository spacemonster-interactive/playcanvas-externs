package global.pc;

/**
	Object holding the result of a contact between two Entities.
**/
@:native("pc.ContactPoint") extern class ContactPoint {
	/**
		Create a new ContactPoint instance.
	**/
	function new(?localPoint:Vec3, ?localPointOther:Vec3, ?point:Vec3, ?pointOther:Vec3, ?normal:Vec3, ?impulse:Float);
	/**
		The point on the entity where the contact occurred, relative to the entity.
	**/
	var localPoint : Vec3;
	/**
		The point on the other entity where the contact occurred, relative to the other entity.
	**/
	var localPointOther : Vec3;
	/**
		The point on the entity where the contact occurred, in world space.
	**/
	var point : Vec3;
	/**
		The point on the other entity where the contact occurred, in world space.
	**/
	var pointOther : Vec3;
	/**
		The normal vector of the contact on the other entity, in world space.
	**/
	var normal : Vec3;
	/**
		The total accumulated impulse applied by the constraint solver during the last sub-step.
		Describes how hard two objects collide.
	**/
	var impulse : Float;
	static var prototype : ContactPoint;
}