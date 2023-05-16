package global.pc;

/**
	An EntityReference can be used in scenarios where a component has one or more properties that
	refer to entities in the scene graph. Using an EntityReference simplifies the job of dealing
	with the presence or non-presence of the underlying entity and its components, especially when
	it comes to dealing with the runtime addition or removal of components, and addition/removal of
	associated event listeners.
	
	## Usage Scenario ##
	
	Imagine that you're creating a Checkbox component, which has a reference to an entity
	representing the checkmark/tickmark that is rendered in the Checkbox. The reference is modeled
	as an entity guid property on the Checkbox component, called simply 'checkmark'. We have to
	implement a basic piece of functionality whereby when the 'checkmark' entity reference is set,
	the Checkbox component must toggle the tint of an ImageElementComponent present on the checkmark
	entity to indicate whether the Checkbox is currently in the active or inactive state.
	
	Without using an EntityReference, the Checkbox component must implement some or all of the
	following:
	
	- Listen for its 'checkmark' property being set to a valid guid, and retrieve a reference to the
	   entity associated with this guid whenever it changes (i.e. via `app.root.findByGuid()`).
	- Once a valid entity is received, check to see whether it has already has an
	   ImageElementComponent or not:
	   - If it has one, proceed to set the tint of the ImageElementComponent based on whether the
	     Checkbox is currently active or inactive.
	   - If it doesn't have one, add a listener to wait for the addition of an ImageElementComponent,
	     and then apply the tint once one becomes present.
	- If the checkmark entity is then reassigned (such as if the user reassigns the field in the
	   editor, or if this is done at runtime via a script), a well-behaved Checkbox component must
	   also undo the tinting so that no lasting effect is applied to the old entity.
	- If the checkmark entity's ImageElementComponent is removed and then another
	   ImageElementComponent is added, the Checkbox component must handle this in order to re-apply
	   the tint.
	- To prevent memory leaks, the Checkbox component must also make sure to correctly remove
	   listeners in each of the following scenarios:
	   - Destruction of the Checkbox component.
	   - Reassignment of the checkmark entity.
	   - Removal of the ImageElementComponent.
	- It must also be careful not to double-add listeners in any of the above code paths, to avoid
	   various forms of undesirable behavior.
	
	If the Checkbox component becomes more complicated and has multiple entity reference properties,
	all of the above must be done correctly for each entity. Similarly, if it depends on multiple
	different component types being present on the entities it has references to, it must correctly
	handle the presence and non-presence of each of these components in the various possible
	sequences of addition and removal. In addition to generating a lot of boilerplate, it's also
	very easy for subtle mistakes to be made that lead to memory leaks, null reference errors or
	visual bugs.
	
	By using an EntityReference, all of the above can be reduced to the following:
	
	```javascript
	function CheckboxComponent() {
	    this._checkmarkReference = new pc.EntityReference(this, 'checkmark', {
	        'element#gain': this._onCheckmarkImageElementGain,
	        'element#lose': this._onCheckmarkImageElementLose
	    });
	}
	```
	
	Using the above code snippet, the `_onCheckmarkImageElementGain()` listener will be called
	in either of the following scenarios:
	
	1. A checkmark entity is assigned and already has an ElementComponent.
	2. A checkmark entity is assigned that does not have an ElementComponent, but one is added
	later.
	
	Similarly, the `_onCheckmarkImageElementLose()` listener will be called in either of the
	following scenarios:
	
	1. An ElementComponent is removed from the checkmark entity.
	2. The checkmark entity is re-assigned (i.e. to another entity), or nullified. In this
	scenario the callback will only be called if the entity actually had an ElementComponent.
	
	## Event String Format ##
	
	The event string (i.e. "element#gain" in the above examples) is of the format
	`sourceName#eventName`, and is defined as follows:
	
	- `sourceName`: May be any component name, or the special string "entity", which refers to the
	entity itself.
	- `eventName`: May be the name of any event dispatched by the relevant component or entity, as
	well as the special strings "gain" or "lose".
	
	Some examples are as follows:
	
	```javascript
	"entity#destroy"    // Called when the entity managed by the entity reference is destroyed.
	"element#set:width" // Called when the width of an ElementComponent is set.
	```
	
	When the entity reference changes to another entity (or null) the set:entity event is fired.
	
	## Ownership and Destruction ##
	
	The lifetime of an ElementReference is tied to the parent component that instantiated it. This
	coupling is indicated by the provision of the `this` keyword to the ElementReference's
	constructor in the above examples (i.e. `new pc.EntityReference(this, ...`).
	
	Any event listeners managed by the ElementReference are automatically cleaned up when the parent
	component is removed or the parent component's entity is destroyed – as such you should never
	have to worry about dangling listeners.
	
	Additionally, any callbacks listed in the event config will automatically be called in the scope
	of the parent component – you should never have to worry about manually calling
	`Function.bind()`.
**/
@:native("pc.EntityReference") extern class EntityReference extends EventHandler {
	/**
		Helper class used for managing component properties that represent entity references.
	**/
	function new(parentComponent:Component, entityPropertyName:String, ?eventConfig:haxe.DynamicAccess<haxe.Constraints.Function>);
	var _parentComponent : Component;
	var _entityPropertyName : String;
	var _entity : Entity;
	var _app : AppBase;
	function _configureEventListeners(externalEventConfig:Dynamic, internalEventConfig:Dynamic):Void;
	var _eventListenerConfigs : Array<{
		var id : String;
		var sourceName : String;
		var eventName : String;
		var callback : Dynamic;
		var scope : Dynamic;
	}>;
	var _listenerStatusFlags : { };
	var _gainListeners : { };
	var _loseListeners : { };
	function _parseEventListenerConfig(eventConfig:Dynamic, prefix:Dynamic, scope:Dynamic):Array<{
		var id : String;
		var sourceName : String;
		var eventName : String;
		var callback : Dynamic;
		var scope : Dynamic;
	}>;
	function _toggleLifecycleListeners(onOrOff:Dynamic):Void;
	function _onSetEntity(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	/**
		Must be called from the parent component's onEnable() method in order for entity references
		to be correctly resolved when {@link Entity#clone} is called.
	**/
	private var onParentComponentEnable : Dynamic;
	function _onSceneLoaded():Void;
	function _updateEntityReference():Void;
	function _onBeforeEntityChange():Void;
	function _onAfterEntityChange():Void;
	function _onComponentAdd(entity:Dynamic, component:Dynamic):Void;
	function _onComponentRemove(entity:Dynamic, component:Dynamic):Void;
	function _callAllGainOrLoseListeners(listenerMap:Dynamic):Void;
	function _callGainOrLoseListener(componentName:Dynamic, listenerMap:Dynamic):Void;
	function _toggleEntityListeners(onOrOff:Dynamic, isDestroying:Dynamic):Void;
	function _toggleComponentListeners(onOrOff:Dynamic, componentName:Dynamic, isDestroying:Dynamic):Void;
	function _safeToggleListener(onOrOff:Dynamic, config:Dynamic, isDestroying:Dynamic):Void;
	function _getEventSource(sourceName:Dynamic, isDestroying:Dynamic):Dynamic;
	function _onEntityDestroy(entity:Dynamic):Void;
	function _onParentComponentRemove(entity:Dynamic, component:Dynamic):Void;
	/**
		Convenience method indicating whether the entity exists and has a component of the provided
		type.
	**/
	function hasComponent(componentName:String):Bool;
	/**
		A reference to the entity, if present.
	**/
	final entity : Entity;
	static var prototype : EntityReference;
}