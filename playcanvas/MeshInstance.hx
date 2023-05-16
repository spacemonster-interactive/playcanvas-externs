package playcanvas;

/**
	An instance of a {@link Mesh}. A single mesh can be referenced by many mesh instances that can
	have different transforms and materials.
**/
@:jsRequire("playcanvas", "MeshInstance") extern class MeshInstance {
	/**
		Create a new MeshInstance instance.
	**/
	function new(mesh:Mesh, material:Material, ?node:GraphNode);
	/**
		Enable rendering for this mesh instance. Use visible property to enable/disable
		rendering without overhead of removing from scene. But note that the mesh instance is
		still in the hierarchy and still in the draw call list.
	**/
	var visible : Bool;
	/**
		Enable shadow casting for this mesh instance. Use this property to enable/disable
		shadow casting without overhead of removing from scene. Note that this property does not
		add the mesh instance to appropriate list of shadow casters on a {@link pc.Layer}, but
		allows mesh to be skipped from shadow casting while it is in the list already. Defaults to
		false.
	**/
	var castShadow : Bool;
	private var _material : Dynamic;
	/**
		An array of shaders used by the mesh instance, indexed by the shader pass constant (SHADER_FORWARD..)
	**/
	var _shader : Array<Shader>;
	/**
		An array of bind groups, storing uniforms per pass. This has 1:1 relation with the _shades array,
		and is indexed by the shader pass constant as well.
	**/
	var _bindGroups : Array<BindGroup>;
	var _key : Array<Float>;
	var isStatic : Bool;
	var _staticLightList : Dynamic;
	var _staticSource : Dynamic;
	/**
		The graph node defining the transform for this instance.
	**/
	var node : GraphNode;
	var _mesh : Mesh;
	/**
		The material used by this mesh instance.
	**/
	var material : Material;
	var _shaderDefs : Float;
	var _lightHash : Float;
	var layer : Dynamic;
	private var _renderStyle : Dynamic;
	var _receiveShadow : Bool;
	var _screenSpace : Bool;
	var _noDepthDrawGl1 : Bool;
	/**
		Controls whether the mesh instance can be culled by frustum culling
		({@link CameraComponent#frustumCulling}). Defaults to true.
	**/
	var cull : Bool;
	/**
		True if the mesh instance is pickable by the {@link Picker}. Defaults to true.
	**/
	var pick : Bool;
	var _updateAabb : Bool;
	var _updateAabbFunc : Dynamic;
	var _calculateSortDistance : Dynamic;
	private var _skinInstance : Dynamic;
	private var _morphInstance : Dynamic;
	var instancingData : InstancingData;
	private var _customAabb : Dynamic;
	/**
		The world space axis-aligned bounding box for this mesh instance.
	**/
	var aabb : Dynamic;
	var _aabbVer : Float;
	/**
		Use this value to affect rendering order of mesh instances. Only used when mesh
		instances are added to a {@link Layer} with {@link Layer#opaqueSortMode} or
		{@link Layer#transparentSortMode} (depending on the material) set to
		{@link SORTMODE_MANUAL}.
	**/
	var drawOrder : Float;
	/**
		Read this value in {@link Layer#onPostCull} to determine if the object is actually going
		to be rendered.
	**/
	var visibleThisFrame : Bool;
	var isVisibleFunc : Dynamic;
	var parameters : { };
	var stencilFront : Dynamic;
	var stencilBack : Dynamic;
	var flipFacesFactor : Float;
	/**
		The render style of the mesh instance. Can be:
		
		- {@link RENDERSTYLE_SOLID}
		- {@link RENDERSTYLE_WIREFRAME}
		- {@link RENDERSTYLE_POINTS}
		
		Defaults to {@link RENDERSTYLE_SOLID}.
	**/
	var renderStyle : Float;
	/**
		The graphics mesh being instanced.
	**/
	var mesh : Mesh;
	var _aabb : Dynamic;
	/**
		Clear the internal shader array.
	**/
	function clearShaders():Void;
	function destroyBindGroups():Void;
	function getBindGroup(device:GraphicsDevice, pass:Float):BindGroup;
	var _layer : Dynamic;
	/**
		In some circumstances mesh instances are sorted by a distance calculation to determine their
		rendering order. Set this callback to override the default distance calculation, which gives
		the dot product of the camera forward vector and the vector between the camera position and
		the center of the mesh instance's axis-aligned bounding box. This option can be particularly
		useful for rendering transparent meshes in a better order than default.
	**/
	var calculateSortDistance : Dynamic;
	var receiveShadow : Bool;
	/**
		The skin instance managing skinning of this mesh instance, or null if skinning is not used.
	**/
	var skinInstance : SkinInstance;
	/**
		The morph instance managing morphing of this mesh instance, or null if morphing is not used.
	**/
	var morphInstance : MorphInstance;
	var screenSpace : Bool;
	var key : Float;
	/**
		Mask controlling which {@link LightComponent}s light this mesh instance, which
		{@link CameraComponent} sees it and in which {@link Layer} it is rendered. Defaults to 1.
	**/
	var mask : Float;
	/**
		Number of instances when using hardware instancing to render the mesh.
	**/
	var instancingCount : Float;
	function destroy():Void;
	function _isVisible(camera:Dynamic):Dynamic;
	function updateKey():Void;
	/**
		Sets up {@link MeshInstance} to be rendered using Hardware Instancing.
	**/
	function setInstancing(vertexBuffer:Null<VertexBuffer>):Void;
	/**
		Obtain a shader variant required to render the mesh instance within specified pass.
	**/
	function updatePassShader(scene:Scene, pass:Float, staticLightList:Dynamic, sortedLights:Dynamic, viewUniformFormat:UniformBufferFormat, viewBindGroupFormat:BindGroupFormat):Void;
	function ensureMaterial(device:Dynamic):Void;
	function clearParameters():Void;
	function getParameters():{ };
	/**
		Retrieves the specified shader parameter from a mesh instance.
	**/
	function getParameter(name:String):Dynamic;
	/**
		Sets a shader parameter on a mesh instance. Note that this parameter will take precedence
		over parameter of the same name if set on Material this mesh instance uses for rendering.
	**/
	function setParameter(name:String, data:ts.AnyOf3<Float, Array<Float>, Texture>, ?passFlags:Float):Void;
	function setRealtimeLightmap(name:Dynamic, texture:Dynamic):Void;
	/**
		Deletes a shader parameter on a mesh instance.
	**/
	function deleteParameter(name:String):Void;
	function setParameters(device:Dynamic, passFlag:Dynamic):Void;
	function setLightmapped(value:Dynamic):Void;
	function setCustomAabb(aabb:Dynamic):Void;
	function _setupSkinUpdate():Void;
	static var prototype : MeshInstance;
	static var lightmapParamNames : Array<String>;
	static function _prepareRenderStyleForArray(meshInstances:Dynamic, renderStyle:Dynamic):Void;
}