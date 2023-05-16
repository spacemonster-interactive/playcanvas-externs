package playcanvas;

/**
	A Light Component is used to dynamically light the scene.
**/
@:jsRequire("playcanvas", "LightComponentSystem") extern class LightComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : LightComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : LightComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, _data:Dynamic):Void;
	function _onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function changeType(component:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	static var prototype : LightComponentSystem;
}