package playcanvas;

@jsInaccessible extern class LightTextureAtlas {
	function new(device:Dynamic);
	var device : Dynamic;
	var version : Float;
	var shadowAtlasResolution : Float;
	var shadowAtlas : ShadowMap;
	var shadowEdgePixels : Float;
	var cookieAtlasResolution : Float;
	var cookieAtlas : Texture;
	var cookieRenderTarget : RenderTarget;
	var slots : Array<Dynamic>;
	var atlasSplit : Array<Dynamic>;
	var cubeSlotsOffsets : Array<Vec2>;
	var scissorVec : Vec4;
	function destroy():Void;
	function destroyShadowAtlas():Void;
	function destroyCookieAtlas():Void;
	function allocateShadowAtlas(resolution:Dynamic):Void;
	function allocateCookieAtlas(resolution:Dynamic):Void;
	function allocateUniforms():Void;
	var _shadowAtlasTextureId : Dynamic;
	var _shadowAtlasParamsId : Dynamic;
	var _shadowAtlasParams : js.lib.Float32Array;
	var _cookieAtlasTextureId : Dynamic;
	function updateUniforms():Void;
	function subdivide(numLights:Dynamic, lightingParams:Dynamic):Void;
	function collectLights(spotLights:Dynamic, omniLights:Dynamic, lightingParams:Dynamic):Array<Dynamic>;
	function setupSlot(light:Dynamic, rect:Dynamic):Void;
	function assignSlot(light:Dynamic, slotIndex:Dynamic, slotReassigned:Dynamic):Void;
	function update(spotLights:Dynamic, omniLights:Dynamic, lightingParams:Dynamic):Void;
	static var prototype : LightTextureAtlas;
}