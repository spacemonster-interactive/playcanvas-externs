package global.pc;

/**
	Allows an Entity to render a model or a primitive shape like a box, capsule, sphere, cylinder,
	cone etc.
**/
@:native("pc.ModelComponentSystem") extern class ModelComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ModelComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ModelComponentData;
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
	static var prototype : ModelComponentSystem;
}