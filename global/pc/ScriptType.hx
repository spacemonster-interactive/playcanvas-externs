package global.pc;

/**
	Represents the type of a script. It is returned by {@link createScript}. Also referred to as
	Script Type.
	
	The type is to be extended using its JavaScript prototype. There is a list of methods that will
	be executed by the engine on instances of this type, such as:
	
	- `initialize`
	- `postInitialize`
	- `update`
	- `postUpdate`
	- `swap`
	
	`initialize` and `postInitialize` - are called (if defined) when a script is about to run for
	the first time - `postInitialize` will run after all `initialize` methods are executed in the
	same tick or enabling chain of actions.
	
	`update` and `postUpdate` - are called (if defined) for enabled (running state) scripts on each
	tick.
	
	`swap` - is called when a ScriptType that already exists in the registry gets redefined. If the
	new ScriptType has a `swap` method in its prototype, then it will be executed to perform hot-
	reload at runtime.
**/
@:native("pc.ScriptType") extern class ScriptType extends EventHandler {
	/**
		Create a new ScriptType instance.
	**/
	function new(args:{ var app : AppBase; var entity : Entity; });
	/**
		The {@link AppBase} that the instance of this type belongs to.
	**/
	var app : AppBase;
	/**
		The {@link Entity} that the instance of this type belongs to.
	**/
	var entity : Entity;
	private var _enabled : Dynamic;
	private var _enabledOld : Dynamic;
	private var _initialized : Dynamic;
	private var _postInitialized : Dynamic;
	private var __destroyed : Dynamic;
	private var __attributes : Dynamic;
	private var __attributesRaw : Dynamic;
	private var __scriptType : Dynamic;
	/**
		The order in the script component that the methods of this script instance will run
		relative to other script instances in the component.
	**/
	private var __executionOrder : Dynamic;
	/**
		True if the instance of this type is in running state. False when script is not running,
		because the Entity or any of its parents are disabled or the {@link ScriptComponent} is
		disabled or the Script Instance is disabled. When disabled no update methods will be called
		on each tick. initialize and postInitialize methods will run once when the script instance
		is in `enabled` state during app tick.
	**/
	var enabled : Bool;
	/**
		Called when script is about to run for the first time.
	**/
	@:optional
	function initialize():Void;
	/**
		Called after all initialize methods are executed in the same tick or enabling chain of actions.
	**/
	@:optional
	function postInitialize():Void;
	/**
		Called for enabled (running state) scripts on each tick.
	**/
	@:optional
	function update(dt:Float):Void;
	/**
		Called for enabled (running state) scripts on each tick, after update.
	**/
	@:optional
	function postUpdate(dt:Float):Void;
	/**
		Called when a ScriptType that already exists in the registry gets redefined. If the new
		ScriptType has a `swap` method in its prototype, then it will be executed to perform
		hot-reload at runtime.
	**/
	@:optional
	function swap(old:ScriptType):Void;
	private var initScriptType : Dynamic;
	private var __initializeAttributes : Dynamic;
	static var prototype : ScriptType;
	/**
		Name of a Script Type.
	**/
	private static var __name : Dynamic;
	private static var __getScriptName : Dynamic;
	/**
		Name of a Script Type.
	**/
	static final scriptName : String;
	/**
		The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}.
	**/
	static final attributes : ScriptAttributes;
	/**
		Shorthand function to extend Script Type prototype with list of methods.
	**/
	static function extend(methods:Dynamic):Void;
}