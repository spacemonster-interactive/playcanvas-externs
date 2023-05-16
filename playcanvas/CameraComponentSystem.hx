package playcanvas;

/**
	Used to add and remove {@link CameraComponent}s from Entities. It also holds an array of all
	active cameras.
**/
@:jsRequire("playcanvas", "CameraComponentSystem") extern class CameraComponentSystem extends ComponentSystem {
	/**
		Holds all the active camera components.
	**/
	var cameras : Array<CameraComponent>;
	var id : String;
	var ComponentType : {
		var prototype : CameraComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : CameraComponentData;
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
	function onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	function onUpdate(dt:Dynamic):Void;
	function onAppPrerender():Void;
	function addCamera(camera:Dynamic):Void;
	function removeCamera(camera:Dynamic):Void;
	static var prototype : CameraComponentSystem;
}