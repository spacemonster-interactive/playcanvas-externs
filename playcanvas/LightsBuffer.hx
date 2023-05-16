package playcanvas;

@jsInaccessible extern class LightsBuffer {
	function new(device:Dynamic);
	var device : Dynamic;
	var cookiesEnabled : Bool;
	var shadowsEnabled : Bool;
	var areaLightsEnabled : Bool;
	var maxLights : Float;
	var lights8 : js.lib.Uint8ClampedArray;
	var lightsTexture8 : Texture;
	var _lightsTexture8Id : Dynamic;
	var lightsFloat : js.lib.Float32Array;
	var lightsTextureFloat : Texture;
	var _lightsTextureFloatId : Dynamic;
	var _lightsTextureInvSizeId : Dynamic;
	var _lightsTextureInvSizeData : js.lib.Float32Array;
	var invMaxColorValue : Float;
	var invMaxAttenuation : Float;
	var boundsMin : Vec3;
	var boundsDelta : Vec3;
	function destroy():Void;
	function setCompressionRanges(maxAttenuation:Dynamic, maxColorValue:Dynamic):Void;
	function setBounds(min:Dynamic, delta:Dynamic):Void;
	function uploadTextures():Void;
	function updateUniforms():Void;
	function getSpotDirection(direction:Dynamic, spot:Dynamic):Void;
	function getLightAreaSizes(light:Dynamic):js.lib.Float32Array;
	function addLightDataFlags(data8:Dynamic, index:Dynamic, light:Dynamic, isSpot:Dynamic, castShadows:Dynamic, shadowIntensity:Dynamic):Void;
	function addLightDataColor(data8:Dynamic, index:Dynamic, light:Dynamic, gammaCorrection:Dynamic, isCookie:Dynamic):Void;
	function addLightDataSpotAngles(data8:Dynamic, index:Dynamic, light:Dynamic):Void;
	function addLightDataShadowBias(data8:Dynamic, index:Dynamic, light:Dynamic):Void;
	function addLightDataPositionRange(data8:Dynamic, index:Dynamic, light:Dynamic, pos:Dynamic):Void;
	function addLightDataSpotDirection(data8:Dynamic, index:Dynamic, light:Dynamic):Void;
	function addLightDataLightProjMatrix(data8:Dynamic, index:Dynamic, lightProjectionMatrix:Dynamic):Void;
	function addLightDataCookies(data8:Dynamic, index:Dynamic, light:Dynamic):Void;
	function addLightAtlasViewport(data8:Dynamic, index:Dynamic, atlasViewport:Dynamic):Void;
	function addLightAreaSizes(data8:Dynamic, index:Dynamic, light:Dynamic):Void;
	function addLightData(light:Dynamic, lightIndex:Dynamic, gammaCorrection:Dynamic):Void;
	static var prototype : LightsBuffer;
	static var FORMAT_FLOAT : Float;
	static var FORMAT_8BIT : Float;
	static var lightTextureFormat : Float;
	static var useTexelFetch : Bool;
	static var shaderDefines : String;
	static function initShaderDefines():Void;
	static function buildShaderDefines(object:Dynamic, prefix:Dynamic):String;
	static function init(device:Dynamic):Void;
	static function createTexture(device:Dynamic, width:Dynamic, height:Dynamic, format:Dynamic, name:Dynamic):Texture;
}