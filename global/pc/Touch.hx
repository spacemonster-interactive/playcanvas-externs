package global.pc;

/**
	A instance of a single point touch on a {@link TouchDevice}.
**/
@:native("pc.Touch") extern class Touch {
	/**
		Create a new Touch object from the browser Touch.
	**/
	function new(touch:js.html.Touch);
	/**
		The identifier of the touch.
	**/
	var id : Float;
	/**
		The x coordinate relative to the element that the TouchDevice is attached to.
	**/
	var x : Float;
	/**
		The y coordinate relative to the element that the TouchDevice is attached to.
	**/
	var y : Float;
	/**
		The target element of the touch event.
	**/
	var target : js.html.DOMElement;
	/**
		The original browser Touch object.
	**/
	var touch : js.html.Touch;
	static var prototype : Touch;
}