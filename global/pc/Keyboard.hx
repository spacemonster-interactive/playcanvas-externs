package global.pc;

/**
	A Keyboard device bound to an Element. Allows you to detect the state of the key presses. Note
	that the Keyboard object must be attached to an Element before it can detect any key presses.
**/
@:native("pc.Keyboard") extern class Keyboard extends EventHandler {
	/**
		Create a new Keyboard instance.
	**/
	function new(?element:ts.AnyOf2<js.html.DOMElement, js.html.Window>, ?options:{ @:optional var preventDefault : Bool; @:optional var stopPropagation : Bool; });
	var _element : ts.AnyOf2<js.html.DOMElement, js.html.Window>;
	var _keyDownHandler : Dynamic;
	var _keyUpHandler : Dynamic;
	var _keyPressHandler : Dynamic;
	var _visibilityChangeHandler : Dynamic;
	var _windowBlurHandler : Dynamic;
	var _keymap : { };
	var _lastmap : { };
	var preventDefault : Bool;
	var stopPropagation : Bool;
	/**
		Attach the keyboard event handlers to an Element.
	**/
	function attach(element:ts.AnyOf2<js.html.DOMElement, js.html.Window>):Void;
	/**
		Detach the keyboard event handlers from the element it is attached to.
	**/
	function detach():Void;
	/**
		Convert a key code into a key identifier.
	**/
	private var toKeyIdentifier : Dynamic;
	/**
		Process the browser keydown event.
	**/
	private var _handleKeyDown : Dynamic;
	/**
		Process the browser keyup event.
	**/
	private var _handleKeyUp : Dynamic;
	/**
		Process the browser keypress event.
	**/
	private var _handleKeyPress : Dynamic;
	/**
		Handle the browser visibilitychange event.
	**/
	private var _handleVisibilityChange : Dynamic;
	/**
		Handle the browser blur event.
	**/
	private var _handleWindowBlur : Dynamic;
	/**
		Called once per frame to update internal state.
	**/
	function update():Void;
	/**
		Return true if the key is currently down.
	**/
	function isPressed(key:Float):Bool;
	/**
		Returns true if the key was pressed since the last update.
	**/
	function wasPressed(key:Float):Bool;
	/**
		Returns true if the key was released since the last update.
	**/
	function wasReleased(key:Float):Bool;
	static var prototype : Keyboard;
}