package global.pc;

/**
	Represents a TouchEvent fired on a {@link ElementComponent}.
**/
@:native("pc.ElementTouchEvent") extern class ElementTouchEvent extends ElementInputEvent {
	/**
		Create an instance of an ElementTouchEvent.
	**/
	function new(event:js.html.TouchEvent, element:ElementComponent, camera:CameraComponent, x:Float, y:Float, touch:js.html.Touch);
	/**
		The Touch objects representing all current points of contact with the surface,
		regardless of target or changed status.
	**/
	var touches : Array<js.html.Touch>;
	/**
		The Touch objects representing individual points of contact whose states changed between
		the previous touch event and this one.
	**/
	var changedTouches : Array<js.html.Touch>;
	var x : Float;
	var y : Float;
	/**
		The touch object that triggered the event.
	**/
	var touch : js.html.Touch;
	static var prototype : ElementTouchEvent;
}