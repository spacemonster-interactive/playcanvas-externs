package global.pc;

/**
	A TextureAtlas contains a number of frames from a texture. Each frame defines a region in a
	texture. The TextureAtlas is referenced by {@link Sprite}s.
**/
@:native("pc.TextureAtlas") extern class TextureAtlas extends EventHandler {
	private var _texture : Dynamic;
	private var _frames : Dynamic;
	/**
		The texture used by the atlas.
	**/
	var texture : Texture;
	/**
		Contains frames which define portions of the texture atlas.
	**/
	var frames : Dynamic;
	/**
		Set a new frame in the texture atlas.
	**/
	function setFrame(key:String, data:{ var rect : Vec4; var pivot : Vec2; var border : Vec4; }):Void;
	/**
		Removes a frame from the texture atlas.
	**/
	function removeFrame(key:String):Void;
	/**
		Free up the underlying texture owned by the atlas.
	**/
	function destroy():Void;
	static var prototype : TextureAtlas;
}