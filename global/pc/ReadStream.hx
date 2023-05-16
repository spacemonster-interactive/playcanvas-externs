package global.pc;

/**
	Helper class for organized reading of memory.
**/
@:native("pc.ReadStream") extern class ReadStream {
	function new(arraybuffer:Dynamic);
	var arraybuffer : Dynamic;
	var dataView : js.lib.DataView;
	var offset : Float;
	var stack : Array<Dynamic>;
	final remainingBytes : Float;
	function reset(?offset:Float):Void;
	function skip(bytes:Dynamic):Void;
	function align(bytes:Dynamic):Void;
	function _inc(amount:Dynamic):Float;
	function readChar():String;
	function readChars(numChars:Dynamic):String;
	function readU8():Float;
	function readU16():Float;
	function readU32():Float;
	function readU64():Float;
	function readU32be():Float;
	function readArray(result:Dynamic):Void;
	function readLine():String;
	static var prototype : ReadStream;
}