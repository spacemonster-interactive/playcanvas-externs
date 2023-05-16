package global.pc;

/**
	Layer Composition is a collection of {@link Layer} that is fed to {@link Scene#layers} to define
	rendering order.
**/
@:native("pc.LayerComposition") extern class LayerComposition extends EventHandler {
	/**
		Create a new layer composition.
	**/
	function new(?name:String);
	var name : String;
	/**
		A read-only array of {@link Layer} sorted in the order they will be rendered.
	**/
	var layerList : Array<Layer>;
	/**
		A read-only array of boolean values, matching {@link LayerComposition#layerList}. True means only
		semi-transparent objects are rendered, and false means opaque.
	**/
	var subLayerList : Array<Bool>;
	/**
		A read-only array of boolean values, matching {@link LayerComposition#layerList}. True means the
		layer is rendered, false means it's skipped.
	**/
	var subLayerEnabled : Array<Bool>;
	var _opaqueOrder : { };
	var _transparentOrder : { };
	var _dirty : Bool;
	var _dirtyBlend : Bool;
	var _dirtyLights : Bool;
	var _dirtyCameras : Bool;
	var _meshInstances : Array<Dynamic>;
	var _meshInstancesSet : js.lib.Set<Dynamic>;
	var _lights : Array<Dynamic>;
	var _lightsMap : js.lib.Map<Dynamic, Dynamic>;
	var _lightCompositionData : Array<Dynamic>;
	var _splitLights : Array<Array<Dynamic>>;
	/**
		A read-only array of {@link CameraComponent} that can be used during rendering. e.g.
		Inside {@link Layer#onPreCull}, {@link Layer#onPostCull}, {@link Layer#onPreRender},
		{@link Layer#onPostRender}.
	**/
	var cameras : Array<CameraComponent>;
	/**
		The actual rendering sequence, generated based on layers and cameras
	**/
	var _renderActions : Array<playcanvas.RenderAction>;
	var _worldClusters : Array<Dynamic>;
	var _emptyWorldClusters : WorldClusters;
	function destroy():Void;
	function getEmptyWorldClusters(device:Dynamic):WorldClusters;
	function _splitLightsArray(target:Dynamic):Void;
	function _update(device:Dynamic, ?clusteredLightingEnabled:Bool):Float;
	function updateShadowCasters():Void;
	function updateLights():Void;
	function findCompatibleCluster(layer:Dynamic, renderActionCount:Dynamic, emptyWorldClusters:Dynamic):Dynamic;
	function allocateLightClusters(device:Dynamic):Void;
	function addRenderAction(renderActions:Dynamic, renderActionIndex:Dynamic, layer:Dynamic, layerIndex:Dynamic, cameraIndex:Dynamic, cameraFirstRenderAction:Dynamic, postProcessMarked:Dynamic):playcanvas.RenderAction;
	function propagateRenderTarget(startIndex:Dynamic, fromCamera:Dynamic):Void;
	function _logRenderActions():Void;
	function _isLayerAdded(layer:Dynamic):Bool;
	function _isSublayerAdded(layer:Dynamic, transparent:Dynamic):Bool;
	/**
		Adds a layer (both opaque and semi-transparent parts) to the end of the {@link LayerComposition#layerList}.
	**/
	function push(layer:Layer):Void;
	/**
		Inserts a layer (both opaque and semi-transparent parts) at the chosen index in the
		{@link LayerComposition#layerList}.
	**/
	function insert(layer:Layer, index:Float):Void;
	/**
		Removes a layer (both opaque and semi-transparent parts) from {@link LayerComposition#layerList}.
	**/
	function remove(layer:Layer):Void;
	/**
		Adds part of the layer with opaque (non semi-transparent) objects to the end of the
		{@link LayerComposition#layerList}.
	**/
	function pushOpaque(layer:Layer):Void;
	/**
		Inserts an opaque part of the layer (non semi-transparent mesh instances) at the chosen
		index in the {@link LayerComposition#layerList}.
	**/
	function insertOpaque(layer:Layer, index:Float):Void;
	/**
		Removes an opaque part of the layer (non semi-transparent mesh instances) from
		{@link LayerComposition#layerList}.
	**/
	function removeOpaque(layer:Layer):Void;
	/**
		Adds part of the layer with semi-transparent objects to the end of the {@link LayerComposition#layerList}.
	**/
	function pushTransparent(layer:Layer):Void;
	/**
		Inserts a semi-transparent part of the layer at the chosen index in the {@link LayerComposition#layerList}.
	**/
	function insertTransparent(layer:Layer, index:Float):Void;
	/**
		Removes a transparent part of the layer from {@link LayerComposition#layerList}.
	**/
	function removeTransparent(layer:Layer):Void;
	function _getSublayerIndex(layer:Dynamic, transparent:Dynamic):Float;
	/**
		Gets index of the opaque part of the supplied layer in the {@link LayerComposition#layerList}.
	**/
	function getOpaqueIndex(layer:Layer):Float;
	/**
		Gets index of the semi-transparent part of the supplied layer in the {@link LayerComposition#layerList}.
	**/
	function getTransparentIndex(layer:Layer):Float;
	/**
		Finds a layer inside this composition by its ID. Null is returned, if nothing is found.
	**/
	function getLayerById(id:Float):Null<Layer>;
	/**
		Finds a layer inside this composition by its name. Null is returned, if nothing is found.
	**/
	function getLayerByName(name:String):Null<Layer>;
	function _updateOpaqueOrder(startIndex:Dynamic, endIndex:Dynamic):Void;
	function _updateTransparentOrder(startIndex:Dynamic, endIndex:Dynamic):Void;
	function _sortLayersDescending(layersA:Dynamic, layersB:Dynamic, order:Dynamic):Float;
	/**
		Used to determine which array of layers has any transparent sublayer that is on top of all
		the transparent sublayers in the other array.
	**/
	private var sortTransparentLayers : Dynamic;
	/**
		Used to determine which array of layers has any opaque sublayer that is on top of all the
		opaque sublayers in the other array.
	**/
	private var sortOpaqueLayers : Dynamic;
	static var prototype : LayerComposition;
}