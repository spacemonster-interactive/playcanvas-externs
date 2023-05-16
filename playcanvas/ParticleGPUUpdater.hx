package playcanvas;

@jsInaccessible extern class ParticleGPUUpdater {
	function new(emitter:Dynamic, gd:Dynamic);
	var _emitter : Dynamic;
	var frameRandomUniform : js.lib.Float32Array;
	var emitterPosUniform : js.lib.Float32Array;
	var emitterScaleUniform : js.lib.Float32Array;
	var worldBoundsMulUniform : js.lib.Float32Array;
	var worldBoundsAddUniform : js.lib.Float32Array;
	var inBoundsSizeUniform : js.lib.Float32Array;
	var inBoundsCenterUniform : js.lib.Float32Array;
	var constantParticleTexIN : Dynamic;
	var constantParticleTexOUT : Dynamic;
	var constantEmitterPos : Dynamic;
	var constantEmitterScale : Dynamic;
	var constantSpawnBounds : Dynamic;
	var constantSpawnPosInnerRatio : Dynamic;
	var constantSpawnBoundsSphere : Dynamic;
	var constantSpawnBoundsSphereInnerRatio : Dynamic;
	var constantInitialVelocity : Dynamic;
	var constantFrameRandom : Dynamic;
	var constantDelta : Dynamic;
	var constantRate : Dynamic;
	var constantRateDiv : Dynamic;
	var constantLifetime : Dynamic;
	var constantGraphSampleSize : Dynamic;
	var constantGraphNumSamples : Dynamic;
	var constantInternalTex0 : Dynamic;
	var constantInternalTex1 : Dynamic;
	var constantInternalTex2 : Dynamic;
	var constantInternalTex3 : Dynamic;
	var constantEmitterMatrix : Dynamic;
	var constantEmitterMatrixInv : Dynamic;
	var constantNumParticles : Dynamic;
	var constantNumParticlesPot : Dynamic;
	var constantLocalVelocityDivMult : Dynamic;
	var constantVelocityDivMult : Dynamic;
	var constantRotSpeedDivMult : Dynamic;
	var constantSeed : Dynamic;
	var constantStartAngle : Dynamic;
	var constantStartAngle2 : Dynamic;
	var constantOutBoundsMul : Dynamic;
	var constantOutBoundsAdd : Dynamic;
	var constantInBoundsSize : Dynamic;
	var constantInBoundsCenter : Dynamic;
	var constantMaxVel : Dynamic;
	var constantFaceTangent : Dynamic;
	var constantFaceBinorm : Dynamic;
	function _setInputBounds():Void;
	function randomize():Void;
	function update(device:Dynamic, spawnMatrix:Dynamic, extentsInnerRatioUniform:Dynamic, delta:Dynamic, isOnStop:Dynamic):Void;
	static var prototype : ParticleGPUUpdater;
}