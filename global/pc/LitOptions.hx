package global.pc;

/**
	The lit options determines how the lit-shader gets generated. It specifies a set of
	parameters which triggers different fragment and vertex shader generation in the backend.
**/
@:native("pc.LitOptions") extern class LitOptions {
	function new();
	var hasTangents : Bool;
	/**
		Object containing custom shader chunks that will replace default ones.
	**/
	var chunks : haxe.DynamicAccess<String>;
	var _pass : Float;
	var _isForwardPass : Bool;
	/**
		Enable alpha testing. See {@link Material#alphaTest}.
	**/
	var alphaTest : Bool;
	/**
		Override fragment shader numeric precision. Can be "lowp", "mediump", "highp" or null to use
		default.
	**/
	var forceFragmentPrecision : String;
	/**
		The value of {@link Material#blendType}.
	**/
	var blendType : Float;
	var separateAmbient : Bool;
	var screenSpace : Bool;
	var skin : Bool;
	/**
		If hardware instancing compatible shader should be generated. Transform is read from
		per-instance {@link VertexBuffer} instead of shader's uniforms.
	**/
	var useInstancing : Bool;
	/**
		If morphing code should be generated to morph positions.
	**/
	var useMorphPosition : Bool;
	/**
		If morphing code should be generated to morph normals.
	**/
	var useMorphNormal : Bool;
	var useMorphTextureBased : Bool;
	var nineSlicedMode : Float;
	var clusteredLightingEnabled : Bool;
	var clusteredLightingCookiesEnabled : Bool;
	var clusteredLightingShadowsEnabled : Bool;
	var clusteredLightingShadowType : Float;
	var clusteredLightingAreaLightsEnabled : Bool;
	var vertexColors : Bool;
	var lightMapEnabled : Bool;
	var useLightMapVertexColors : Bool;
	var dirLightMapEnabled : Bool;
	var heightMapEnabled : Bool;
	var normalMapEnabled : Bool;
	var clearCoatNormalMapEnabled : Bool;
	var aoMapEnabled : Bool;
	var useAoVertexColors : Bool;
	var diffuseMapEnabled : Bool;
	var useAmbientTint : Bool;
	/**
		Replaced the whole fragment shader with this string.
	**/
	var customFragmentShader : String;
	var pixelSnap : Bool;
	var useClearCoatNormalMap : Bool;
	var useDiffuseMap : Bool;
	var useAoMap : Bool;
	var detailModes : Float;
	/**
		The value of {@link StandardMaterial#shadingModel}.
	**/
	var shadingModel : Float;
	/**
		If ambient spherical harmonics are used. Ambient SH replace prefiltered cubemap ambient on
		certain platforms (mostly Android) for performance reasons.
	**/
	var ambientSH : Bool;
	/**
		Use slightly cheaper normal mapping code (skip tangent space normalization). Can look buggy
		sometimes.
	**/
	var fastTbn : Bool;
	/**
		The value of {@link Material#twoSidedLighting}.
	**/
	var twoSidedLighting : Bool;
	/**
		The value of {@link StandardMaterial#occludeSpecular}.
	**/
	var occludeSpecular : Float;
	/**
		Defines if {@link StandardMaterial#occludeSpecularIntensity} constant should affect specular
		occlusion.
	**/
	var occludeSpecularFloat : Bool;
	var useMsdf : Bool;
	var msdfTextAttribute : Float;
	/**
		Enable alpha to coverage. See {@link Material#alphaToCoverage}.
	**/
	var alphaToCoverage : Bool;
	/**
		Enable specular fade. See {@link Material#opacityFadesSpecular}.
	**/
	var opacityFadesSpecular : Bool;
	/**
		The value of {@link StandardMaterial#cubeMapProjection}.
	**/
	var cubeMapProjection : Float;
	/**
		The value of {@link StandardMaterial#occludeDirect}.
	**/
	var occludeDirect : Bool;
	/**
		The value of {@link StandardMaterial#conserveEnergy}.
	**/
	var conserveEnergy : Bool;
	/**
		If any specular or reflections are needed at all.
	**/
	var useSpecular : Bool;
	var useSpecularityFactor : Bool;
	var useSpecularColor : Bool;
	var enableGGXSpecular : Bool;
	/**
		The value of {@link StandardMaterial#fresnelModel}.
	**/
	var fresnelModel : Float;
	/**
		If refraction is used.
	**/
	var useRefraction : Bool;
	var useClearCoat : Bool;
	var useSheen : Bool;
	var useIridescence : Bool;
	/**
		The value of {@link StandardMaterial#useMetalness}.
	**/
	var useMetalness : Bool;
	var useDynamicRefraction : Bool;
	/**
		The type of fog being applied in the shader. See {@link Scene#fog} for the list of possible
		values.
	**/
	var fog : String;
	/**
		The type of gamma correction being applied in the shader. See {@link Scene#gammaCorrection}
		for the list of possible values.
	**/
	var gamma : Float;
	/**
		The type of tone mapping being applied in the shader. See {@link Scene#toneMapping} for the
		list of possible values.
	**/
	var toneMap : Float;
	/**
		If cubemaps require seam fixing (see {@link Texture#options.fixCubemapSeams}).
	**/
	var fixSeams : Bool;
	/**
		One of "envAtlasHQ", "envAtlas", "cubeMap", "sphereMap".
	**/
	var reflectionSource : String;
	var reflectionEncoding : Dynamic;
	/**
		One of "ambientSH", "envAtlas", "constant".
	**/
	var ambientSource : String;
	var ambientEncoding : Dynamic;
	/**
		Skybox intensity factor.
	**/
	var skyboxIntensity : Float;
	/**
		If cube map rotation is enabled.
	**/
	var useCubeMapRotation : Bool;
	var lightMapWithoutAmbient : Bool;
	var lights : Array<Dynamic>;
	var noShadow : Bool;
	var lightMaskDynamic : Float;
	var pass : Float;
	var isForwardPass : Bool;
	static var prototype : LitOptions;
}