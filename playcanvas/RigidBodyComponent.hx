package playcanvas;

/**
	The rigidbody component, when combined with a {@link CollisionComponent}, allows your entities
	to be simulated using realistic physics. A rigidbody component will fall under gravity and
	collide with other rigid bodies. Using scripts, you can apply forces and impulses to rigid
	bodies.
	
	You should never need to use the RigidBodyComponent constructor. To add an RigidBodyComponent to
	a {@link Entity}, use {@link Entity#addComponent}:
	
	```javascript
	// Create a static 1x1x1 box-shaped rigid body
	const entity = pc.Entity();
	entity.addComponent("rigidbody"); // Without options, this defaults to a 'static' body
	entity.addComponent("collision"); // Without options, this defaults to a 1x1x1 box shape
	```
	
	To create a dynamic sphere with mass of 10, do:
	
	```javascript
	const entity = pc.Entity();
	entity.addComponent("rigidbody", {
	     type: pc.BODYTYPE_DYNAMIC,
	     mass: 10
	});
	entity.addComponent("collision", {
	     type: "sphere"
	});
	```
	
	Relevant 'Engine-only' examples:
	
	- [Falling shapes](http://playcanvas.github.io/#physics/falling-shapes)
	- [Vehicle physics](http://playcanvas.github.io/#physics/vehicle)
**/
@:jsRequire("playcanvas", "RigidBodyComponent") extern class RigidBodyComponent extends Component {
	/**
		Create a new RigidBodyComponent instance.
	**/
	function new(system:RigidBodyComponentSystem, entity:Entity);
	private var _angularDamping : Dynamic;
	private var _angularFactor : Dynamic;
	private var _angularVelocity : Dynamic;
	private var _body : Dynamic;
	private var _friction : Dynamic;
	private var _group : Dynamic;
	private var _linearDamping : Dynamic;
	private var _linearFactor : Dynamic;
	private var _linearVelocity : Dynamic;
	private var _mask : Dynamic;
	private var _mass : Dynamic;
	private var _restitution : Dynamic;
	private var _rollingFriction : Dynamic;
	private var _simulationEnabled : Dynamic;
	private var _type : Dynamic;
	/**
		Controls the rate at which a body loses angular velocity over time.
	**/
	var angularDamping : Float;
	/**
		Scaling factor for angular movement of the body in each axis. Only valid for rigid bodies of
		type {@link BODYTYPE_DYNAMIC}. Defaults to 1 in all axes (body can freely rotate).
	**/
	var angularFactor : Vec3;
	/**
		Defines the rotational speed of the body around each world axis.
	**/
	var angularVelocity : Vec3;
	var body : Dynamic;
	/**
		The friction value used when contacts occur between two bodies. A higher value indicates
		more friction. Should be set in the range 0 to 1. Defaults to 0.5.
	**/
	var friction : Float;
	/**
		The collision group this body belongs to. Combine the group and the mask to prevent bodies
		colliding with each other. Defaults to 1.
	**/
	var group : Float;
	/**
		Controls the rate at which a body loses linear velocity over time. Defaults to 0.
	**/
	var linearDamping : Float;
	/**
		Scaling factor for linear movement of the body in each axis. Only valid for rigid bodies of
		type {@link BODYTYPE_DYNAMIC}. Defaults to 1 in all axes (body can freely move).
	**/
	var linearFactor : Vec3;
	/**
		Defines the speed of the body in a given direction.
	**/
	var linearVelocity : Vec3;
	/**
		The collision mask sets which groups this body collides with. It is a bitfield of 16 bits,
		the first 8 bits are reserved for engine use. Defaults to 65535.
	**/
	var mask : Float;
	/**
		The mass of the body. This is only relevant for {@link BODYTYPE_DYNAMIC} bodies, other types
		have infinite mass. Defaults to 1.
	**/
	var mass : Float;
	/**
		Influences the amount of energy lost when two rigid bodies collide. The calculation
		multiplies the restitution values for both colliding bodies. A multiplied value of 0 means
		that all energy is lost in the collision while a value of 1 means that no energy is lost.
		Should be set in the range 0 to 1. Defaults to 0.
	**/
	var restitution : Float;
	/**
		Sets a torsional friction orthogonal to the contact point. Defaults to 0.
	**/
	var rollingFriction : Float;
	/**
		The rigid body type determines how the body is simulated. Can be:
		
		- {@link BODYTYPE_STATIC}: infinite mass and cannot move.
		- {@link BODYTYPE_DYNAMIC}: simulated according to applied forces.
		- {@link BODYTYPE_KINEMATIC}: infinite mass and does not respond to forces (can only be
		moved by setting the position and rotation of component's {@link Entity}).
		
		Defaults to {@link BODYTYPE_STATIC}.
	**/
	var type : String;
	/**
		If the Entity has a Collision shape attached then create a rigid body using this shape. This
		method destroys the existing body.
	**/
	private var createBody : Dynamic;
	/**
		Returns true if the rigid body is currently actively being simulated. I.e. Not 'sleeping'.
	**/
	function isActive():Bool;
	/**
		Forcibly activate the rigid body simulation. Only affects rigid bodies of type
		{@link BODYTYPE_DYNAMIC}.
	**/
	function activate():Void;
	/**
		Add a body to the simulation.
	**/
	function enableSimulation():Void;
	/**
		Remove a body from the simulation.
	**/
	function disableSimulation():Void;
	/**
		Apply an force to the body at a point. By default, the force is applied at the origin of the
		body. However, the force can be applied at an offset this point by specifying a world space
		vector from the body's origin to the point of application. This function has two valid
		signatures. You can either specify the force (and optional relative point) via 3D-vector or
		numbers.
	**/
	function applyForce(x:ts.AnyOf2<Float, Vec3>, ?y:ts.AnyOf2<Float, Vec3>, ?z:Float, ?px:Float, ?py:Float, ?pz:Float):Void;
	/**
		Apply torque (rotational force) to the body. This function has two valid signatures. You can
		either specify the torque force with a 3D-vector or with 3 numbers.
	**/
	function applyTorque(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Apply an impulse (instantaneous change of velocity) to the body at a point. This function
		has two valid signatures. You can either specify the impulse (and optional relative point)
		via 3D-vector or numbers.
	**/
	function applyImpulse(x:ts.AnyOf2<Float, Vec3>, ?y:ts.AnyOf2<Float, Vec3>, ?z:Float, ?px:Float, ?py:Float, ?pz:Float):Void;
	/**
		Apply a torque impulse (rotational force applied instantaneously) to the body. This function
		has two valid signatures. You can either specify the torque force with a 3D-vector or with 3
		numbers.
	**/
	function applyTorqueImpulse(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Returns true if the rigid body is of type {@link BODYTYPE_STATIC}.
	**/
	function isStatic():Bool;
	/**
		Returns true if the rigid body is of type {@link BODYTYPE_STATIC} or {@link BODYTYPE_KINEMATIC}.
	**/
	function isStaticOrKinematic():Bool;
	/**
		Returns true if the rigid body is of type {@link BODYTYPE_KINEMATIC}.
	**/
	function isKinematic():Bool;
	/**
		Writes an entity transform into an Ammo.btTransform but ignoring scale.
	**/
	private var _getEntityTransform : Dynamic;
	/**
		Set the rigid body transform to be the same as the Entity transform. This must be called
		after any Entity transformation functions (e.g. {@link Entity#setPosition}) are called in
		order to update the rigid body to match the Entity.
	**/
	private var syncEntityToBody : Dynamic;
	/**
		Sets an entity's transform to match that of the world transformation matrix of a dynamic
		rigid body's motion state.
	**/
	private var _updateDynamic : Dynamic;
	/**
		Writes the entity's world transformation matrix into the motion state of a kinematic body.
	**/
	private var _updateKinematic : Dynamic;
	/**
		Teleport an entity to a new world-space position, optionally setting orientation. This
		function should only be called for rigid bodies that are dynamic. This function has three
		valid signatures. The first takes a 3-dimensional vector for the position and an optional
		3-dimensional vector for Euler rotation. The second takes a 3-dimensional vector for the
		position and an optional quaternion for rotation. The third takes 3 numbers for the position
		and an optional 3 numbers for Euler rotation.
	**/
	function teleport(x:ts.AnyOf2<Float, Vec3>, ?y:ts.AnyOf3<Float, Vec3, Quat>, ?z:Float, ?rx:Float, ?ry:Float, ?rz:Float):Void;
	static var prototype : RigidBodyComponent;
	static function onLibraryLoaded():Void;
}