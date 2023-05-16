package global.pc;

@:native("pc.TextureParser") extern class TextureParser {
	function new();
	function load(url:{ var load : String; var original : String; }, callback:ResourceHandlerCallback, ?asset:Asset):Void;
	function open(url:String, data:Dynamic, device:GraphicsDevice):Texture;
	static var prototype : TextureParser;
}