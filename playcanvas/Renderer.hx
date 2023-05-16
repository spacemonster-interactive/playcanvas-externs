package playcanvas;

/**
	The base renderer functionality to allow implementation of specialized renderers.
**/
@jsInaccessible extern class Renderer {
	/**
		Create a new instance.
	**/
	function new(graphicsDevice:GraphicsDevice);
	var clustersDebugRendered : Bool;
	var device : GraphicsDevice;
	var scene : Null<Scene>;
	var lightTextureAtlas : LightTextureAtlas;
	var shadowMapCache : ShadowMapCache;
	var shadowRenderer : ShadowRenderer;
	var _shadowRendererLocal : ShadowRendererLocal;
	var _shadowRendererDirectional : ShadowRendererDirectional;
	var _cookieRenderer : CookieRenderer;
	var viewUniformFormat : UniformBufferFormat;
	var viewBindGroupFormat : BindGroupFormat;
	var _skinTime : Float;
	var _morphTime : Float;
	var _cullTime : Float;
	var _shadowMapTime : Float;
	var _lightClustersTime : Float;
	var _layerCompositionUpdateTime : Float;
	var _shadowDrawCalls : Float;
	var _skinDrawCalls : Float;
	var _instancedDrawCalls : Float;
	var _shadowMapUpdates : Float;
	var _numDrawCallsCulled : Float;
	var _camerasRendered : Float;
	var _lightClusters : Float;
	var boneTextureId : ScopeId;
	var boneTextureSizeId : ScopeId;
	var poseMatrixId : ScopeId;
	var modelMatrixId : ScopeId;
	var normalMatrixId : ScopeId;
	var viewInvId : ScopeId;
	var viewPos : js.lib.Float32Array;
	var viewPosId : ScopeId;
	var projId : ScopeId;
	var projSkyboxId : ScopeId;
	var viewId : ScopeId;
	var viewId3 : ScopeId;
	var viewProjId : ScopeId;
	var flipYId : ScopeId;
	var tbnBasis : ScopeId;
	var nearClipId : ScopeId;
	var farClipId : ScopeId;
	var cameraParams : js.lib.Float32Array;
	var cameraParamsId : ScopeId;
	var alphaTestId : ScopeId;
	var opacityMapId : ScopeId;
	var exposureId : ScopeId;
	var twoSidedLightingNegScaleFactorId : ScopeId;
	var morphWeightsA : ScopeId;
	var morphWeightsB : ScopeId;
	var morphPositionTex : ScopeId;
	var morphNormalTex : ScopeId;
	var morphTexParams : ScopeId;
	function destroy():Void;
	function sortCompare(drawCallA:Dynamic, drawCallB:Dynamic):Float;
	function sortCompareMesh(drawCallA:Dynamic, drawCallB:Dynamic):Float;
	function sortCompareDepth(drawCallA:Dynamic, drawCallB:Dynamic):Float;
	/**
		Set up the viewport and the scissor for camera rendering.
	**/
	function setupViewport(camera:Camera, ?renderTarget:RenderTarget):Void;
	function setCameraUniforms(camera:Dynamic, target:Dynamic):Float;
	/**
		Clears the active render target. If the viewport is already set up, only its area is cleared.
	**/
	function clear(camera:Camera, ?clearColor:Bool, ?clearDepth:Bool, ?clearStencil:Bool):Void;
	function setCamera(camera:Dynamic, target:Dynamic, clear:Dynamic, ?renderAction:Dynamic):Void;
	function clearView(camera:Dynamic, target:Dynamic, clear:Dynamic, forceWrite:Dynamic):Void;
	function setupCullMode(cullFaces:Dynamic, flipFactor:Dynamic, drawCall:Dynamic):Void;
	function updateCameraFrustum(camera:Dynamic):Void;
	function setBaseConstants(device:Dynamic, material:Dynamic):Void;
	function updateCpuSkinMatrices(drawCalls:Dynamic):Void;
	function updateGpuSkinMatrices(drawCalls:Dynamic):Void;
	function updateMorphing(drawCalls:Dynamic):Void;
	function gpuUpdate(drawCalls:Dynamic):Void;
	function setVertexBuffers(device:Dynamic, mesh:Dynamic):Void;
	function setMorphing(device:Dynamic, morphInstance:Dynamic):Void;
	function setSkinning(device:Dynamic, meshInstance:Dynamic):Void;
	function dispatchViewPos(position:Dynamic):Void;
	function initViewBindGroupFormat():Void;
	function setupViewUniformBuffers(viewBindGroups:Dynamic, viewUniformFormat:Dynamic, viewBindGroupFormat:Dynamic, viewCount:Dynamic):Void;
	function setupMeshUniformBuffers(meshInstance:Dynamic, pass:Dynamic):Void;
	function drawInstance(device:Dynamic, meshInstance:Dynamic, mesh:Dynamic, style:Dynamic, normal:Dynamic):Void;
	function drawInstance2(device:Dynamic, meshInstance:Dynamic, mesh:Dynamic, style:Dynamic):Void;
	function cull(camera:Dynamic, drawCalls:Dynamic, visibleList:Dynamic):Float;
	function cullLights(camera:Dynamic, lights:Dynamic):Void;
	/**
		Shadow map culling for directional and visible local lights
		visible meshInstances are collected into light._renderData, and are marked as visible
		for directional lights also shadow camera matrix is set up
	**/
	function cullShadowmaps(comp:LayerComposition):Void;
	/**
		visibility culling of lights, meshInstances, shadows casters
		Also applies meshInstance.visible and camera.cullingMask
	**/
	function cullComposition(comp:LayerComposition):Void;
	function updateShaders(drawCalls:Array<MeshInstance>, onlyLitShaders:Bool):Void;
	function renderCookies(lights:Dynamic):Void;
	function beginFrame(comp:LayerComposition, lightsChanged:Bool):Void;
	function updateLightTextureAtlas(comp:LayerComposition):Void;
	function updateClusters(comp:LayerComposition):Void;
	/**
		Updates the layer composition for rendering.
	**/
	function updateLayerComposition(comp:LayerComposition, clusteredLightingEnabled:Bool):Float;
	function frameUpdate():Void;
	static var prototype : Renderer;
}