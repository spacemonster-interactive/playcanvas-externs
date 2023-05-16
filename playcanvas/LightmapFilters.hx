package playcanvas;

@jsInaccessible extern class LightmapFilters {
	function new(device:Dynamic);
	var device : Dynamic;
	var shaderDilate : Shader;
	var constantTexSource : Dynamic;
	var constantPixelOffset : Dynamic;
	var pixelOffset : js.lib.Float32Array;
	var shaderDenoise : Shader;
	var sigmas : js.lib.Float32Array;
	var constantSigmas : Dynamic;
	var kernel : Dynamic;
	function setSourceTexture(texture:Dynamic):Void;
	function prepare(textureWidth:Dynamic, textureHeight:Dynamic):Void;
	function prepareDenoise(filterRange:Dynamic, filterSmoothness:Dynamic):Void;
	var constantKernel : Dynamic;
	var bZnorm : Dynamic;
	function evaluateDenoiseUniforms(filterRange:Dynamic, filterSmoothness:Dynamic):Void;
	static var prototype : LightmapFilters;
}