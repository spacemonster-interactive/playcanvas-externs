package global.pc;

/**
	Create and register a new {@link ScriptType}. It returns new class type (constructor function),
	which is auto-registered to {@link ScriptRegistry} using its name. This is the main interface to
	create Script Types, to define custom logic using JavaScript, that is used to create interaction
	for entities.
**/
@:native("pc.createScript") @valueModuleOnly extern class CreateScript {
	/**
		Create and register a new {@link ScriptType}. It returns new class type (constructor function),
		which is auto-registered to {@link ScriptRegistry} using its name. This is the main interface to
		create Script Types, to define custom logic using JavaScript, that is used to create interaction
		for entities.
	**/
	@:selfCall
	static function call(name:String, ?app:AppBase):Null<{
		var prototype : ScriptType;
		/**
			Name of a Script Type.
		**/
		var __name : Dynamic;
		var __getScriptName : Dynamic;
		/**
			Name of a Script Type.
		**/
		final scriptName : String;
		/**
			The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}.
		**/
		final attributes : ScriptAttributes;
		/**
			Shorthand function to extend Script Type prototype with list of methods.
		**/
		function extend(methods:Dynamic):Void;
	}>;
	static final reservedAttributes : { };
}