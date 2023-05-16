package playcanvas;

/**
	A Sprite contains references to one or more frames of a {@link TextureAtlas}. It can be used by
	the {@link SpriteComponent} or the {@link ElementComponent} to render a single frame or a sprite
	animation.
**/
@:jsRequire("playcanvas", "Sprite") extern class Sprite extends EventHandler {
	/**
		Create a new Sprite instance.
	**/
	function new(device:GraphicsDevice, ?options:{ @:optional var pixelsPerUnit : Float; @:optional var renderMode : Float; @:optional var atlas : TextureAtlas; @:optional var frameKeys : Array<String>; });
	var _device : GraphicsDevice;
	var _pixelsPerUnit : Float;
	var _renderMode : Float;
	var _atlas : TextureAtlas;
	var _frameKeys : Array<String>;
	var _meshes : Array<Dynamic>;
	var _updatingProperties : Bool;
	var _meshesDirty : Bool;
	/**
		The keys of the frames in the sprite atlas that this sprite is using.
	**/
	var frameKeys : Array<String>;
	/**
		The texture atlas.
	**/
	var atlas : TextureAtlas;
	/**
		The number of pixels that map to one PlayCanvas unit.
	**/
	var pixelsPerUnit : Float;
	/**
		The rendering mode of the sprite. Can be:
		
		- {@link SPRITE_RENDERMODE_SIMPLE}
		- {@link SPRITE_RENDERMODE_SLICED}
		- {@link SPRITE_RENDERMODE_TILED}
	**/
	var renderMode : Float;
	/**
		An array that contains a mesh for each frame.
	**/
	final meshes : Array<Mesh>;
	function _createMeshes():Void;
	function _createSimpleMesh(frame:Dynamic):Mesh;
	function _create9SliceMesh():Mesh;
	function _onSetFrames(frames:Dynamic):Void;
	function _onFrameChanged(frameKey:Dynamic, frame:Dynamic):Void;
	function _onFrameRemoved(frameKey:Dynamic):Void;
	function startUpdate():Void;
	function endUpdate():Void;
	/**
		Free up the meshes created by the sprite.
	**/
	function destroy():Void;
	static var prototype : Sprite;
}