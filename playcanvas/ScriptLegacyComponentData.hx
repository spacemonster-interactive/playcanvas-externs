package playcanvas;

@jsInaccessible extern class ScriptLegacyComponentData {
	function new();
	var scripts : Array<Dynamic>;
	var enabled : Bool;
	var instances : { };
	var _instances : { };
	var runInTools : Bool;
	var attributes : { };
	var initialized : Bool;
	var postInitialized : Bool;
	var areScriptsLoaded : Bool;
	static var prototype : ScriptLegacyComponentData;
}