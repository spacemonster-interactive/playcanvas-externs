package global.pc;

/**
	Enables an Entity to render a simple static sprite or sprite animations.
**/
@:native("pc.SpriteComponent") extern class SpriteComponent extends Component {
	/**
		Create a new SpriteComponent instance.
	**/
	function new(system:SpriteComponentSystem, entity:Entity);
	var _type : String;
	var _material : Dynamic;
	var _color : Color;
	var _colorUniform : js.lib.Float32Array;
	var _speed : Float;
	var _flipX : Bool;
	var _flipY : Bool;
	var _width : Float;
	var _height : Float;
	var _drawOrder : Float;
	var _layers : Array<Float>;
	var _outerScale : Vec2;
	var _outerScaleUniform : js.lib.Float32Array;
	var _innerOffset : Vec4;
	var _innerOffsetUniform : js.lib.Float32Array;
	var _atlasRect : Vec4;
	var _atlasRectUniform : js.lib.Float32Array;
	var _batchGroupId : Float;
	var _batchGroup : Dynamic;
	var _node : GraphNode;
	var _model : Model;
	var _meshInstance : MeshInstance;
	var _updateAabbFunc : Dynamic;
	var _addedModel : Bool;
	var _autoPlayClip : Dynamic;
	/**
		Dictionary of sprite animation clips.
	**/
	private var _clips : Dynamic;
	var _defaultClip : SpriteAnimationClip;
	/**
		The sprite animation clip currently playing.
	**/
	private var _currentClip : Dynamic;
	/**
		The type of the SpriteComponent. Can be:
		
		- {@link SPRITETYPE_SIMPLE}: The component renders a single frame from a sprite asset.
		- {@link SPRITETYPE_ANIMATED}: The component can play sprite animation clips.
		
		Defaults to {@link SPRITETYPE_SIMPLE}.
	**/
	var type : String;
	/**
		The frame counter of the sprite. Specifies which frame from the current sprite asset to
		render.
	**/
	var frame : Float;
	/**
		The asset id or the {@link Asset} of the sprite to render. Only works for
		{@link SPRITETYPE_SIMPLE} sprites.
	**/
	var spriteAsset : Dynamic;
	/**
		The current sprite.
	**/
	var sprite : Dynamic;
	var material : Dynamic;
	/**
		The color tint of the sprite.
	**/
	var color : Color;
	/**
		The opacity of the sprite.
	**/
	var opacity : Float;
	/**
		A dictionary that contains {@link SpriteAnimationClip}s.
	**/
	var clips : haxe.DynamicAccess<SpriteAnimationClip>;
	/**
		The current clip being played.
	**/
	final currentClip : SpriteAnimationClip;
	/**
		A global speed modifier used when playing sprite animation clips.
	**/
	var speed : Float;
	/**
		Flip the X axis when rendering a sprite.
	**/
	var flipX : Bool;
	/**
		Flip the Y axis when rendering a sprite.
	**/
	var flipY : Bool;
	/**
		The width of the sprite when rendering using 9-Slicing. The width and height are only used
		when the render mode of the sprite asset is Sliced or Tiled.
	**/
	var width : Float;
	/**
		The height of the sprite when rendering using 9-Slicing. The width and height are only used
		when the render mode of the sprite asset is Sliced or Tiled.
	**/
	var height : Float;
	/**
		Assign sprite to a specific batch group (see {@link BatchGroup}). Default is -1 (no group).
	**/
	var batchGroupId : Float;
	/**
		The name of the clip to play automatically when the component is enabled and the clip exists.
	**/
	var autoPlayClip : Dynamic;
	/**
		The draw order of the component. A higher value means that the component will be rendered on
		top of other components in the same layer. This is not used unless the layer's sort order is
		set to {@link SORTMODE_MANUAL}.
	**/
	var drawOrder : Float;
	/**
		An array of layer IDs ({@link Layer#id}) to which this sprite should belong.
	**/
	var layers : Array<Float>;
	final aabb : Dynamic;
	function onDestroy():Void;
	function _showModel():Void;
	function _hideModel():Void;
	function _showFrame(frame:Dynamic):Void;
	function _updateTransform():Void;
	function _updateAabb(aabb:Dynamic):Dynamic;
	function _tryAutoPlay():Void;
	function _onLayersChanged(oldComp:Dynamic, newComp:Dynamic):Void;
	function _onLayerAdded(layer:Dynamic):Void;
	function _onLayerRemoved(layer:Dynamic):Void;
	function removeModelFromLayers():Void;
	/**
		Creates and adds a new {@link SpriteAnimationClip} to the component's clips.
	**/
	function addClip(data:{ @:optional var name : String; @:optional var fps : Float; @:optional var loop : Bool; @:optional var spriteAsset : ts.AnyOf2<Float, Asset>; }):SpriteAnimationClip;
	/**
		Removes a clip by name.
	**/
	function removeClip(name:String):Void;
	/**
		Get an animation clip by name.
	**/
	function clip(name:String):SpriteAnimationClip;
	/**
		Plays a sprite animation clip by name. If the animation clip is already playing then this
		will do nothing.
	**/
	function play(name:String):SpriteAnimationClip;
	/**
		Pauses the current animation clip.
	**/
	function pause():Void;
	/**
		Resumes the current paused animation clip.
	**/
	function resume():Void;
	/**
		Stops the current animation clip and resets it to the first frame.
	**/
	function stop():Void;
	static var prototype : SpriteComponent;
}