package playcanvas;

/**
	A GamePadButton stores information about a button from the Gamepad API.
**/
@jsInaccessible extern class GamePadButton {
	/**
		Create a new GamePadButton instance.
	**/
	function new(current:ts.AnyOf2<Float, js.html.GamepadButton>, ?previous:ts.AnyOf2<Float, js.html.GamepadButton>);
	/**
		The value for the button between 0 and 1, with 0 representing a button that is not pressed, and 1 representing a button that is fully pressed.
	**/
	var value : Float;
	/**
		Whether the button is currently down.
	**/
	var pressed : Bool;
	/**
		Whether the button is currently touched.
	**/
	var touched : Bool;
	/**
		Whether the button was pressed.
	**/
	var wasPressed : Bool;
	/**
		Whether the button was released since the last update.
	**/
	var wasReleased : Bool;
	/**
		Whether the button was touched since the last update.
	**/
	var wasTouched : Bool;
	/**
		Update the existing GamePadButton Instance.
	**/
	function update(button:js.html.GamepadButton):Void;
	static var prototype : GamePadButton;
}