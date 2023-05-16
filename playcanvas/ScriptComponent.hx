package playcanvas;

/**
	The ScriptComponent allows you to extend the functionality of an Entity by attaching your own
	Script Types defined in JavaScript files to be executed with access to the Entity. For more
	details on scripting see [Scripting](https://developer.playcanvas.com/user-manual/scripting/).
**/
@:jsRequire("playcanvas", "ScriptComponent") extern class ScriptComponent extends Component {
	/**
		Create a new ScriptComponent instance.
	**/
	function new(system:ScriptComponentSystem, entity:Entity);
	/**
		Holds all script instances for this component.
	**/
	private var _scripts : Dynamic;
	var _updateList : SortedLoopArray;
	var _postUpdateList : SortedLoopArray;
	var _scriptsIndex : { };
	var _destroyedScripts : Array<Dynamic>;
	var _destroyed : Bool;
	var _scriptsData : Array<ScriptType>;
	var _oldState : Bool;
	var _enabled : Bool;
	var _beingEnabled : Bool;
	var _isLoopingThroughScripts : Bool;
	var _executionOrder : Float;
	/**
		An array of all script instances attached to an entity. This array is read-only and should
		not be modified by developer.
	**/
	var scripts : Array<ScriptType>;
	function _beginLooping():Bool;
	function _endLooping(wasLoopingBefore:Dynamic):Void;
	function _onSetEnabled(prop:Dynamic, old:Dynamic, value:Dynamic):Void;
	function _checkState():Void;
	function _onBeforeRemove():Void;
	function _removeDestroyedScripts():Void;
	function _onInitializeAttributes():Void;
	function _scriptMethod(script:Dynamic, method:Dynamic, arg:Dynamic):Void;
	function _onInitialize():Void;
	function _onPostInitialize():Void;
	function _onUpdate(dt:Dynamic):Void;
	function _onPostUpdate(dt:Dynamic):Void;
	/**
		Inserts script instance into the scripts array at the specified index. Also inserts the
		script into the update list if it has an update method and the post update list if it has a
		postUpdate method.
	**/
	private var _insertScriptInstance : Dynamic;
	function _removeScriptInstance(scriptInstance:Dynamic):Float;
	function _resetExecutionOrder(startIndex:Dynamic, scriptsLength:Dynamic):Void;
	function _resolveEntityScriptAttribute(attribute:Dynamic, attributeName:Dynamic, oldValue:Dynamic, useGuid:Dynamic, newAttributes:Dynamic, duplicatedIdsMap:Dynamic):Void;
	/**
		Detect if script is attached to an entity.
	**/
	function has(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>):Bool;
	/**
		Get a script instance (if attached).
	**/
	function get(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>):Null<ScriptType>;
	/**
		Create a script instance and attach to an entity script component.
	**/
	function create(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>, ?args:{ @:optional var enabled : Bool; @:optional var attributes : Dynamic; @:optional var preloading : Bool; @:optional var ind : Float; }):Null<ScriptType>;
	/**
		Destroy the script instance that is attached to an entity.
	**/
	function destroy(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>):Bool;
	/**
		Swap the script instance.
	**/
	private var swap : Dynamic;
	/**
		When an entity is cloned and it has entity script attributes that point to other entities in
		the same subtree that is cloned, then we want the new script attributes to point at the
		cloned entities. This method remaps the script attributes for this entity and it assumes
		that this entity is the result of the clone operation.
	**/
	private var resolveDuplicatedEntityReferenceProperties : Dynamic;
	/**
		Move script instance to different position to alter update order of scripts within entity.
	**/
	function move(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>, ind:Float):Bool;
	static var prototype : ScriptComponent;
}