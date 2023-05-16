package playcanvas;

@:jsRequire("playcanvas", "math") @valueModuleOnly extern class Math_ {
	static function clamp(value:Float, min:Float, max:Float):Float;
	static function intToBytes24(i:Float):Array<Float>;
	static function intToBytes32(i:Float):Array<Float>;
	static function bytesToInt24(r:Float, g:Float, b:Float):Float;
	static function bytesToInt32(r:Float, g:Float, b:Float, a:Float):Float;
	static function lerp(a:Float, b:Float, alpha:Float):Float;
	static function lerpAngle(a:Float, b:Float, alpha:Float):Float;
	static function powerOfTwo(x:Float):Bool;
	static function nextPowerOfTwo(val:Float):Float;
	static function nearestPowerOfTwo(val:Float):Float;
	static function random(min:Float, max:Float):Float;
	static function smoothstep(min:Float, max:Float, x:Float):Float;
	static function smootherstep(min:Float, max:Float, x:Float):Float;
	static function roundUp(numToRound:Float, multiple:Float):Float;
	static function between(num:Float, a:Float, b:Float, inclusive:Bool):Bool;
	static final DEG_TO_RAD : Float;
	static final RAD_TO_DEG : Float;
}