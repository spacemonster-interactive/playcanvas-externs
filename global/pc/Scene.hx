package global.pc;

/**
	A scene is graphical representation of an environment. It manages the scene hierarchy, all
	graphical objects, lights, and scene-wide properties.
**/
@:native("pc.Scene") extern class Scene extends EventHandler {
	/**
		Create a new Scene instance.
	**/
	function new(graphicsDevice:GraphicsDevice);
	/**
		If enabled, the ambient lighting will be baked into lightmaps. This will be either the
		{@link Scene#skybox} if set up, otherwise {@link Scene#ambientLight}. Defaults to false.
	**/
	var ambientBake : Bool;
	/**
		If {@link Scene#ambientBake} is true, this specifies the brightness of ambient occlusion.
		Typical range is -1 to 1. Defaults to 0, representing no change to brightness.
	**/
	var ambientBakeOcclusionBrightness : Float;
	/**
		If {@link Scene#ambientBake} is true, this specifies the contrast of ambient occlusion.
		Typical range is -1 to 1. Defaults to 0, representing no change to contrast.
	**/
	var ambientBakeOcclusionContrast : Float;
	/**
		The color of the scene's ambient light. Defaults to black (0, 0, 0).
	**/
	var ambientLight : Color;
	/**
		The luminosity of the scene's ambient light in lux (lm/m^2). Used if physicalUnits is true. Defaults to 0.
	**/
	var ambientLuminance : Float;
	/**
		The exposure value tweaks the overall brightness of the scene. Ignored if physicalUnits is true. Defaults to 1.
	**/
	var exposure : Float;
	/**
		The color of the fog (if enabled). Defaults to black (0, 0, 0).
	**/
	var fogColor : Color;
	/**
		The density of the fog (if enabled). This property is only valid if the fog property is set
		to {@link FOG_EXP} or {@link FOG_EXP2}. Defaults to 0.
	**/
	var fogDensity : Float;
	/**
		The distance from the viewpoint where linear fog reaches its maximum. This property is only
		valid if the fog property is set to {@link FOG_LINEAR}. Defaults to 1000.
	**/
	var fogEnd : Float;
	/**
		The distance from the viewpoint where linear fog begins. This property is only valid if the
		fog property is set to {@link FOG_LINEAR}. Defaults to 1.
	**/
	var fogStart : Float;
	/**
		The lightmap resolution multiplier. Defaults to 1.
	**/
	var lightmapSizeMultiplier : Float;
	/**
		The maximum lightmap resolution. Defaults to 2048.
	**/
	var lightmapMaxResolution : Float;
	/**
		The lightmap baking mode. Can be:
		
		- {@link BAKE_COLOR}: single color lightmap
		- {@link BAKE_COLORDIR}: single color lightmap + dominant light direction (used for bump or
		specular). Only lights with bakeDir=true will be used for generating the dominant light
		direction.
		
		Defaults to {@link BAKE_COLORDIR}.
	**/
	var lightmapMode : Float;
	/**
		Enables bilateral filter on runtime baked color lightmaps, which removes the noise and
		banding while preserving the edges. Defaults to false. Note that the filtering takes place
		in the image space of the lightmap, and it does not filter across lightmap UV space seams,
		often making the seams more visible. It's important to balance the strength of the filter
		with number of samples used for lightmap baking to limit the visible artifacts.
	**/
	var lightmapFilterEnabled : Bool;
	/**
		Enables HDR lightmaps. This can result in smoother lightmaps especially when many samples
		are used. Defaults to false.
	**/
	var lightmapHDR : Bool;
	/**
		The root entity of the scene, which is usually the only child to the {@link Application}
		root entity.
	**/
	var root : Entity;
	/**
		The sky of the scene.
	**/
	var sky : playcanvas.Sky;
	/**
		Use physically based units for cameras and lights. When used, the exposure value is ignored.
	**/
	var physicalUnits : Bool;
	var device : Dynamic;
	var _gravity : Vec3;
	private var _layers : Dynamic;
	var _fog : String;
	var _gammaCorrection : Float;
	var _toneMapping : Float;
	/**
		The skybox cubemap as set by user (gets used when skyboxMip === 0)
	**/
	private var _skyboxCubeMap : Dynamic;
	/**
		Array of 6 prefiltered lighting data cubemaps.
	**/
	private var _prefilteredCubemaps : Dynamic;
	/**
		Environment lighting atlas
	**/
	private var _envAtlas : Dynamic;
	var _internalEnvAtlas : Dynamic;
	var _skyboxIntensity : Float;
	var _skyboxLuminance : Float;
	var _skyboxMip : Float;
	var _skyboxRotation : Quat;
	var _skyboxRotationMat3 : Mat3;
	var _skyboxRotationMat4 : Mat4;
	var _ambientBakeNumSamples : Float;
	var _ambientBakeSpherePart : Float;
	var _lightmapFilterRange : Float;
	var _lightmapFilterSmoothness : Float;
	var _clusteredLightingEnabled : Bool;
	var _lightingParams : LightingParams;
	var _stats : {
		var meshInstances : Float;
		var lights : Float;
		var dynamicLights : Float;
		var bakedLights : Float;
		var lastStaticPrepareFullTime : Float;
		var lastStaticPrepareSearchTime : Float;
		var lastStaticPrepareWriteTime : Float;
		var lastStaticPrepareTriAabbTime : Float;
		var lastStaticPrepareCombineTime : Float;
		var updateShadersTime : Float;
	};
	/**
		This flag indicates changes were made to the scene which may require recompilation of
		shaders that reference global settings.
	**/
	var updateShaders : Bool;
	var _shaderVersion : Float;
	var _statsUpdated : Bool;
	var immediate : playcanvas.Immediate;
	/**
		Returns the default layer used by the immediate drawing functions.
	**/
	private final defaultDrawLayer : Dynamic;
	/**
		If {@link Scene#ambientBake} is true, this specifies the number of samples used to bake the
		ambient light into the lightmap. Defaults to 1. Maximum value is 255.
	**/
	var ambientBakeNumSamples : Float;
	/**
		If {@link Scene#ambientBake} is true, this specifies a part of the sphere which represents
		the source of ambient light. The valid range is 0..1, representing a part of the sphere from
		top to the bottom. A value of 0.5 represents the upper hemisphere. A value of 1 represents a
		full sphere. Defaults to 0.4, which is a smaller upper hemisphere as this requires fewer
		samples to bake.
	**/
	var ambientBakeSpherePart : Float;
	/**
		True if the clustered lighting is enabled. Set to false before the first frame is rendered
		to use non-clustered lighting. Defaults to true.
	**/
	var clusteredLightingEnabled : Bool;
	/**
		List of all active composition mesh instances. Only for backwards compatibility.
		TODO: BatchManager is using it - perhaps that could be refactored
	**/
	var drawCalls : Array<Dynamic>;
	/**
		The environment lighting atlas.
	**/
	var envAtlas : Texture;
	/**
		The type of fog used by the scene. Can be:
		
		- {@link FOG_NONE}
		- {@link FOG_LINEAR}
		- {@link FOG_EXP}
		- {@link FOG_EXP2}
		
		Defaults to {@link FOG_NONE}.
	**/
	var fog : String;
	/**
		The gamma correction to apply when rendering the scene. Can be:
		
		- {@link GAMMA_NONE}
		- {@link GAMMA_SRGB}
		
		Defaults to {@link GAMMA_SRGB}.
	**/
	var gammaCorrection : Float;
	/**
		A {@link LayerComposition} that defines rendering order of this scene.
	**/
	var layers : LayerComposition;
	/**
		A {@link LightingParams} that defines lighting parameters.
	**/
	final lighting : LightingParams;
	/**
		A range parameter of the bilateral filter. It's used when {@link Scene#lightmapFilterEnabled}
		is enabled. Larger value applies more widespread blur. This needs to be a positive non-zero
		value. Defaults to 10.
	**/
	var lightmapFilterRange : Float;
	/**
		A spatial parameter of the bilateral filter. It's used when {@link Scene#lightmapFilterEnabled}
		is enabled. Larger value blurs less similar colors. This needs to be a positive non-zero
		value. Defaults to 0.2.
	**/
	var lightmapFilterSmoothness : Float;
	/**
		Set of 6 prefiltered cubemaps.
	**/
	var prefilteredCubemaps : Array<Texture>;
	/**
		The base cubemap texture used as the scene's skybox, if mip level is 0. Defaults to null.
	**/
	var skybox : Texture;
	/**
		Multiplier for skybox intensity. Defaults to 1. Unused if physical units are used.
	**/
	var skyboxIntensity : Float;
	/**
		Luminance (in lm/m^2) of skybox. Defaults to 0. Only used if physical units are used.
	**/
	var skyboxLuminance : Float;
	/**
		The mip level of the skybox to be displayed. Only valid for prefiltered cubemap skyboxes.
		Defaults to 0 (base level).
	**/
	var skyboxMip : Float;
	/**
		The rotation of the skybox to be displayed. Defaults to {@link Quat.IDENTITY}.
	**/
	var skyboxRotation : Quat;
	/**
		The tonemapping transform to apply when writing fragments to the frame buffer. Can be:
		
		- {@link TONEMAP_LINEAR}
		- {@link TONEMAP_FILMIC}
		- {@link TONEMAP_HEJL}
		- {@link TONEMAP_ACES}
		
		Defaults to {@link TONEMAP_LINEAR}.
	**/
	var toneMapping : Float;
	function destroy():Void;
	function drawLine(start:Dynamic, end:Dynamic, ?color:Color, ?depthTest:Bool, ?layer:Layer):Void;
	function drawLines(positions:Dynamic, colors:Dynamic, ?depthTest:Bool, ?layer:Layer):Void;
	function drawLineArrays(positions:Dynamic, colors:Dynamic, ?depthTest:Bool, ?layer:Layer):Void;
	function applySettings(settings:Dynamic):Void;
	function _getSkyboxTex():Texture;
	function _updateSky(device:Dynamic):Void;
	function _resetSky():Void;
	/**
		Sets the cubemap for the scene skybox.
	**/
	function setSkybox(?cubemaps:Array<Texture>):Void;
	/**
		The lightmap pixel format.
	**/
	final lightmapPixelFormat : Float;
	static var prototype : Scene;
}