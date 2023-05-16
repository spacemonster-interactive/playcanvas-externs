package playcanvas;

/**
	Records performance-related statistics related to the application.
**/
@jsInaccessible extern class ApplicationStats {
	/**
		Create a new ApplicationStats instance.
	**/
	function new(device:GraphicsDevice);
	var frame : {
		var fps : Float;
		var ms : Float;
		var dt : Float;
		var updateStart : Float;
		var updateTime : Float;
		var renderStart : Float;
		var renderTime : Float;
		var physicsStart : Float;
		var physicsTime : Float;
		var cullTime : Float;
		var sortTime : Float;
		var skinTime : Float;
		var morphTime : Float;
		var instancingTime : Float;
		var triangles : Float;
		var otherPrimitives : Float;
		var shaders : Float;
		var materials : Float;
		var cameras : Float;
		var shadowMapUpdates : Float;
		var shadowMapTime : Float;
		var depthMapTime : Float;
		var forwardTime : Float;
		var lightClustersTime : Float;
		var lightClusters : Float;
		var _timeToCountFrames : Float;
		var _fpsAccum : Float;
	};
	var drawCalls : {
		var forward : Float;
		var depth : Float;
		var shadow : Float;
		var immediate : Float;
		var misc : Float;
		var total : Float;
		var skinned : Float;
		var instanced : Float;
		var removedByInstancing : Float;
	};
	var misc : {
		var renderTargetCreationTime : Float;
	};
	var particles : {
		var updatesPerFrame : Float;
		var _updatesPerFrame : Float;
		var frameTime : Float;
		var _frameTime : Float;
	};
	var shaders : {
		var vsCompiled : Float;
		var fsCompiled : Float;
		var linked : Float;
		var materialShaders : Float;
		var compileTime : Float;
	};
	var vram : {
		var texShadow : Float;
		var texAsset : Float;
		var texLightmap : Float;
		var tex : Float;
		var vb : Float;
		var ib : Float;
		var ub : Float;
	};
	final scene : Dynamic;
	final lightmapper : Dynamic;
	final batcher : Dynamic;
	static var prototype : ApplicationStats;
}