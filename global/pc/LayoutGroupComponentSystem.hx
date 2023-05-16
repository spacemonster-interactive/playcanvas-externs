package global.pc;

/**
	Manages creation of {@link LayoutGroupComponent}s.
**/
@:native("pc.LayoutGroupComponentSystem") extern class LayoutGroupComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : LayoutGroupComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.LayoutGroupComponentData;
	};
	var _reflowQueue : Array<Dynamic>;
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
	function scheduleReflow(component:Dynamic):Void;
	function _onPostUpdate():Void;
	function _processReflowQueue():Void;
	function _onRemoveComponent(entity:Dynamic, component:Dynamic):Void;
	static var prototype : LayoutGroupComponentSystem;
}