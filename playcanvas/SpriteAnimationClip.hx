package playcanvas;

/**
	Handles playing of sprite animations and loading of relevant sprite assets.
**/
@:jsRequire("playcanvas", "SpriteAnimationClip") extern class SpriteAnimationClip extends EventHandler {
	/**
		Create a new SpriteAnimationClip instance.
	**/
	function new(component:SpriteComponent, data:{ @:optional var fps : Float; @:optional var loop : Bool; @:optional var name : String; @:optional var spriteAsset : Float; });
	var _component : SpriteComponent;
	var _frame : Float;
	var _sprite : Dynamic;
	var _spriteAsset : Dynamic;
	/**
		The id of the sprite asset used to play the animation.
	**/
	var spriteAsset : Dynamic;
	var name : String;
	var fps : Float;
	var loop : Bool;
	var _playing : Bool;
	var _paused : Bool;
	var _time : Float;
	/**
		The total duration of the animation in seconds.
	**/
	final duration : Float;
	/**
		The index of the frame of the {@link Sprite} currently being rendered.
	**/
	var frame : Float;
	/**
		Whether the animation is currently paused.
	**/
	final isPaused : Bool;
	/**
		Whether the animation is currently playing.
	**/
	final isPlaying : Bool;
	/**
		The current sprite used to play the animation.
	**/
	var sprite : Dynamic;
	/**
		The current time of the animation in seconds.
	**/
	var time : Float;
	function _onSpriteAssetAdded(asset:Dynamic):Void;
	function _bindSpriteAsset(asset:Dynamic):Void;
	function _unbindSpriteAsset(asset:Dynamic):Void;
	function _onSpriteAssetLoad(asset:Dynamic):Void;
	function _onTextureAtlasLoad(atlasAsset:Dynamic):Void;
	function _onSpriteAssetRemove(asset:Dynamic):Void;
	function _onSpriteMeshesChange():Void;
	function _onSpritePpuChanged():Void;
	/**
		Advances the animation, looping if necessary.
	**/
	private var _update : Dynamic;
	function _setTime(value:Dynamic):Void;
	function _setFrame(value:Dynamic):Void;
	function _destroy():Void;
	/**
		Plays the animation. If it's already playing then this does nothing.
	**/
	function play():Void;
	/**
		Pauses the animation.
	**/
	function pause():Void;
	/**
		Resumes the paused animation.
	**/
	function resume():Void;
	/**
		Stops the animation and resets the animation to the first frame.
	**/
	function stop():Void;
	static var prototype : SpriteAnimationClip;
}