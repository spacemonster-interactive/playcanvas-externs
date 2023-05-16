package playcanvas;

/**
	Allows an Entity to render a mesh or a primitive shape like a box, capsule, sphere, cylinder,
	cone etc.
**/
@:jsRequire("playcanvas", "RenderComponentSystem") extern class RenderComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : RenderComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : RenderComponentData;
	};
	var defaultMaterial : StandardMaterial;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, _data:Dynamic, properties:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onRemove(entity:Dynamic, component:Dynamic):Void;
	static var prototype : RenderComponentSystem;
}