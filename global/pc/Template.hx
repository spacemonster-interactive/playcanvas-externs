package global.pc;

/**
	Create a Template resource from raw database data.
**/
@:native("pc.Template") extern class Template {
	/**
		Create a new Template instance.
	**/
	function new(app:AppBase, data:Dynamic);
	var _app : AppBase;
	var _data : Dynamic;
	var _templateRoot : Entity;
	/**
		Create an instance of this template.
	**/
	function instantiate():Entity;
	function _parseTemplate():Void;
	static var prototype : Template;
}