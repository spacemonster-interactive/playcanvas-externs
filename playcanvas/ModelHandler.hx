package playcanvas;

/**
	Resource handler used for loading {@link Model} resources.
**/
@:jsRequire("playcanvas", "ModelHandler") extern class ModelHandler {
	/**
		Create a new ModelHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _parsers : Array<Dynamic>;
	var device : GraphicsDevice;
	var assets : AssetRegistry;
	var defaultMaterial : StandardMaterial;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	/**
		Add a parser that converts raw data into a {@link Model}. Default parser is for JSON models.
	**/
	function addParser(parser:Dynamic, decider:AddParserCallback):Void;
	static var prototype : ModelHandler;
}