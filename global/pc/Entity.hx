package global.pc;

/**
	The Entity is the core primitive of a PlayCanvas game. Generally speaking an object in your game
	will consist of an {@link Entity}, and a set of {@link Component}s which are managed by their
	respective {@link ComponentSystem}s. One of those components maybe a {@link ScriptComponent}
	which allows you to write custom code to attach to your Entity.
	
	The Entity uniquely identifies the object and also provides a transform for position and
	orientation which it inherits from {@link GraphNode} so can be added into the scene graph. The
	Component and ComponentSystem provide the logic to give an Entity a specific type of behavior.
	e.g. the ability to render a model or play a sound. Components are specific to an instance of an
	Entity and are attached (e.g. `this.entity.model`) ComponentSystems allow access to all Entities
	and Components and are attached to the {@link AppBase}.
**/
@:native("pc.Entity") extern class Entity extends GraphNode {
	/**
		Create a new Entity.
	**/
	function new(?name:String, ?app:AppBase);
	/**
		Gets the {@link AnimComponent} attached to this entity.
	**/
	final anim : Null<AnimComponent>;
	/**
		Gets the {@link AnimationComponent} attached to this entity.
	**/
	final animation : Null<AnimationComponent>;
	/**
		Gets the {@link AudioListenerComponent} attached to this entity.
	**/
	final audiolistener : Null<AudioListenerComponent>;
	/**
		Gets the {@link ButtonComponent} attached to this entity.
	**/
	final button : Null<ButtonComponent>;
	/**
		Gets the {@link CameraComponent} attached to this entity.
	**/
	final camera : Null<CameraComponent>;
	/**
		Gets the {@link CollisionComponent} attached to this entity.
	**/
	final collision : Null<CollisionComponent>;
	/**
		Gets the {@link ElementComponent} attached to this entity.
	**/
	final element : Null<ElementComponent>;
	/**
		Gets the {@link LayoutChildComponent} attached to this entity.
	**/
	final layoutchild : Null<LayoutChildComponent>;
	/**
		Gets the {@link LayoutGroupComponent} attached to this entity.
	**/
	final layoutgroup : Null<LayoutGroupComponent>;
	/**
		Gets the {@link LightComponent} attached to this entity.
	**/
	final light : Null<LightComponent>;
	/**
		Gets the {@link ModelComponent} attached to this entity.
	**/
	final model : Null<ModelComponent>;
	/**
		Gets the {@link ParticleSystemComponent} attached to this entity.
	**/
	final particlesystem : Null<ParticleSystemComponent>;
	/**
		Gets the {@link RenderComponent} attached to this entity.
	**/
	final render : Null<RenderComponent>;
	/**
		Gets the {@link RigidBodyComponent} attached to this entity.
	**/
	final rigidbody : Null<RigidBodyComponent>;
	/**
		Gets the {@link ScreenComponent} attached to this entity.
	**/
	final screen : Null<ScreenComponent>;
	/**
		Gets the {@link ScriptComponent} attached to this entity.
	**/
	final script : Null<ScriptComponent>;
	/**
		Gets the {@link ScrollbarComponent} attached to this entity.
	**/
	final scrollbar : Null<ScrollbarComponent>;
	/**
		Gets the {@link ScrollViewComponent} attached to this entity.
	**/
	final scrollview : Null<ScrollViewComponent>;
	/**
		Gets the {@link SoundComponent} attached to this entity.
	**/
	final sound : Null<SoundComponent>;
	/**
		Gets the {@link SpriteComponent} attached to this entity.
	**/
	final sprite : Null<SpriteComponent>;
	/**
		Component storage.
	**/
	var c : haxe.DynamicAccess<Component>;
	private var _app : Dynamic;
	/**
		Used by component systems to speed up destruction.
	**/
	var _destroying : Bool;
	private var _guid : Dynamic;
	/**
		Used to differentiate between the entities of a template root instance, which have it set to
		true, and the cloned instance entities (set to false).
	**/
	var _template : Bool;
	/**
		Create a new component and add it to the entity. Use this to add functionality to the entity
		like rendering a model, playing sounds and so on.
	**/
	function addComponent(type:String, ?data:Dynamic):Null<Component>;
	/**
		Remove a component from the Entity.
	**/
	function removeComponent(type:String):Void;
	/**
		Search the entity and all of its descendants for the first component of specified type.
	**/
	function findComponent(type:String):Component;
	/**
		Search the entity and all of its descendants for all components of specified type.
	**/
	function findComponents(type:String):Array<Component>;
	/**
		Get the GUID value for this Entity.
	**/
	function getGuid():String;
	/**
		Set the GUID value for this Entity. Note that it is unlikely that you should need to change
		the GUID value of an Entity at run-time. Doing so will corrupt the graph this Entity is in.
	**/
	function setGuid(guid:String):Void;
	private var _onHierarchyStatePostChanged : Dynamic;
	/**
		Find a descendant of this entity with the GUID.
	**/
	function findByGuid(guid:String):Null<Entity>;
	/**
		Remove all components from the Entity and detach it from the Entity hierarchy. Then
		recursively destroy all ancestor Entities.
	**/
	function destroy():Void;
	/**
		Create a deep copy of the Entity. Duplicate the full Entity hierarchy, with all Components
		and all descendants. Note, this Entity is not in the hierarchy and must be added manually.
	**/
	function clone():Entity;
	private var _cloneRecursively : Dynamic;
	static var prototype : Entity;
}