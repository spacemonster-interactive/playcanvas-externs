package global.pc;

/**
	Container of Script Attribute definitions. Implements an interface to add/remove attributes and
	store their definition for a {@link ScriptType}. Note: An instance of ScriptAttributes is
	created automatically by each {@link ScriptType}.
**/
@:native("pc.ScriptAttributes") extern class ScriptAttributes {
	/**
		Create a new ScriptAttributes instance.
	**/
	function new(scriptType:{ var prototype : ScriptType; /** Name of a Script Type. **/ var __name : Dynamic; var __getScriptName : Dynamic; /** Name of a Script Type. **/ final scriptName : String; /** The interface to define attributes for Script Types. Refer to {@link ScriptAttributes}. **/ final attributes : ScriptAttributes; /** Shorthand function to extend Script Type prototype with list of methods. **/ function extend(methods:Dynamic):Void; });
	var scriptType : {
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
	var index : { };
	/**
		Add Attribute.
	**/
	function add(name:String, args:{ var type : String; @:optional @:native("default") var default_ : Dynamic; @:optional var title : String; @:optional var description : String; @:optional var placeholder : ts.AnyOf2<String, Array<String>>; @:optional var array : Bool; @:optional var size : Float; @:optional var min : Float; @:optional var max : Float; @:optional var precision : Float; @:optional var step : Float; @:optional var assetType : String; @:optional var curves : Array<String>; @:optional var color : String; @:optional @:native("enum") var enum_ : Array<Dynamic>; @:optional var schema : Array<Dynamic>; }):Void;
	/**
		Remove Attribute.
	**/
	function remove(name:String):Bool;
	/**
		Detect if Attribute is added.
	**/
	function has(name:String):Bool;
	/**
		Get object with attribute arguments. Note: Changing argument properties will not affect
		existing Script Instances.
	**/
	function get(name:String):Null<Dynamic>;
	static var prototype : ScriptAttributes;
	static var reservedNames : js.lib.Set<String>;
}