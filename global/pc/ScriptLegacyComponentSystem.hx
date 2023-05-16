package global.pc;

@:native("pc.ScriptLegacyComponentSystem") extern class ScriptLegacyComponentSystem extends ComponentSystem {
	function new(app:Dynamic);
	var id : String;
	var ComponentType : {
		var prototype : ScriptLegacyComponent;
		function _buildAccessors(obj:Dynamic, schema:Dynamic):Void;
	};
	var DataType : {
		var prototype : playcanvas.ScriptLegacyComponentData;
	};
	var preloading : Bool;
	var instancesWithUpdate : Array<Dynamic>;
	var instancesWithFixedUpdate : Array<Dynamic>;
	var instancesWithPostUpdate : Array<Dynamic>;
	var instancesWithToolsUpdate : Array<Dynamic>;
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
	function onInitialize(root:Dynamic):Void;
	function onPostInitialize(root:Dynamic):Void;
	function _callInstancesMethod(script:Dynamic, method:Dynamic):Void;
	function _initializeScriptComponent(script:Dynamic):Void;
	function _enableScriptComponent(script:Dynamic):Void;
	function _disableScriptComponent(script:Dynamic):Void;
	function _destroyScriptComponent(script:Dynamic):Void;
	function _postInitializeScriptComponent(script:Dynamic):Void;
	function _updateInstances(method:Dynamic, updateList:Dynamic, dt:Dynamic):Void;
	function onUpdate(dt:Dynamic):Void;
	function onFixedUpdate(dt:Dynamic):Void;
	function onPostUpdate(dt:Dynamic):Void;
	function onToolsUpdate(dt:Dynamic):Void;
	function broadcast(name:Dynamic, functionName:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	function _preRegisterInstance(entity:Dynamic, url:Dynamic, name:Dynamic, instance:Dynamic):Void;
	function _registerInstances(entity:Dynamic):Void;
	function _cloneAttributes(attributes:Dynamic):{ };
	function _createAccessors(entity:Dynamic, instance:Dynamic):Void;
	function _createAccessor(attribute:Dynamic, instance:Dynamic):Void;
	function _updateAccessors(entity:Dynamic, instance:Dynamic):Void;
	function _convertAttributeValue(attribute:Dynamic):Void;
	static var prototype : ScriptLegacyComponentSystem;
}