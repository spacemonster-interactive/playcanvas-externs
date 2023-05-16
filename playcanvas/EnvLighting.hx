package playcanvas;

/**
	Helper functions to support prefiltering lighting data.
**/
@:jsRequire("playcanvas", "EnvLighting") extern class EnvLighting {
	function new();
	static var prototype : EnvLighting;
	/**
		Generate a skybox cubemap in the correct pixel format from the source texture.
	**/
	static function generateSkyboxCubemap(source:Texture, ?size:Float):Texture;
	/**
		Create a texture in the format needed to precalculate lighting data.
	**/
	static function generateLightingSource(source:Texture, ?options:{ @:optional var target : Texture; @:optional var size : Float; }):Texture;
	/**
		Generate the environment lighting atlas containing prefiltered reflections and ambient.
	**/
	static function generateAtlas(source:Texture, ?options:{ @:optional var target : Texture; @:optional var size : Float; @:optional var numReflectionSamples : Float; @:optional var numAmbientSamples : Float; }):Texture;
	/**
		Generate the environment lighting atlas from prefiltered cubemap data.
	**/
	static function generatePrefilteredAtlas(sources:Array<Texture>, ?options:{ @:optional var target : Texture; @:optional var size : Float; @:optional var legacyAmbient : Bool; @:optional var numSamples : Float; }):Texture;
}