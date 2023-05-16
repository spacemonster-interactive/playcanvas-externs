package playcanvas;

@jsInaccessible extern class ButtonComponentData {
	function new();
	var enabled : Bool;
	var active : Bool;
	var imageEntity : Dynamic;
	var hitPadding : Vec4;
	var transitionMode : Float;
	var hoverTint : Color;
	var pressedTint : Color;
	var inactiveTint : Color;
	var fadeDuration : Float;
	var hoverSpriteAsset : Dynamic;
	var hoverSpriteFrame : Float;
	var pressedSpriteAsset : Dynamic;
	var pressedSpriteFrame : Float;
	var inactiveSpriteAsset : Dynamic;
	var inactiveSpriteFrame : Float;
	static var prototype : ButtonComponentData;
}