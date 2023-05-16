package playcanvas;

@jsInaccessible extern class CookieRenderer {
	function new(device:Dynamic, lightTextureAtlas:Dynamic);
	var device : Dynamic;
	var lightTextureAtlas : Dynamic;
	var blitShader2d : Dynamic;
	var blitShaderCube : Dynamic;
	var blitTextureId : Dynamic;
	var invViewProjId : Dynamic;
	function destroy():Void;
	function getShader(shader:Dynamic, fragment:Dynamic):Dynamic;
	final shader2d : Dynamic;
	final shaderCube : Dynamic;
	function initInvViewProjMatrices():Void;
	function render(light:Dynamic, renderTarget:Dynamic):Void;
	static var prototype : CookieRenderer;
	static function createTexture(device:Dynamic, resolution:Dynamic):Texture;
	static var _invViewProjMatrices : Dynamic;
}