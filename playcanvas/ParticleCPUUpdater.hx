package playcanvas;

@jsInaccessible extern class ParticleCPUUpdater {
	function new(emitter:Dynamic);
	var _emitter : Dynamic;
	function calcSpawnPosition(particleTex:Dynamic, spawnMatrix:Dynamic, extentsInnerRatioUniform:Dynamic, emitterPos:Dynamic, i:Dynamic):Void;
	function update(data:Dynamic, vbToSort:Dynamic, particleTex:Dynamic, spawnMatrix:Dynamic, extentsInnerRatioUniform:Dynamic, emitterPos:Dynamic, delta:Dynamic, isOnStop:Dynamic):Void;
	static var prototype : ParticleCPUUpdater;
}