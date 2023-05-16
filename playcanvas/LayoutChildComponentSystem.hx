package playcanvas;

/**
	Manages creation of {@link LayoutChildComponent}s.
**/
@:jsRequire("playcanvas", "LayoutChildComponentSystem") extern class LayoutChildComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : LayoutChildComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : LayoutChildComponentData;
	};
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
	static var prototype : LayoutChildComponentSystem;
}