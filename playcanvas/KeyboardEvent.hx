package playcanvas;

/**
	The KeyboardEvent is passed into all event callbacks from the {@link Keyboard}. It corresponds
	to a key press or release.
**/
@:jsRequire("playcanvas", "KeyboardEvent") extern class KeyboardEvent {
	/**
		Create a new KeyboardEvent.
	**/
	function new(keyboard:Keyboard, event:js.html.KeyboardEvent);
	/**
		The keyCode of the key that has changed. See the KEY_* constants.
	**/
	var key : Float;
	/**
		The element that fired the keyboard event.
	**/
	var element : js.html.DOMElement;
	/**
		The original browser event which was fired.
	**/
	var event : js.html.KeyboardEvent;
	static var prototype : KeyboardEvent;
}