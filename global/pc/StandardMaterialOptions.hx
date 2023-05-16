package global.pc;

/**
	The standard material options define a set of options used to control the shader frontend shader
	generation, such as textures, tints and multipliers.
**/
@:native("pc.StandardMaterialOptions") extern class StandardMaterialOptions {
	function new();
	private var _pass : Dynamic;
	private var _isForwardPass : Dynamic;
	var chunks : Array<Dynamic>;
	/**
		If UV1 (second set of texture coordinates) is required in the shader. Will be declared as
		"vUv1" and passed to the fragment shader.
	**/
	var forceUv1 : Bool;
	/**
		The value of {@link StandardMaterial#ambientTint}.
	**/
	var ambientTint : Bool;
	/**
		Defines if {@link StandardMaterial#diffuse} constant should affect diffuse color.
	**/
	var diffuseTint : Bool;
	/**
		Defines if {@link StandardMaterial#specular} constant should affect specular color.
	**/
	var specularTint : Bool;
	/**
		Defines if {@link StandardMaterial#metalness} constant should affect metalness value.
	**/
	var metalnessTint : Bool;
	/**
		Defines if {@link StandardMaterial#gloss} constant should affect glossiness value.
	**/
	var glossTint : Bool;
	/**
		Defines if {@link StandardMaterial#emissive} constant should affect emissive color.
	**/
	var emissiveTint : Bool;
	/**
		Defines if {@link StandardMaterial#opacity} constant should affect opacity value.
	**/
	var opacityTint : Bool;
	var emissiveEncoding : String;
	var lightMapEncoding : String;
	/**
		If normal map contains X in RGB, Y in Alpha, and Z must be reconstructed.
	**/
	var packedNormal : Bool;
	/**
		Invert the gloss channel.
	**/
	var glossInvert : Bool;
	/**
		Invert the sheen gloss channel.
	**/
	var sheenGlossInvert : Bool;
	/**
		Invert the clearcoat gloss channel.
	**/
	var clearCoatGlossInvert : Bool;
	var litOptions : LitOptions;
	/**
		Value of {@link Layer#shaderPass} of the Layer being rendered. Must be set to the same in
		{@link LitOptions#pass}.
	**/
	var pass : Float;
	var isForwardPass : Bool;
	static var prototype : StandardMaterialOptions;
}