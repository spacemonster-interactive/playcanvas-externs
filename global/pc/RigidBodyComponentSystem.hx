package global.pc;

/**
	The RigidBodyComponentSystem maintains the dynamics world for simulating rigid bodies, it also
	controls global values for the world such as gravity. Note: The RigidBodyComponentSystem is only
	valid if 3D Physics is enabled in your application. You can enable this in the application
	settings for your project.
**/
@:native("pc.RigidBodyComponentSystem") extern class RigidBodyComponentSystem extends ComponentSystem {
	var maxSubSteps : Float;
	var fixedTimeStep : Float;
	/**
		The world space vector representing global gravity in the physics simulation. Defaults to
		[0, -9.81, 0] which is an approximation of the gravitational force on Earth.
	**/
	var gravity : Vec3;
	private var _gravityFloat32 : Dynamic;
	private var _dynamic : Dynamic;
	private var _kinematic : Dynamic;
	private var _triggers : Dynamic;
	private var _compounds : Dynamic;
	var id : String;
	var _stats : {
		var fps : Float;
		var ms : Float;
		var dt : Float;
		var updateStart : Float;
		var updateTime : Float;
		var renderStart : Float;
		var renderTime : Float;
		var physicsStart : Float;
		var physicsTime : Float;
		var cullTime : Float;
		var sortTime : Float;
		var skinTime : Float;
		var morphTime : Float;
		var instancingTime : Float;
		var triangles : Float;
		var otherPrimitives : Float;
		var shaders : Float;
		var materials : Float;
		var cameras : Float;
		var shadowMapUpdates : Float;
		var shadowMapTime : Float;
		var depthMapTime : Float;
		var forwardTime : Float;
		var lightClustersTime : Float;
		var lightClusters : Float;
		var _timeToCountFrames : Float;
		var _fpsAccum : Float;
	};
	var ComponentType : {
		var prototype : RigidBodyComponent;
		function onLibraryLoaded():Void;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.RigidBodyComponentData;
	};
	var contactPointPool : playcanvas.ObjectPool;
	var contactResultPool : playcanvas.ObjectPool;
	var singleContactResultPool : playcanvas.ObjectPool;
	var collisions : { };
	var frameCollisions : { };
	/**
		Called once Ammo has been loaded. Responsible for creating the physics world.
	**/
	function onLibraryLoaded():Void;
	var collisionConfiguration : Dynamic;
	var dispatcher : Dynamic;
	var overlappingPairCache : Dynamic;
	var solver : Dynamic;
	var dynamicsWorld : Dynamic;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	function onRemove(entity:Dynamic, component:Dynamic):Void;
	function addBody(body:Dynamic, group:Dynamic, mask:Dynamic):Void;
	function removeBody(body:Dynamic):Void;
	function createBody(mass:Dynamic, shape:Dynamic, transform:Dynamic):Dynamic;
	function destroyBody(body:Dynamic):Void;
	/**
		Raycast the world and return the first entity the ray hits. Fire a ray into the world from
		start to end, if the ray hits an entity with a collision component, it returns a
		{@link RaycastResult}, otherwise returns null.
	**/
	function raycastFirst(start:Vec3, end:Vec3, ?options:{ @:optional var filterCollisionGroup : Float; @:optional var filterCollisionMask : Float; @:optional var filterTags : Array<Dynamic>; @:optional var filterCallback : haxe.Constraints.Function; }, args:haxe.extern.Rest<Dynamic>):Null<RaycastResult>;
	/**
		Raycast the world and return all entities the ray hits. It returns an array of
		{@link RaycastResult}, one for each hit. If no hits are detected, the returned array will be
		of length 0. Results are sorted by distance with closest first.
	**/
	function raycastAll(start:Vec3, end:Vec3, ?options:{ @:optional var sort : Bool; @:optional var filterCollisionGroup : Float; @:optional var filterCollisionMask : Float; @:optional var filterTags : Array<Dynamic>; @:optional var filterCallback : haxe.Constraints.Function; }):Array<RaycastResult>;
	/**
		Stores a collision between the entity and other in the contacts map and returns true if it
		is a new collision.
	**/
	private var _storeCollision : Dynamic;
	function _createContactPointFromAmmo(contactPoint:Dynamic):Dynamic;
	function _createReverseContactPointFromAmmo(contactPoint:Dynamic):Dynamic;
	function _createSingleContactResult(a:Dynamic, b:Dynamic, contactPoint:Dynamic):Dynamic;
	function _createContactResult(other:Dynamic, contacts:Dynamic):Dynamic;
	/**
		Removes collisions that no longer exist from the collisions list and fires collisionend
		events to the related entities.
	**/
	private var _cleanOldCollisions : Dynamic;
	/**
		Returns true if the entity has a contact event attached and false otherwise.
	**/
	private var _hasContactEvent : Dynamic;
	/**
		Checks for collisions and fires collision events.
	**/
	private var _checkForCollisions : Dynamic;
	function onUpdate(dt:Dynamic):Void;
	static var prototype : RigidBodyComponentSystem;
}