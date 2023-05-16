package global.pc;

/**
	The Animation Component allows an Entity to playback animations on models.
**/
@:native("pc.AnimationComponent") extern class AnimationComponent extends Component {
	/**
		Create a new AnimationComponent instance.
	**/
	function new(system:AnimationComponentSystem, entity:Entity);
	private var _animations : Dynamic;
	private var _assets : Dynamic;
	private var _loop : Dynamic;
	var animEvaluator : Null<AnimEvaluator>;
	var model : Null<Model>;
	/**
		Get the skeleton for the current model. If the model is loaded from glTF/glb, then the
		skeleton is null.
	**/
	var skeleton : Null<Skeleton>;
	var fromSkel : Null<Skeleton>;
	var toSkel : Null<Skeleton>;
	var animationsIndex : haxe.DynamicAccess<String>;
	private var prevAnim : Dynamic;
	private var currAnim : Dynamic;
	private var blend : Dynamic;
	private var blending : Dynamic;
	private var blendSpeed : Dynamic;
	/**
		If true the first animation asset will begin playing when the scene is loaded.
	**/
	var activate : Bool;
	/**
		Speed multiplier for animation play back. 1 is playback at normal speed and 0 pauses the
		animation.
	**/
	var speed : Float;
	/**
		Get or set dictionary of animations by name.
	**/
	var animations : haxe.DynamicAccess<Animation>;
	/**
		The array of animation assets. Can also be an array of asset ids.
	**/
	var assets : Array<ts.AnyOf2<Float, Asset>>;
	/**
		Get or set the current time position (in seconds) of the animation.
	**/
	var currentTime : Float;
	/**
		Get the duration in seconds of the current animation. Returns 0 if no animation is playing.
	**/
	final duration : Float;
	/**
		If true the animation will restart from the beginning when it reaches the end.
	**/
	var loop : Bool;
	/**
		Start playing an animation.
	**/
	function play(name:String, ?blendTime:Float):Void;
	var playing : Bool;
	/**
		Return an animation.
	**/
	function getAnimation(name:String):Animation;
	/**
		Set the model driven by this animation component.
	**/
	function setModel(model:Model):Void;
	function onSetAnimations():Void;
	private var _resetAnimationController : Dynamic;
	private var _createAnimationController : Dynamic;
	private var loadAnimationAssets : Dynamic;
	/**
		Handle asset change events.
	**/
	private var onAssetChanged : Dynamic;
	private var onAssetRemoved : Dynamic;
	private var _stopCurrentAnimation : Dynamic;
	function onBeforeRemove():Void;
	/**
		Update the state of the component.
	**/
	function update(dt:Float):Void;
	static var prototype : AnimationComponent;
}