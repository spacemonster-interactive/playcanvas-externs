package global.pc;

/**
	Manages creation of {@link ScreenComponent}s.
**/
@:native("pc.ScreenComponentSystem") extern class ScreenComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ScreenComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ScreenComponentData;
	};
	var windowResolution : Vec2;
	var _drawOrderSyncQueue : IndexedList;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic, properties:Dynamic):Void;
	function _onUpdate(dt:Dynamic):Void;
	function _onResize(width:Dynamic, height:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	function processDrawOrderSyncQueue():Void;
	function queueDrawOrderSync(id:Dynamic, fn:Dynamic, scope:Dynamic):Void;
	static var prototype : ScreenComponentSystem;
}