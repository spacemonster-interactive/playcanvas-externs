package global.pc;

/**
	Enables an Entity to render a model or a primitive shape. This Component attaches additional
	model geometry in to the scene graph below the Entity.
**/
@:native("pc.ModelComponent") extern class ModelComponent extends Component {
	/**
		Create a new ModelComponent instance.
	**/
	function new(system:ModelComponentSystem, entity:Entity);
	private var _type : Dynamic;
	private var _asset : Dynamic;
	private var _model : Dynamic;
	private var _mapping : Dynamic;
	private var _castShadows : Dynamic;
	private var _receiveShadows : Dynamic;
	private var _materialAsset : Dynamic;
	private var _material : Dynamic;
	private var _castShadowsLightmap : Dynamic;
	private var _lightmapped : Dynamic;
	private var _lightmapSizeMultiplier : Dynamic;
	private var _isStatic : Dynamic;
	private var _layers : Dynamic;
	private var _batchGroupId : Dynamic;
	private var _customAabb : Dynamic;
	var _area : Dynamic;
	var _materialEvents : Dynamic;
	private var _clonedModel : Dynamic;
	var _batchGroup : Dynamic;
	/**
		An array of meshInstances contained in the component's model. If model is not set or loaded
		for component it will return null.
	**/
	var meshInstances : Array<MeshInstance>;
	/**
		If set, the object space bounding box is used as a bounding box for visibility culling of
		attached mesh instances. This is an optimization, allowing oversized bounding box to be
		specified for skinned characters in order to avoid per frame bounding box computations based
		on bone positions.
	**/
	var customAabb : BoundingBox;
	/**
		The type of the model. Can be:
		
		- "asset": The component will render a model asset
		- "box": The component will render a box (1 unit in each dimension)
		- "capsule": The component will render a capsule (radius 0.5, height 2)
		- "cone": The component will render a cone (radius 0.5, height 1)
		- "cylinder": The component will render a cylinder (radius 0.5, height 1)
		- "plane": The component will render a plane (1 unit in each dimension)
		- "sphere": The component will render a sphere (radius 0.5)
		- "torus": The component will render a torus (tubeRadius: 0.2, ringRadius: 0.3)
	**/
	var type : String;
	/**
		The model that is added to the scene graph. It can be not set or loaded, so will return null.
	**/
	var model : Model;
	/**
		The asset for the model (only applies to models of type 'asset') can also be an asset id.
	**/
	var asset : ts.AnyOf2<Float, Asset>;
	/**
		If true, this model will be lightmapped after using lightmapper.bake().
	**/
	var lightmapped : Bool;
	/**
		A dictionary that holds material overrides for each mesh instance. Only applies to model
		components of type 'asset'. The mapping contains pairs of mesh instance index - material
		asset id.
	**/
	var mapping : haxe.DynamicAccess<Float>;
	/**
		If true, this model will cast shadows for lights that have shadow casting enabled.
	**/
	var castShadows : Bool;
	/**
		If true, shadows will be cast on this model.
	**/
	var receiveShadows : Bool;
	/**
		If true, this model will cast shadows when rendering lightmaps.
	**/
	var castShadowsLightmap : Bool;
	/**
		Lightmap resolution multiplier.
	**/
	var lightmapSizeMultiplier : Float;
	/**
		Mark model as non-movable (optimization).
	**/
	var isStatic : Bool;
	/**
		An array of layer IDs ({@link Layer#id}) to which this model should belong. Don't push, pop,
		splice or modify this array, if you want to change it - set a new one instead.
	**/
	var layers : Array<Float>;
	/**
		Assign model to a specific batch group (see {@link BatchGroup}). Default is -1 (no group).
	**/
	var batchGroupId : Float;
	/**
		The material {@link Asset} that will be used to render the model (not used on models of type
		'asset').
	**/
	var materialAsset : ts.AnyOf2<Float, Asset>;
	/**
		The material {@link Material} that will be used to render the model (not used on models of
		type 'asset').
	**/
	var material : Material;
	function addModelToLayers():Void;
	function removeModelFromLayers():Void;
	function onRemoveChild():Void;
	function onInsertChild():Void;
	function onRemove():Void;
	private var onLayersChanged : Dynamic;
	private var onLayerAdded : Dynamic;
	private var onLayerRemoved : Dynamic;
	private var _setMaterialEvent : Dynamic;
	private var _unsetMaterialEvents : Dynamic;
	private var _getAssetByIdOrPath : Dynamic;
	private var _getMaterialAssetUrl : Dynamic;
	private var _loadAndSetMeshInstanceMaterial : Dynamic;
	/**
		Stop rendering model without removing it from the scene hierarchy. This method sets the
		{@link MeshInstance#visible} property of every MeshInstance in the model to false Note, this
		does not remove the model or mesh instances from the scene hierarchy or draw call list. So
		the model component still incurs some CPU overhead.
	**/
	function hide():Void;
	/**
		Enable rendering of the model if hidden using {@link ModelComponent#hide}. This method sets
		all the {@link MeshInstance#visible} property on all mesh instances to true.
	**/
	function show():Void;
	private var _bindMaterialAsset : Dynamic;
	private var _unbindMaterialAsset : Dynamic;
	private var _onMaterialAssetAdd : Dynamic;
	private var _onMaterialAssetLoad : Dynamic;
	private var _onMaterialAssetUnload : Dynamic;
	private var _onMaterialAssetRemove : Dynamic;
	private var _onMaterialAssetChange : Dynamic;
	private var _bindModelAsset : Dynamic;
	private var _unbindModelAsset : Dynamic;
	private var _onModelAssetAdded : Dynamic;
	private var _onModelAssetLoad : Dynamic;
	private var _onModelAssetUnload : Dynamic;
	private var _onModelAssetChange : Dynamic;
	private var _onModelAssetRemove : Dynamic;
	private var _setMaterial : Dynamic;
	static var prototype : ModelComponent;
}