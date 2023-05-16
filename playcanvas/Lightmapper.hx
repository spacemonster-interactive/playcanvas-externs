package playcanvas;

/**
	The lightmapper is used to bake scene lights into textures.
**/
@:jsRequire("playcanvas", "Lightmapper") extern class Lightmapper {
	/**
		Create a new Lightmapper instance.
	**/
	function new(device:GraphicsDevice, root:Entity, scene:Scene, renderer:ForwardRenderer, assets:AssetRegistry);
	var device : GraphicsDevice;
	var root : Entity;
	var scene : Scene;
	var renderer : ForwardRenderer;
	var assets : AssetRegistry;
	var shadowMapCache : ShadowMapCache;
	var _tempSet : js.lib.Set<Dynamic>;
	var _initCalled : Bool;
	var passMaterials : Array<Dynamic>;
	var ambientAOMaterial : StandardMaterial;
	var fog : String;
	var ambientLight : Color;
	var renderTargets : js.lib.Map<Dynamic, Dynamic>;
	var stats : {
		var renderPasses : Float;
		var lightmapCount : Float;
		var totalRenderTime : Float;
		var forwardTime : Float;
		var fboTime : Float;
		var shadowMapTime : Float;
		var compileTime : Float;
		var shadersLinked : Float;
	};
	function destroy():Void;
	var blackTex : Texture;
	function initBake(device:Dynamic):Void;
	var lightmapFilters : LightmapFilters;
	var constantBakeDir : Dynamic;
	var materials : Array<Dynamic>;
	var camera : Camera;
	var lightingParams : LightingParams;
	var worldClusters : WorldClusters;
	function finishBake(bakeNodes:Dynamic):Void;
	function createMaterialForPass(device:Dynamic, scene:Dynamic, pass:Dynamic, addAmbient:Dynamic):StandardMaterial;
	function createMaterials(device:Dynamic, scene:Dynamic, passCount:Dynamic):Void;
	function createTexture(size:Dynamic, name:Dynamic):Texture;
	function collectModels(node:Dynamic, bakeNodes:Dynamic, allNodes:Dynamic):Void;
	function prepareShadowCasters(nodes:Dynamic):Array<Dynamic>;
	function updateTransforms(nodes:Dynamic):Void;
	function calculateLightmapSize(node:Dynamic):Float;
	function setLightmapping(nodes:Dynamic, value:Dynamic, passCount:Dynamic, shaderDefs:Dynamic):Void;
	/**
		Generates and applies the lightmaps.
	**/
	function bake(nodes:Null<Array<Entity>>, ?mode:Float):Void;
	function allocateTextures(bakeNodes:Dynamic, passCount:Dynamic):Void;
	function prepareLightsToBake(layerComposition:Dynamic, allLights:Dynamic, bakeLights:Dynamic):Void;
	function restoreLights(allLights:Dynamic):Void;
	function setupScene():Void;
	var revertStatic : Bool;
	function restoreScene():Void;
	function computeNodeBounds(meshInstances:Dynamic):BoundingBox;
	function computeNodesBounds(nodes:Dynamic):Void;
	function computeBounds(meshInstances:Dynamic):BoundingBox;
	function backupMaterials(meshInstances:Dynamic):Void;
	function restoreMaterials(meshInstances:Dynamic):Void;
	function lightCameraPrepare(device:Dynamic, bakeLight:Dynamic):Dynamic;
	function lightCameraPrepareAndCull(bakeLight:Dynamic, bakeNode:Dynamic, shadowCam:Dynamic, casterBounds:Dynamic):Bool;
	function setupLightArray(lightArray:Dynamic, light:Dynamic):Void;
	function renderShadowMap(shadowMapRendered:Dynamic, casters:Dynamic, bakeLight:Dynamic):Bool;
	function postprocessTextures(device:Dynamic, bakeNodes:Dynamic, passCount:Dynamic):Void;
	function bakeInternal(passCount:Dynamic, bakeNodes:Dynamic, allNodes:Dynamic):Void;
	static var prototype : Lightmapper;
}