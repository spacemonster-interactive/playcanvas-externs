package global.pc;

/**
	Used to simulate particles and produce renderable particle mesh on either CPU or GPU. GPU
	simulation is generally much faster than its CPU counterpart, because it avoids slow CPU-GPU
	synchronization and takes advantage of many GPU cores. However, it requires client to support
	reasonable uniform count, reading from multiple textures in vertex shader and OES_texture_float
	extension, including rendering into float textures. Most mobile devices fail to satisfy these
	requirements, so it's not recommended to simulate thousands of particles on them. GPU version
	also can't sort particles, so enabling sorting forces CPU mode too. Particle rotation is
	specified by a single angle parameter: default billboard particles rotate around camera facing
	axis, while mesh particles rotate around 2 different view-independent axes. Most of the
	simulation parameters are specified with {@link Curve} or {@link CurveSet}. Curves are
	interpolated based on each particle's lifetime, therefore parameters are able to change over
	time. Most of the curve parameters can also be specified by 2 minimum/maximum curves, this way
	each particle will pick a random value in-between.
**/
@:native("pc.ParticleSystemComponent") extern class ParticleSystemComponent extends Component {
	/**
		Create a new ParticleSystemComponent.
	**/
	function new(system:ParticleSystemComponentSystem, entity:Entity);
	var alignToMotion : Bool;
	var alphaGraph : Curve;
	var alphaGraph2 : Curve;
	var animIndex : Float;
	var animLoop : Bool;
	var animNumAnimations : Float;
	var animNumFrames : Float;
	var animSpeed : Float;
	var animStartFrame : Float;
	var animTilesX : Float;
	var animTilesY : Float;
	var autoPlay : Bool;
	var blend : Float;
	var colorGraph : CurveSet;
	var colorMapAsset : Asset;
	var depthSoftening : Float;
	var depthWrite : Bool;
	var emitterExtents : Vec3;
	var emitterExtentsInner : Vec3;
	var emitterRadius : Float;
	var emitterRadiusInner : Float;
	var emitterShape : Float;
	var halfLambert : Bool;
	var initialVelocity : Float;
	var intensity : Float;
	var layers : Array<Float>;
	var lifetime : Float;
	var lighting : Bool;
	var localSpace : Bool;
	var localVelocityGraph : CurveSet;
	var localVelocityGraph2 : CurveSet;
	var loop : Bool;
	var noFog : Bool;
	var normalMapAsset : Asset;
	var numParticles : Float;
	var orientation : Float;
	var particleNormal : Vec3;
	var preWarm : Bool;
	var radialSpeedGraph : Curve;
	var radialSpeedGraph2 : Curve;
	var randomizeAnimIndex : Float;
	var rate : Float;
	var rate2 : Float;
	var renderAsset : Asset;
	var rotationSpeedGraph : Curve;
	var rotationSpeedGraph2 : Curve;
	var scaleGraph : Curve;
	var scaleGraph2 : Curve;
	var screenSpace : Bool;
	var sort : Float;
	var startAngle : Float;
	var startAngle2 : Float;
	var stretch : Float;
	var velocityGraph : CurveSet;
	var velocityGraph2 : CurveSet;
	var wrapBounds : Vec3;
	private var _requestedDepth : Dynamic;
	private var _drawOrder : Dynamic;
	var drawOrder : Float;
	function addMeshInstanceToLayers():Void;
	function removeMeshInstanceFromLayers():Void;
	function onSetLayers(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onLayersChanged(oldComp:Dynamic, newComp:Dynamic):Void;
	function onLayerAdded(layer:Dynamic):Void;
	function onLayerRemoved(layer:Dynamic):Void;
	function _bindColorMapAsset(asset:Dynamic):Void;
	function _unbindColorMapAsset(asset:Dynamic):Void;
	function _onColorMapAssetLoad(asset:Dynamic):Void;
	var colorMap : Dynamic;
	function _onColorMapAssetUnload(asset:Dynamic):Void;
	function _onColorMapAssetRemove(asset:Dynamic):Void;
	function _onColorMapAssetChange(asset:Dynamic):Void;
	function onSetColorMapAsset(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _bindNormalMapAsset(asset:Dynamic):Void;
	function _unbindNormalMapAsset(asset:Dynamic):Void;
	function _onNormalMapAssetLoad(asset:Dynamic):Void;
	var normalMap : Dynamic;
	function _onNormalMapAssetUnload(asset:Dynamic):Void;
	function _onNormalMapAssetRemove(asset:Dynamic):Void;
	function _onNormalMapAssetChange(asset:Dynamic):Void;
	function onSetNormalMapAsset(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _bindMeshAsset(asset:Dynamic):Void;
	function _unbindMeshAsset(asset:Dynamic):Void;
	function _onMeshAssetLoad(asset:Dynamic):Void;
	function _onMeshAssetUnload(asset:Dynamic):Void;
	var mesh : Dynamic;
	function _onMeshAssetRemove(asset:Dynamic):Void;
	function _onMeshAssetChange(asset:Dynamic):Void;
	function onSetMeshAsset(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetMesh(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	var meshAsset : Dynamic;
	function _onMeshChanged(mesh:Dynamic):Void;
	function onSetRenderAsset(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _bindRenderAsset(asset:Dynamic):Void;
	function _unbindRenderAsset(asset:Dynamic):Void;
	function _onRenderAssetLoad(asset:Dynamic):Void;
	function _onRenderAssetUnload(asset:Dynamic):Void;
	function _onRenderAssetRemove(asset:Dynamic):Void;
	function _onRenderChanged(render:Dynamic):Void;
	function _onRenderSetMeshes(meshes:Dynamic):Void;
	function onSetLoop(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetBlendType(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _requestDepth():Void;
	function _releaseDepth():Void;
	function onSetDepthSoftening(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetSimpleProperty(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetComplexProperty(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onSetGraphProperty(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	var emitter : ParticleEmitter;
	function onBeforeRemove():Void;
	/**
		Resets particle state, doesn't affect playing.
	**/
	function reset():Void;
	/**
		Disables the emission of new particles, lets existing to finish their simulation.
	**/
	function stop():Void;
	/**
		Freezes the simulation.
	**/
	function pause():Void;
	/**
		Unfreezes the simulation.
	**/
	function unpause():Void;
	/**
		Enables/unfreezes the simulation.
	**/
	function play():Void;
	/**
		Checks if simulation is in progress.
	**/
	function isPlaying():Bool;
	/**
		Rebuilds all data used by this particle system.
	**/
	private var rebuild : Dynamic;
	static var prototype : ParticleSystemComponent;
}