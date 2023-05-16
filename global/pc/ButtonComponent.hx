package global.pc;

/**
	A ButtonComponent enables a group of entities to behave like a button, with different visual
	states for hover and press interactions.
**/
@:native("pc.ButtonComponent") extern class ButtonComponent extends Component {
	/**
		Create a new ButtonComponent instance.
	**/
	function new(system:ButtonComponentSystem, entity:Entity);
	var active : Bool;
	var fadeDuration : Float;
	var hitPadding : Vec4;
	var hoverSpriteAsset : Asset;
	var hoverSpriteFrame : Float;
	var hoverTint : Color;
	var imageEntity : Entity;
	var inactiveSpriteAsset : Asset;
	var inactiveSpriteFrame : Float;
	var inactiveTint : Color;
	var pressedSpriteAsset : Asset;
	var pressedSpriteFrame : Float;
	var pressedTint : Color;
	var transitionMode : Float;
	var _visualState : String;
	var _isHovering : Bool;
	var _hoveringCounter : Float;
	var _isPressed : Bool;
	var _defaultTint : Color;
	var _defaultSpriteAsset : Dynamic;
	var _defaultSpriteFrame : Float;
	var _imageReference : EntityReference;
	function _toggleLifecycleListeners(onOrOff:Dynamic, system:Dynamic):Void;
	function _onSetActive(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _onSetTransitionMode(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _onSetTransitionValue(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _onElementComponentRemove(entity:Dynamic):Void;
	function _onElementComponentAdd(entity:Dynamic):Void;
	function _onImageElementLose():Void;
	function _onImageElementGain():Void;
	function _toggleHitElementListeners(onOrOff:Dynamic):Void;
	var _hasHitElementListeners : Bool;
	function _storeDefaultVisualState():Void;
	function _storeDefaultColor(color:Dynamic):Void;
	function _storeDefaultOpacity(opacity:Dynamic):Void;
	function _storeDefaultSpriteAsset(spriteAsset:Dynamic):Void;
	function _storeDefaultSpriteFrame(spriteFrame:Dynamic):Void;
	function _onSetColor(color:Dynamic):Void;
	function _onSetOpacity(opacity:Dynamic):Void;
	function _onSetSpriteAsset(spriteAsset:Dynamic):Void;
	function _onSetSpriteFrame(spriteFrame:Dynamic):Void;
	function _onMouseEnter(event:Dynamic):Void;
	function _onMouseLeave(event:Dynamic):Void;
	function _onMouseDown(event:Dynamic):Void;
	function _onMouseUp(event:Dynamic):Void;
	function _onTouchStart(event:Dynamic):Void;
	function _onTouchEnd(event:Dynamic):Void;
	function _onTouchLeave(event:Dynamic):Void;
	function _onTouchCancel(event:Dynamic):Void;
	function _onSelectStart(event:Dynamic):Void;
	function _onSelectEnd(event:Dynamic):Void;
	function _onSelectEnter(event:Dynamic):Void;
	function _onSelectLeave(event:Dynamic):Void;
	function _onClick(event:Dynamic):Void;
	function _fireIfActive(name:Dynamic, event:Dynamic):Void;
	function _updateVisualState(force:Dynamic):Void;
	function _forceReapplyVisualState():Void;
	function _resetToDefaultVisualState(transitionMode:Dynamic):Void;
	function _determineVisualState():String;
	function _applySprite(spriteAsset:Dynamic, spriteFrame:Dynamic):Void;
	var _isApplyingSprite : Bool;
	function _applyTint(tintColor:Dynamic):Void;
	function _applyTintImmediately(tintColor:Dynamic):Void;
	var _isApplyingTint : Bool;
	function _applyTintWithTween(tintColor:Dynamic):Void;
	var _tweenInfo : {
		var startTime : Dynamic;
		var from : Color;
		var to : Dynamic;
		var lerpColor : Color;
	};
	function _updateTintTween():Void;
	function _cancelTween():Void;
	function onUpdate():Void;
	function onRemove():Void;
	static var prototype : ButtonComponent;
}