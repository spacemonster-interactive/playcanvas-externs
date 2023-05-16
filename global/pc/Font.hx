package global.pc;

/**
	Represents the resource of a font asset.
**/
@:native("pc.Font") extern class Font {
	/**
		Create a new Font instance.
	**/
	function new(textures:Array<Texture>, data:Dynamic);
	var type : Dynamic;
	var em : Float;
	/**
		The font textures.
	**/
	var textures : Array<Texture>;
	/**
		The font intensity.
	**/
	var intensity : Float;
	var _data : Dynamic;
	var data : Dynamic;
	static var prototype : Font;
}