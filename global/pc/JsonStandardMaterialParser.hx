package global.pc;

/**
	Convert incoming JSON data into a {@link StandardMaterial}.
**/
@:native("pc.JsonStandardMaterialParser") extern class JsonStandardMaterialParser {
	function new();
	var _validator : playcanvas.StandardMaterialValidator;
	function parse(input:Dynamic):StandardMaterial;
	/**
		Initialize material properties from the material data block e.g. Loading from server.
	**/
	function initialize(material:StandardMaterial, data:Dynamic):Void;
	function migrate(data:Dynamic):Dynamic;
	function _validate(data:Dynamic):Dynamic;
	static var prototype : JsonStandardMaterialParser;
}