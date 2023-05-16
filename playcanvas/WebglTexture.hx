package playcanvas;

/**
	A WebGL implementation of the Texture.
**/
@jsInaccessible extern class WebglTexture {
	function new();
	var _glTexture : Dynamic;
	var _glTarget : Dynamic;
	var _glFormat : Dynamic;
	var _glInternalFormat : Dynamic;
	var _glPixelType : Dynamic;
	function destroy(device:Dynamic):Void;
	function loseContext():Void;
	function initialize(device:Dynamic, texture:Dynamic):Void;
	function upload(device:Dynamic, texture:Dynamic):Void;
	static var prototype : WebglTexture;
}