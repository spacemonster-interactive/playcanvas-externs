package playcanvas.gfx;

@:jsRequire("playcanvas", "gfx.programlib") @valueModuleOnly extern class Programlib {
	static function begin():String;
	static function dummyFragmentCode():String;
	static function end():String;
	static function fogCode(value:Dynamic, chunks:Dynamic):Dynamic;
	static function gammaCode(value:Dynamic, chunks:Dynamic):Dynamic;
	static function precisionCode(device:Dynamic, forcePrecision:Dynamic):String;
	static function skinCode(device:Dynamic, chunks:Dynamic):Dynamic;
	static function tonemapCode(value:Dynamic, chunks:Dynamic):Dynamic;
	static function versionCode(device:Dynamic):String;
}