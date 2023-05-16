package global.pc;

/**
	An instance of {@link Morph}. Contains weights to assign to every {@link MorphTarget}, manages
	selection of active morph targets.
**/
@:native("pc.MorphInstance") extern class MorphInstance {
	/**
		Create a new MorphInstance instance.
	**/
	function new(morph:Morph);
	/**
		The morph with its targets, which is being instanced.
	**/
	var morph : Morph;
	var device : Dynamic;
	var _weights : Array<Dynamic>;
	var _weightMap : js.lib.Map<Dynamic, Dynamic>;
	var _activeTargets : Array<Dynamic>;
	var shaderCache : { };
	var maxSubmitCount : Dynamic;
	var _shaderMorphWeights : js.lib.Float32Array;
	var rtPositions : RenderTarget;
	var rtNormals : RenderTarget;
	var _textureParams : js.lib.Float32Array;
	var morphFactor : Dynamic;
	var zeroTextures : Bool;
	var _shaderMorphWeightsA : js.lib.Float32Array;
	var _shaderMorphWeightsB : js.lib.Float32Array;
	var _activeVertexBuffers : Array<Dynamic>;
	/**
		Frees video memory allocated by this object.
	**/
	function destroy():Void;
	var shader : Dynamic;
	var texturePositions : Dynamic;
	var textureNormals : Dynamic;
	/**
		Clones a MorphInstance. The returned clone uses the same {@link Morph} and weights are set
		to defaults.
	**/
	function clone():MorphInstance;
	function _getWeightIndex(key:Dynamic):Dynamic;
	/**
		Gets current weight of the specified morph target.
	**/
	function getWeight(key:ts.AnyOf2<String, Float>):Float;
	/**
		Sets weight of the specified morph target.
	**/
	function setWeight(key:ts.AnyOf2<String, Float>, weight:Float):Void;
	var _dirty : Bool;
	/**
		Generate fragment shader to blend a number of textures using specified weights.
	**/
	private var _getFragmentShader : Dynamic;
	/**
		Create complete shader for texture based morphing.
	**/
	private var _getShader : Dynamic;
	function _updateTextureRenderTarget(renderTarget:Dynamic, srcTextureName:Dynamic):Void;
	function _updateTextureMorph():Void;
	function _updateVertexMorph():Void;
	/**
		Selects active morph targets and prepares morph for rendering. Called automatically by
		renderer.
	**/
	function update():Void;
	static var prototype : MorphInstance;
}