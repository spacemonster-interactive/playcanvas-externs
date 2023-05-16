package global.pc;

/**
	Enables an Entity to render a {@link Mesh} or a primitive shape. This component attaches
	{@link MeshInstance} geometry to the Entity.
**/
@:native("pc.RenderComponent") extern class RenderComponent extends Component {
	/**
		Create a new RenderComponent.
	**/
	function new(system:RenderComponentSystem, entity:Entity);
	private var _type : Dynamic;
	private var _castShadows : Dynamic;
	private var _receiveShadows : Dynamic;
	private var _castShadowsLightmap : Dynamic;
	private var _lightmapped : Dynamic;
	private var _lightmapSizeMultiplier : Dynamic;
	private var _isStatic : Dynamic;
	private var _batchGroupId : Dynamic;
	private var _layers : Dynamic;
	private var _renderStyle : Dynamic;
	private var _meshInstances : Dynamic;
	private var _customAabb : Dynamic;
	/**
		Used by lightmapper.
	**/
	var _area : Null<{
		var x : Float;
		var y : Float;
		var z : Float;
		var uv : Float;
	}>;
	private var _assetReference : Dynamic;
	private var _materialReferences : Dynamic;
	/**
		Material used to render meshes other than asset type. It gets priority when set to
		something else than defaultMaterial, otherwise materialASsets[0] is used.
	**/
	private var _material : Dynamic;
	private var _rootBone : Dynamic;
	/**
		Set rendering of all {@link MeshInstance}s to the specified render style. Can be:
		
		- {@link RENDERSTYLE_SOLID}
		- {@link RENDERSTYLE_WIREFRAME}
		- {@link RENDERSTYLE_POINTS}
		
		Defaults to {@link RENDERSTYLE_SOLID}.
	**/
	var renderStyle : Float;
	/**
		If set, the object space bounding box is used as a bounding box for visibility culling of
		attached mesh instances. This is an optimization, allowing oversized bounding box to be
		specified for skinned characters in order to avoid per frame bounding box computations based
		on bone positions.
	**/
	var customAabb : BoundingBox;
	/**
		The type of the render. Can be one of the following:
		
		- "asset": The component will render a render asset
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
		An array of meshInstances contained in the component. If meshes are not set or loaded for
		component it will return null.
	**/
	var meshInstances : Array<MeshInstance>;
	/**
		If true, the meshes will be lightmapped after using lightmapper.bake().
	**/
	var lightmapped : Bool;
	/**
		If true, attached meshes will cast shadows for lights that have shadow casting enabled.
	**/
	var castShadows : Bool;
	/**
		If true, shadows will be cast on attached meshes.
	**/
	var receiveShadows : Bool;
	/**
		If true, the meshes will cast shadows when rendering lightmaps.
	**/
	var castShadowsLightmap : Bool;
	/**
		Lightmap resolution multiplier.
	**/
	var lightmapSizeMultiplier : Float;
	/**
		Mark meshes as non-movable (optimization).
	**/
	var isStatic : Bool;
	/**
		An array of layer IDs ({@link Layer#id}) to which the meshes should belong. Don't push, pop,
		splice or modify this array, if you want to change it - set a new one instead.
	**/
	var layers : Array<Float>;
	/**
		Assign meshes to a specific batch group (see {@link BatchGroup}). Default is -1 (no group).
	**/
	var batchGroupId : Float;
	/**
		The material {@link Material} that will be used to render the meshes (not used on renders of
		type 'asset').
	**/
	var material : Material;
	/**
		The material assets that will be used to render the meshes. Each material corresponds to the
		respective mesh instance.
	**/
	var materialAssets : Array<Dynamic>;
	/**
		The render asset for the render component (only applies to type 'asset') - can also be an
		asset id.
	**/
	var asset : Dynamic;
	/**
		Assign asset id to the component, without updating the component with the new asset.
		This can be used to assign the asset id to already fully created component.
	**/
	function assignAsset(asset:ts.AnyOf2<Float, Asset>):Void;
	private var _onSetRootBone : Dynamic;
	private var _onRootBoneChanged : Dynamic;
	private var destroyMeshInstances : Dynamic;
	private var addToLayers : Dynamic;
	function removeFromLayers():Void;
	private var onRemoveChild : Dynamic;
	private var onInsertChild : Dynamic;
	function onRemove():Void;
	var materialAsset : Dynamic;
	function onLayersChanged(oldComp:Dynamic, newComp:Dynamic):Void;
	function onLayerAdded(layer:Dynamic):Void;
	function onLayerRemoved(layer:Dynamic):Void;
	/**
		Stop rendering {@link MeshInstance}s without removing them from the scene hierarchy. This
		method sets the {@link MeshInstance#visible} property of every MeshInstance to false. Note,
		this does not remove the mesh instances from the scene hierarchy or draw call list. So the
		render component still incurs some CPU overhead.
	**/
	function hide():Void;
	/**
		Enable rendering of the component's {@link MeshInstance}s if hidden using
		{@link RenderComponent#hide}. This method sets the {@link MeshInstance#visible} property on
		all mesh instances to true.
	**/
	function show():Void;
	function _onRenderAssetAdded():Void;
	function _onRenderAssetLoad():Void;
	function _onSetMeshes(meshes:Dynamic):Void;
	function _clearSkinInstances():Void;
	function _cloneSkinInstances():Void;
	function _cloneMeshes(meshes:Dynamic):Void;
	function _onRenderAssetUnload():Void;
	function _onRenderAssetRemove():Void;
	function _onMaterialAdded(index:Dynamic, component:Dynamic, asset:Dynamic):Void;
	function _updateMainMaterial(index:Dynamic, material:Dynamic):Void;
	function _onMaterialLoad(index:Dynamic, component:Dynamic, asset:Dynamic):Void;
	function _onMaterialRemove(index:Dynamic, component:Dynamic, asset:Dynamic):Void;
	function _onMaterialUnload(index:Dynamic, component:Dynamic, asset:Dynamic):Void;
	function resolveDuplicatedEntityReferenceProperties(oldRender:Dynamic, duplicatedIdsMap:Dynamic):Void;
	var rootBone : Dynamic;
	static var prototype : RenderComponent;
}