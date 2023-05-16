package playcanvas;

@:jsRequire("playcanvas", "string") @valueModuleOnly extern class String_ {
	static function format(s:String, args:haxe.extern.Rest<Dynamic>):String;
	static function toBool(s:String, ?strict:Bool):Bool;
	static function getCodePoint(string:String, ?i:Float):Float;
	static function getCodePoints(string:String):Array<Float>;
	static function getSymbols(string:String):Array<String>;
	static function fromCodePoint(args:haxe.extern.Rest<Float>):String;
	static final ASCII_LOWERCASE : String;
	static final ASCII_UPPERCASE : String;
	static final ASCII_LETTERS : String;
}