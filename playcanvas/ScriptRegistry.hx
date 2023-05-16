package playcanvas;

/**
	Container for all {@link ScriptType}s that are available to this application. Note that
	PlayCanvas scripts can access the Script Registry from inside the application with
	{@link AppBase#scripts}.
**/
@:jsRequire("playcanvas", "ScriptRegistry") extern class ScriptRegistry extends EventHandler {
	/**
		Create a new ScriptRegistry instance.
	**/
	function new(app:AppBase);
	var app : AppBase;
	var _scripts : { };
	var _list : Array<Dynamic>;
	function destroy():Void;
	/**
		Add {@link ScriptType} to registry. Note: when {@link createScript} is called, it will add
		the {@link ScriptType} to the registry automatically. If a script already exists in
		registry, and the new script has a `swap` method defined, it will perform code hot swapping
		automatically in async manner.
	**/
	function add(script:{ var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }):Bool;
	/**
		Remove {@link ScriptType}.
	**/
	function remove(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>):Bool;
	/**
		Get {@link ScriptType} by name.
	**/
	function get(name:String):{
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
	};
	/**
		Check if a {@link ScriptType} with the specified name is in the registry.
	**/
	function has(nameOrType:ts.AnyOf2<String, { var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; }>):Bool;
	/**
		Get list of all {@link ScriptType}s from registry.
	**/
	function list():Array<{
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
	static var prototype : ScriptRegistry;
}