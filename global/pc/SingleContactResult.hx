package global.pc;

/**
	Object holding the result of a contact between two rigid bodies.
**/
@:native("pc.SingleContactResult") extern class SingleContactResult {
	/**
		Create a new SingleContactResult instance.
	**/
	function new(a:Entity, b:Entity, contactPoint:ContactPoint, args:haxe.extern.Rest<Dynamic>);
	/**
		The first entity involved in the contact.
	**/
	var a : Entity;
	/**
		The second entity involved in the contact.
	**/
	var b : Entity;
	/**
		The total accumulated impulse applied by the constraint solver during the last
		sub-step. Describes how hard two bodies collided.
	**/
	var impulse : Float;
	/**
		The point on Entity A where the contact occurred, relative to A.
	**/
	var localPointA : Vec3;
	/**
		The point on Entity B where the contact occurred, relative to B.
	**/
	var localPointB : Vec3;
	/**
		The point on Entity A where the contact occurred, in world space.
	**/
	var pointA : Vec3;
	/**
		The point on Entity B where the contact occurred, in world space.
	**/
	var pointB : Vec3;
	/**
		The normal vector of the contact on Entity B, in world space.
	**/
	var normal : Vec3;
	static var prototype : SingleContactResult;
}