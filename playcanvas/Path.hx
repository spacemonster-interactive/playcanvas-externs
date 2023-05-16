package playcanvas;

@:jsRequire("playcanvas", "path") @valueModuleOnly extern class Path {
	static function join(args:haxe.extern.Rest<String>):String;
	static function normalize(pathname:String):String;
	static function split(pathname:String):Array<String>;
	static function getBasename(pathname:String):String;
	static function getDirectory(pathname:String):String;
	static function getExtension(pathname:String):String;
	static function isRelativePath(pathname:String):Bool;
	static function extractPath(pathname:String):String;
	static final delimiter : String;
}