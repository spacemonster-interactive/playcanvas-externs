package playcanvas;

@jsInaccessible extern class ShadowRenderer {
	function new(renderer:Renderer, lightTextureAtlas:LightTextureAtlas);
	/**
		A cache of shadow passes. First index is looked up by light type, second by shadow type.
	**/
	private var shadowPassCache : Dynamic;
	var device : GraphicsDevice;
	var renderer : Renderer;
	var lightTextureAtlas : LightTextureAtlas;
	var polygonOffsetId : ScopeId;
	var polygonOffset : js.lib.Float32Array;
	var sourceId : ScopeId;
	var pixelOffsetId : ScopeId;
	var weightId : ScopeId;
	var blurVsmShaderCode : Array<Dynamic>;
	var blurPackedVsmShaderCode : Array<String>;
	var blurVsmShader : Array<{ }>;
	var blurPackedVsmShader : Array<{ }>;
	var blurVsmWeights : { };
	var shadowMapLightRadiusId : ScopeId;
	var viewUniformFormat : UniformBufferFormat;
	var viewBindGroupFormat : BindGroupFormat;
	var blendStateWrite : BlendState;
	var blendStateNoWrite : BlendState;
	function cullShadowCasters(meshInstances:Dynamic, visible:Dynamic, camera:Dynamic):Void;
	function setupRenderState(device:Dynamic, light:Dynamic):Void;
	function restoreRenderState(device:Dynamic):Void;
	function dispatchUniforms(light:Dynamic, shadowCam:Dynamic, lightRenderData:Dynamic, face:Dynamic):Void;
	function getShadowPass(light:Dynamic):Float;
	function submitCasters(visibleCasters:Array<MeshInstance>, light:Light):Void;
	function needsShadowRendering(light:Dynamic):Dynamic;
	function getLightRenderData(light:Dynamic, camera:Dynamic, face:Dynamic):Dynamic;
	function setupRenderPass(renderPass:Dynamic, shadowCamera:Dynamic, clearRenderTarget:Dynamic):Void;
	function prepareFace(light:Dynamic, camera:Dynamic, face:Dynamic):Dynamic;
	function renderFace(light:Dynamic, camera:Dynamic, face:Dynamic, clear:Dynamic, ?insideRenderPass:Bool):Void;
	function render(light:Dynamic, camera:Dynamic, ?insideRenderPass:Bool):Void;
	function renderVsm(light:Dynamic, camera:Dynamic):Void;
	function getVsmBlurShader(isVsm8:Dynamic, blurMode:Dynamic, filterSize:Dynamic):Dynamic;
	function applyVsmBlur(light:Dynamic, camera:Dynamic):Void;
	function initViewBindGroupFormat():Void;
	function frameUpdate():Void;
	static var prototype : ShadowRenderer;
	static function createShadowCamera(device:Dynamic, shadowType:Dynamic, type:Dynamic, face:Dynamic):Camera;
	static function setShadowCameraSettings(shadowCam:Dynamic, device:Dynamic, shadowType:Dynamic, type:Dynamic, isClustered:Dynamic):Void;
}