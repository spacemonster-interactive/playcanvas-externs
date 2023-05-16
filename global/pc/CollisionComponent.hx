package global.pc;

/**
	A collision volume. Use this in conjunction with a {@link RigidBodyComponent} to make a
	collision volume that can be simulated using the physics engine.
	
	If the {@link Entity} does not have a {@link RigidBodyComponent} then this collision volume will
	act as a trigger volume. When an entity with a dynamic or kinematic body enters or leaves an
	entity with a trigger volume, both entities will receive trigger events.
	
	The following table shows all the events that can be fired between two Entities:
	
	|                                       | Rigid Body (Static)                                                   | Rigid Body (Dynamic or Kinematic)                                     | Trigger Volume                                      |
	| ------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------- |
	| **Rigid Body (Static)**               |                                                                       | <ul><li>contact</li><li>collisionstart</li><li>collisionend</li></ul> |                                                     |
	| **Rigid Body (Dynamic or Kinematic)** | <ul><li>contact</li><li>collisionstart</li><li>collisionend</li></ul> | <ul><li>contact</li><li>collisionstart</li><li>collisionend</li></ul> | <ul><li>triggerenter</li><li>triggerleave</li></ul> |
	| **Trigger Volume**                    |                                                                       | <ul><li>triggerenter</li><li>triggerleave</li></ul>                   |                                                     |
**/
@:native("pc.CollisionComponent") extern class CollisionComponent extends Component {
	/**
		Create a new CollisionComponent.
	**/
	function new(system:CollisionComponentSystem, entity:Entity);
	var axis : Float;
	var halfExtents : Vec3;
	var height : Float;
	var model : Null<Model>;
	var radius : Float;
	var type : String;
	private var _compoundParent : Dynamic;
	var _hasOffset : Bool;
	private var onSetType : Dynamic;
	private var onSetHalfExtents : Dynamic;
	private var onSetOffset : Dynamic;
	private var onSetRadius : Dynamic;
	private var onSetHeight : Dynamic;
	private var onSetAxis : Dynamic;
	private var onSetAsset : Dynamic;
	private var onSetRenderAsset : Dynamic;
	private var onSetModel : Dynamic;
	private var onSetRender : Dynamic;
	private var onAssetRemoved : Dynamic;
	var asset : Dynamic;
	private var onRenderAssetRemoved : Dynamic;
	var renderAsset : Dynamic;
	private var _getCompoundChildShapeIndex : Dynamic;
	private var _onInsert : Dynamic;
	private var _updateCompound : Dynamic;
	function getShapePosition():Vec3;
	function getShapeRotation():Quat;
	private var onBeforeRemove : Dynamic;
	static var prototype : CollisionComponent;
}