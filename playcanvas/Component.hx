package playcanvas;

/**
	Components are used to attach functionality on a {@link Entity}. Components can receive update
	events each frame, and expose properties to the PlayCanvas Editor.
**/
@:jsRequire("playcanvas", "Component") extern class Component extends EventHandler {
	/**
		Base constructor for a Component.
	**/
	function new(system:ComponentSystem, entity:Entity);
	var enabled : Bool;
	/**
		The ComponentSystem used to create this Component.
	**/
	var system : ComponentSystem;
	/**
		The Entity that this Component is attached to.
	**/
	var entity : Entity;
	function buildAccessors(schema:Dynamic):Void;
	function onSetEnabled(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onEnable():Void;
	function onDisable():Void;
	function onPostStateChange():Void;
	/**
		Access the component data directly. Usually you should access the data properties via the
		individual properties as modifying this data directly will not fire 'set' events.
	**/
	final data : Dynamic;
	static var prototype : Component;
	static function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
}