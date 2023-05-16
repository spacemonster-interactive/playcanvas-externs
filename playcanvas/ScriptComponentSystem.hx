package playcanvas;

/**
	Allows scripts to be attached to an Entity and executed.
**/
@:jsRequire("playcanvas", "ScriptComponentSystem") extern class ScriptComponentSystem extends ComponentSystem {
	var id : String;
	var ComponentType : {
		var prototype : ScriptComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : ScriptComponentData;
	};
	var _components : SortedLoopArray;
	var _enabledComponents : SortedLoopArray;
	var preloading : Bool;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Dynamic, data:Dynamic):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Dynamic, clone:Dynamic):Component;
	function _resetExecutionOrder():Void;
	function _callComponentMethod(components:Dynamic, name:Dynamic, dt:Dynamic):Void;
	function _onInitialize():Void;
	function _onPostInitialize():Void;
	function _onUpdate(dt:Dynamic):Void;
	function _onPostUpdate(dt:Dynamic):Void;
	function _addComponentToEnabled(component:Dynamic):Void;
	function _removeComponentFromEnabled(component:Dynamic):Void;
	function _onBeforeRemove(entity:Dynamic, component:Dynamic):Void;
	static var prototype : ScriptComponentSystem;
}