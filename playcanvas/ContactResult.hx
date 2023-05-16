package playcanvas;

/**
	Object holding the result of a contact between two Entities.
**/
@:jsRequire("playcanvas", "ContactResult") extern class ContactResult {
	/**
		Create a new ContactResult instance.
	**/
	function new(other:Entity, contacts:Array<ContactPoint>);
	/**
		The entity that was involved in the contact with this entity.
	**/
	var other : Entity;
	/**
		An array of ContactPoints with the other entity.
	**/
	var contacts : Array<ContactPoint>;
	static var prototype : ContactResult;
}