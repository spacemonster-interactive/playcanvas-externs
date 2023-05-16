package global.pc;

/**
	The AnimComponentSystem manages creating and deleting AnimComponents.
**/
@:native("pc.AnimComponentSystem") extern class AnimComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : AnimComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.AnimComponentData;
	};
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function onAnimationUpdate(dt:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	static var prototype : AnimComponentSystem;
}