package global.pc;

/**
	Represents the resource of a canvas font asset.
**/
@:native("pc.CanvasFont") extern class CanvasFont extends EventHandler {
	/**
		Create a new CanvasFont instance.
	**/
	function new(app:AppBase, ?options:{ @:optional var fontName : String; @:optional var fontWeight : String; @:optional var fontSize : Float; @:optional var color : Color; @:optional var width : Float; @:optional var height : Float; @:optional var padding : Float; });
	var type : String;
	var app : AppBase;
	var intensity : Float;
	var fontWeight : String;
	var fontSize : Float;
	var glyphSize : Float;
	var fontName : String;
	var color : Color;
	var padding : Float;
	var textures : Array<Texture>;
	var chars : String;
	var data : { };
	/**
		Render the necessary textures for all characters in a string to be used for the canvas font.
	**/
	function createTextures(text:String):Void;
	/**
		Update the list of characters to include in the atlas to include those provided and
		re-render the texture atlas to include all the characters that have been supplied so far.
	**/
	function updateTextures(text:String):Void;
	/**
		Destroys the font. This also destroys the textures owned by the font.
	**/
	function destroy():Void;
	private var _getAndClearContext : Dynamic;
	private var _colorToRgbString : Dynamic;
	function renderCharacter(context:js.html.CanvasRenderingContext2D, char:String, x:Float, y:Float, color:Float):Void;
	/**
		Renders an array of characters into one or more textures atlases.
	**/
	private var _renderAtlas : Dynamic;
	private var _createJson : Dynamic;
	private var _addChar : Dynamic;
	/**
		Take a unicode string and produce the set of characters used to create that string.
		e.g. "abcabcabc" -> ['a', 'b', 'c']
	**/
	private var _normalizeCharsSet : Dynamic;
	/**
		Calculate some metrics that aren't available via the browser API, notably character height
		and descent size.
	**/
	private var _getTextMetrics : Dynamic;
	static var prototype : CanvasFont;
}