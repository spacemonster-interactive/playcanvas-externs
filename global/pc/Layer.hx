package global.pc;

/**
	A Layer represents a renderable subset of the scene. It can contain a list of mesh instances,
	lights and cameras, their render settings and also defines custom callbacks before, after or
	during rendering. Layers are organized inside {@link LayerComposition} in a desired order.
**/
@:native("pc.Layer") extern class Layer {
	/**
		Create a new Layer instance.
	**/
	function new(?options:Dynamic);
	/**
		A unique ID of the layer. Layer IDs are stored inside {@link ModelComponent#layers},
		{@link RenderComponent#layers}, {@link CameraComponent#layers},
		{@link LightComponent#layers} and {@link ElementComponent#layers} instead of names.
		Can be used in {@link LayerComposition#getLayerById}.
	**/
	var id : Float;
	/**
		Name of the layer. Can be used in {@link LayerComposition#getLayerByName}.
	**/
	var name : String;
	private var _enabled : Dynamic;
	private var _refCounter : Dynamic;
	/**
		Defines the method used for sorting opaque (that is, not semi-transparent) mesh
		instances before rendering. Can be:
		
		- {@link SORTMODE_NONE}
		- {@link SORTMODE_MANUAL}
		- {@link SORTMODE_MATERIALMESH}
		- {@link SORTMODE_BACK2FRONT}
		- {@link SORTMODE_FRONT2BACK}
		
		Defaults to {@link SORTMODE_MATERIALMESH}.
	**/
	var opaqueSortMode : Float;
	/**
		Defines the method used for sorting semi-transparent mesh instances before rendering. Can be:
		
		- {@link SORTMODE_NONE}
		- {@link SORTMODE_MANUAL}
		- {@link SORTMODE_MATERIALMESH}
		- {@link SORTMODE_BACK2FRONT}
		- {@link SORTMODE_FRONT2BACK}
		
		Defaults to {@link SORTMODE_BACK2FRONT}.
	**/
	var transparentSortMode : Float;
	var renderTarget : Dynamic;
	/**
		A type of shader to use during rendering. Possible values are:
		
		- {@link SHADER_FORWARD}
		- {@link SHADER_FORWARDHDR}
		- {@link SHADER_DEPTH}
		- Your own custom value. Should be in 19 - 31 range. Use {@link StandardMaterial#onUpdateShader}
		to apply shader modifications based on this value.
		
		Defaults to {@link SHADER_FORWARD}.
	**/
	var shaderPass : Float;
	/**
		Tells that this layer is simple and needs to just render a bunch of mesh instances
		without lighting, skinning and morphing (faster). Used for UI and Gizmo layers (the
		layer doesn't use lights, shadows, culling, etc).
	**/
	var passThrough : Bool;
	private var _clearColorBuffer : Dynamic;
	private var _clearDepthBuffer : Dynamic;
	private var _clearStencilBuffer : Dynamic;
	/**
		Custom function that is called before visibility culling is performed for this layer.
		Useful, for example, if you want to modify camera projection while still using the same
		camera and make frustum culling work correctly with it (see
		{@link CameraComponent#calculateTransform} and {@link CameraComponent#calculateProjection}).
		This function will receive camera index as the only argument. You can get the actual
		camera being used by looking up {@link LayerComposition#cameras} with this index.
	**/
	var onPreCull : haxe.Constraints.Function;
	/**
		Custom function that is called before this layer is rendered. Useful, for example, for
		reacting on screen size changes. This function is called before the first occurrence of
		this layer in {@link LayerComposition}. It will receive camera index as the only
		argument. You can get the actual camera being used by looking up
		{@link LayerComposition#cameras} with this index.
	**/
	var onPreRender : haxe.Constraints.Function;
	/**
		Custom function that is called before opaque mesh instances (not semi-transparent) in
		this layer are rendered. This function will receive camera index as the only argument.
		You can get the actual camera being used by looking up {@link LayerComposition#cameras}
		with this index.
	**/
	var onPreRenderOpaque : haxe.Constraints.Function;
	/**
		Custom function that is called before semi-transparent mesh instances in this layer are
		rendered. This function will receive camera index as the only argument. You can get the
		actual camera being used by looking up {@link LayerComposition#cameras} with this index.
	**/
	var onPreRenderTransparent : haxe.Constraints.Function;
	/**
		Custom function that is called after visibility culling is performed for this layer.
		Useful for reverting changes done in {@link Layer#onPreCull} and determining final mesh
		instance visibility (see {@link MeshInstance#visibleThisFrame}). This function will
		receive camera index as the only argument. You can get the actual camera being used by
		looking up {@link LayerComposition#cameras} with this index.
	**/
	var onPostCull : haxe.Constraints.Function;
	/**
		Custom function that is called after this layer is rendered. Useful to revert changes
		made in {@link Layer#onPreRender}. This function is called after the last occurrence of this
		layer in {@link LayerComposition}. It will receive camera index as the only argument.
		You can get the actual camera being used by looking up {@link LayerComposition#cameras}
		with this index.
	**/
	var onPostRender : haxe.Constraints.Function;
	/**
		Custom function that is called after opaque mesh instances (not semi-transparent) in
		this layer are rendered. This function will receive camera index as the only argument.
		You can get the actual camera being used by looking up {@link LayerComposition#cameras}
		with this index.
	**/
	var onPostRenderOpaque : haxe.Constraints.Function;
	/**
		Custom function that is called after semi-transparent mesh instances in this layer are
		rendered. This function will receive camera index as the only argument. You can get the
		actual camera being used by looking up {@link LayerComposition#cameras} with this index.
	**/
	var onPostRenderTransparent : haxe.Constraints.Function;
	/**
		Custom function that is called before every mesh instance in this layer is rendered. It
		is not recommended to set this function when rendering many objects every frame due to
		performance reasons.
	**/
	var onDrawCall : haxe.Constraints.Function;
	/**
		Custom function that is called after the layer has been enabled. This happens when:
		
		- The layer is created with {@link Layer#enabled} set to true (which is the default value).
		- {@link Layer#enabled} was changed from false to true
		- {@link Layer#incrementCounter} was called and incremented the counter above zero.
		
		Useful for allocating resources this layer will use (e.g. creating render targets).
	**/
	var onEnable : haxe.Constraints.Function;
	/**
		Custom function that is called after the layer has been disabled. This happens when:
		
		- {@link Layer#enabled} was changed from true to false
		- {@link Layer#decrementCounter} was called and set the counter to zero.
	**/
	var onDisable : haxe.Constraints.Function;
	/**
		Make this layer render the same mesh instances that another layer does instead of having
		its own mesh instance list. Both layers must share cameras. Frustum culling is only
		performed for one layer. Useful for rendering multiple passes using different shaders.
	**/
	var layerReference : Layer;
	var instances : playcanvas.InstanceList;
	/**
		Visibility bit mask that interacts with {@link MeshInstance#mask}. Especially useful
		when combined with layerReference, allowing for the filtering of some objects, while
		sharing their list and culling.
	**/
	var cullingMask : Float;
	var opaqueMeshInstances : Array<MeshInstance>;
	var transparentMeshInstances : Array<MeshInstance>;
	var shadowCasters : Array<MeshInstance>;
	var customSortCallback : Null<haxe.Constraints.Function>;
	var customCalculateSortValues : Null<haxe.Constraints.Function>;
	private var _lights : Dynamic;
	private var _lightsSet : Dynamic;
	/**
		Set of light used by clustered lighting (omni and spot, but no directional).
	**/
	private var _clusteredLightsSet : Dynamic;
	/**
		Lights separated by light type.
	**/
	var _splitLights : Array<Array<Light>>;
	var cameras : Array<CameraComponent>;
	var _dirty : Bool;
	var _dirtyLights : Bool;
	var _dirtyCameras : Bool;
	var _lightHash : Float;
	var _staticLightHash : Float;
	var _needsStaticPrepare : Bool;
	var _staticPrepareDone : Bool;
	var skipRenderAfter : Float;
	var _skipRenderCounter : Float;
	var _renderTime : Float;
	var _forwardDrawCalls : Float;
	var _shadowDrawCalls : Float;
	var _shaderVersion : Float;
	var _lightCube : js.lib.Float32Array;
	/**
		True if the layer contains omni or spot lights
	**/
	final hasClusteredLights : Bool;
	/**
		Enable the layer. Disabled layers are skipped. Defaults to true.
	**/
	var enabled : Bool;
	/**
		If true, the camera will clear the color buffer when it renders this layer.
	**/
	var clearColorBuffer : Bool;
	/**
		If true, the camera will clear the depth buffer when it renders this layer.
	**/
	var clearDepthBuffer : Bool;
	/**
		If true, the camera will clear the stencil buffer when it renders this layer.
	**/
	var clearStencilBuffer : Bool;
	/**
		Returns lights used by clustered lighting in a set.
	**/
	final clusteredLightsSet : js.lib.Set<Light>;
	/**
		Increments the usage counter of this layer. By default, layers are created with counter set
		to 1 (if {@link Layer.enabled} is true) or 0 (if it was false). Incrementing the counter
		from 0 to 1 will enable the layer and call {@link Layer.onEnable}. Use this function to
		"subscribe" multiple effects to the same layer. For example, if the layer is used to render
		a reflection texture which is used by 2 mirrors, then each mirror can call this function
		when visible and {@link Layer.decrementCounter} if invisible. In such case the reflection
		texture won't be updated, when there is nothing to use it, saving performance.
	**/
	function incrementCounter():Void;
	/**
		Decrements the usage counter of this layer. Decrementing the counter from 1 to 0 will
		disable the layer and call {@link Layer.onDisable}. See {@link Layer#incrementCounter} for
		more details.
	**/
	function decrementCounter():Void;
	/**
		Adds an array of mesh instances to this layer.
		1
	**/
	function addMeshInstances(meshInstances:Array<MeshInstance>, ?skipShadowCasters:Bool):Void;
	/**
		Internal function to remove a mesh instance from an array.
	**/
	private var removeMeshInstanceFromArray : Dynamic;
	/**
		Removes multiple mesh instances from this layer.
	**/
	function removeMeshInstances(meshInstances:Array<MeshInstance>, ?skipShadowCasters:Bool):Void;
	/**
		Removes all mesh instances from this layer.
	**/
	function clearMeshInstances(?skipShadowCasters:Bool):Void;
	/**
		Adds a light to this layer.
	**/
	function addLight(light:LightComponent):Void;
	/**
		Removes a light from this layer.
	**/
	function removeLight(light:LightComponent):Void;
	/**
		Removes all lights from this layer.
	**/
	function clearLights():Void;
	/**
		Adds an array of mesh instances to this layer, but only as shadow casters (they will not be
		rendered anywhere, but only cast shadows on other objects).
	**/
	function addShadowCasters(meshInstances:Array<MeshInstance>):Void;
	/**
		Removes multiple mesh instances from the shadow casters list of this layer, meaning they
		will stop casting shadows.
	**/
	function removeShadowCasters(meshInstances:Array<MeshInstance>):Void;
	private var _generateLightHash : Dynamic;
	/**
		Adds a camera to this layer.
	**/
	function addCamera(camera:CameraComponent):Void;
	/**
		Removes a camera from this layer.
	**/
	function removeCamera(camera:CameraComponent):Void;
	/**
		Removes all cameras from this layer.
	**/
	function clearCameras():Void;
	private var _calculateSortDistances : Dynamic;
	function _sortVisible(transparent:Bool, cameraNode:GraphNode, cameraPass:Float):Void;
	static var prototype : Layer;
}