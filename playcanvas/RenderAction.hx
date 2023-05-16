package playcanvas;

/**
	Class representing an entry in the final order of rendering of cameras and layers in the engine
	this is populated at runtime based on LayerComposition
**/
@jsInaccessible extern class RenderAction {
	function new();
	var layerIndex : Float;
	var cameraIndex : Float;
	var camera : Dynamic;
	/**
		render target this render action renders to (taken from either camera or layer)
	**/
	var renderTarget : Null<RenderTarget>;
	var lightClusters : Dynamic;
	var clearColor : Bool;
	var clearDepth : Bool;
	var clearStencil : Bool;
	var triggerPostprocess : Bool;
	var firstCameraUse : Bool;
	var lastCameraUse : Bool;
	var directionalLightsSet : js.lib.Set<Dynamic>;
	var directionalLights : Array<Dynamic>;
	var directionalLightsIndices : Array<Dynamic>;
	var viewBindGroups : Array<BindGroup>;
	function destroy():Void;
	final hasDirectionalShadowLights : Bool;
	function reset():Void;
	function isLayerEnabled(layerComposition:LayerComposition):Bool;
	function collectDirectionalLights(cameraLayers:Dynamic, dirLights:Dynamic, allLights:Dynamic):Void;
	static var prototype : RenderAction;
}