package global.pc;

/**
	Component Systems contain the logic and functionality to update all Components of a particular
	type.
**/
@:native("pc.ComponentSystem") extern class ComponentSystem extends EventHandler {
	/**
		Create a new ComponentSystem instance.
	**/
	function new(app:AppBase);
	var app : AppBase;
	var store : { };
	var schema : Array<Dynamic>;
	/**
		Create new {@link Component} and component data instances and attach them to the entity.
	**/
	function addComponent(entity:Entity, ?data:Dynamic):Component;
	/**
		Remove the {@link Component} from the entity and delete the associated component data.
	**/
	function removeComponent(entity:Entity):Void;
	/**
		Create a clone of component. This creates a copy of all component data variables.
	**/
	function cloneComponent(entity:Entity, clone:Entity):Component;
	/**
		Called during {@link ComponentSystem#addComponent} to initialize the component data in the
		store. This can be overridden by derived Component Systems and either called by the derived
		System or replaced entirely.
	**/
	function initializeComponentData(component:Component, data:Dynamic, properties:Array<ts.AnyOf2<String, { var name : String; var type : String; }>>):Void;
	/**
		Searches the component schema for properties that match the specified type.
	**/
	function getPropertiesOfType(type:String):ts.AnyOf2<Array<String>, Array<Dynamic>>;
	function destroy():Void;
	static var prototype : ComponentSystem;
}