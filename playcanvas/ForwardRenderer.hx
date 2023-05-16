package playcanvas;

/**
	The forward renderer renders {@link Scene}s.
**/
@:jsRequire("playcanvas", "ForwardRenderer") extern class ForwardRenderer extends Renderer {
	var _forwardDrawCalls : Float;
	var _materialSwitches : Float;
	var _depthMapTime : Float;
	var _forwardTime : Float;
	var _sortTime : Float;
	var fogColorId : ScopeId;
	var fogStartId : ScopeId;
	var fogEndId : ScopeId;
	var fogDensityId : ScopeId;
	var ambientId : ScopeId;
	var skyboxIntensityId : ScopeId;
	var cubeMapRotationMatrixId : ScopeId;
	var lightColorId : Array<Dynamic>;
	var lightDir : Array<Dynamic>;
	var lightDirId : Array<Dynamic>;
	var lightShadowMapId : Array<Dynamic>;
	var lightShadowMatrixId : Array<Dynamic>;
	var lightShadowParamsId : Array<Dynamic>;
	var lightShadowIntensity : Array<Dynamic>;
	var lightRadiusId : Array<Dynamic>;
	var lightPos : Array<Dynamic>;
	var lightPosId : Array<Dynamic>;
	var lightWidth : Array<Dynamic>;
	var lightWidthId : Array<Dynamic>;
	var lightHeight : Array<Dynamic>;
	var lightHeightId : Array<Dynamic>;
	var lightInAngleId : Array<Dynamic>;
	var lightOutAngleId : Array<Dynamic>;
	var lightCookieId : Array<Dynamic>;
	var lightCookieIntId : Array<Dynamic>;
	var lightCookieMatrixId : Array<Dynamic>;
	var lightCookieOffsetId : Array<Dynamic>;
	var shadowMatrixPaletteId : Array<Dynamic>;
	var shadowCascadeDistancesId : Array<Dynamic>;
	var shadowCascadeCountId : Array<Dynamic>;
	var screenSizeId : ScopeId;
	var _screenSize : js.lib.Float32Array;
	var fogColor : js.lib.Float32Array;
	var ambientColor : js.lib.Float32Array;
	function dispatchGlobalLights(scene:Scene):Void;
	function _resolveLight(scope:Dynamic, i:Dynamic):Void;
	function setLTCDirectionalLight(wtm:Dynamic, cnt:Dynamic, dir:Dynamic, campos:Dynamic, far:Dynamic):Void;
	function dispatchDirectLights(dirs:Dynamic, scene:Dynamic, mask:Dynamic, camera:Dynamic):Float;
	function setLTCPositionalLight(wtm:Dynamic, cnt:Dynamic):Void;
	function dispatchOmniLight(scene:Dynamic, scope:Dynamic, omni:Dynamic, cnt:Dynamic):Void;
	function dispatchSpotLight(scene:Dynamic, scope:Dynamic, spot:Dynamic, cnt:Dynamic):Void;
	function dispatchLocalLights(sortedLights:Dynamic, scene:Dynamic, mask:Dynamic, usedDirLights:Dynamic, staticLightList:Dynamic):Void;
	function renderForwardPrepareMaterials(camera:Dynamic, drawCalls:Dynamic, drawCallsCount:Dynamic, sortedLights:Dynamic, cullingMask:Dynamic, layer:Dynamic, pass:Dynamic):{
		var drawCalls : Array<Dynamic>;
		var isNewMaterial : Array<Dynamic>;
		var lightMaskChanged : Array<Dynamic>;
		dynamic function clear():Void;
	};
	function renderForwardInternal(camera:Dynamic, preparedCalls:Dynamic, sortedLights:Dynamic, pass:Dynamic, drawCallback:Dynamic, flipFaces:Dynamic):Void;
	function renderForward(camera:Dynamic, allDrawCalls:Dynamic, allDrawCallsCount:Dynamic, sortedLights:Dynamic, pass:Dynamic, cullingMask:Dynamic, drawCallback:Dynamic, layer:Dynamic, flipFaces:Dynamic):Void;
	function setSceneConstants():Void;
	function updateLightStats(comp:LayerComposition, compUpdatedFlags:Float):Void;
	/**
		Builds a frame graph for the rendering of the whole frame.
	**/
	function buildFrameGraph(frameGraph:FrameGraph, layerComposition:LayerComposition):Void;
	function addMainRenderPass(frameGraph:FrameGraph, layerComposition:LayerComposition, renderTarget:Dynamic, startIndex:Dynamic, endIndex:Dynamic, isGrabPass:Dynamic):Void;
	function update(comp:LayerComposition):Void;
	function renderPassPostprocessing(renderAction:Dynamic, layerComposition:Dynamic):Void;
	/**
		Render pass representing the layer composition's render actions in the specified range.
	**/
	function renderPassRenderActions(comp:LayerComposition, range:Dynamic):Void;
	function renderRenderAction(comp:LayerComposition, renderAction:RenderAction, firstRenderAction:Bool):Void;
	static var prototype : ForwardRenderer;
	static var skipRenderCamera : Dynamic;
	static var _skipRenderCounter : Float;
	static var skipRenderAfter : Float;
}