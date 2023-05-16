package global.pc;

@:native("pc.posteffect") @valueModuleOnly extern class Posteffect_ {
	static function createFullscreenQuad(device:Dynamic):Dynamic;
	static function drawFullscreenQuad(device:Dynamic, target:Dynamic, vertexBuffer:Dynamic, shader:Dynamic, rect:Dynamic):Void;
}