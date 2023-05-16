package global.pc;

/**
	A light.
**/
@:native("pc.Light") extern class Light {
	function new(graphicsDevice:Dynamic);
	var device : Dynamic;
	var id : Float;
	var _type : Float;
	var _color : Color;
	var _intensity : Float;
	var _luminance : Float;
	var _castShadows : Bool;
	var _enabled : Bool;
	var mask : Float;
	var isStatic : Bool;
	var key : Float;
	var bakeDir : Bool;
	var bakeNumSamples : Float;
	var bakeArea : Float;
	var attenuationStart : Float;
	var attenuationEnd : Float;
	var _falloffMode : Float;
	var _shadowType : Float;
	var _vsmBlurSize : Float;
	var vsmBlurMode : Float;
	var vsmBias : Float;
	var _cookie : Dynamic;
	var cookieIntensity : Float;
	var _cookieFalloff : Bool;
	var _cookieChannel : String;
	var _cookieTransform : Dynamic;
	var _cookieTransformUniform : js.lib.Float32Array;
	var _cookieOffset : Dynamic;
	var _cookieOffsetUniform : js.lib.Float32Array;
	var _cookieTransformSet : Bool;
	var _cookieOffsetSet : Bool;
	var _innerConeAngle : Float;
	var _outerConeAngle : Float;
	var cascades : Dynamic;
	var _shadowMatrixPalette : js.lib.Float32Array;
	var _shadowCascadeDistances : js.lib.Float32Array;
	var numCascades : Dynamic;
	var cascadeDistribution : Float;
	var _shape : Float;
	var _finalColor : js.lib.Float32Array;
	var _linearFinalColor : js.lib.Float32Array;
	var _position : Vec3;
	var _direction : Vec3;
	var _innerConeAngleCos : Float;
	var _usePhysicalUnits : Dynamic;
	var _shadowMap : Dynamic;
	var _shadowRenderParams : Array<Dynamic>;
	var shadowDistance : Float;
	var _shadowResolution : Float;
	var shadowBias : Float;
	var shadowIntensity : Float;
	var _normalOffsetBias : Float;
	var shadowUpdateMode : Float;
	var shadowUpdateOverrides : Dynamic;
	var _isVsm : Bool;
	var _isPcf : Bool;
	var _cookieMatrix : Mat4;
	var _atlasViewport : Vec4;
	var atlasViewportAllocated : Bool;
	var atlasVersion : Float;
	var atlasSlotIndex : Float;
	var atlasSlotUpdated : Bool;
	var _scene : Dynamic;
	var _node : Dynamic;
	var _renderData : Array<Dynamic>;
	var visibleThisFrame : Bool;
	var maxScreenSize : Float;
	function destroy():Void;
	function releaseRenderData():Void;
	var shadowMap : Dynamic;
	final numShadowFaces : Dynamic;
	var type : Float;
	var shadowType : Float;
	var shape : Float;
	var usePhysicalUnits : Dynamic;
	var enabled : Bool;
	var castShadows : Bool;
	var shadowResolution : Float;
	var vsmBlurSize : Float;
	var normalOffsetBias : Float;
	var falloffMode : Float;
	var innerConeAngle : Float;
	var outerConeAngle : Float;
	function _updateOuterAngle(angle:Dynamic):Void;
	var _outerConeAngleCos : Float;
	var _outerConeAngleSin : Float;
	var intensity : Float;
	var luminance : Float;
	final cookieMatrix : Mat4;
	final atlasViewport : Vec4;
	var cookie : Dynamic;
	var cookieFalloff : Bool;
	var cookieChannel : String;
	var cookieTransform : Dynamic;
	var cookieOffset : Dynamic;
	function beginFrame():Void;
	function _destroyShadowMap():Void;
	function getRenderData(camera:Dynamic, face:Dynamic):Dynamic;
	/**
		Duplicates a light node but does not 'deep copy' the hierarchy.
	**/
	function clone():Light;
	function _getUniformBiasValues(lightRenderData:Dynamic):{
		var bias : Float;
		var normalBias : Float;
	};
	function getColor():Color;
	function getBoundingSphere(sphere:Dynamic):Void;
	function getBoundingBox(box:Dynamic):Void;
	function _updateFinalColor():Void;
	function setColor(args:haxe.extern.Rest<Dynamic>):Void;
	function layersDirty():Void;
	function updateKey():Void;
	static var prototype : Light;
	/**
		Get conversion factor for luminance -> light specific light unit.
	**/
	static function getLightUnitConversion(type:Float, ?outerAngle:Float, ?innerAngle:Float):Float;
}