package playcanvas;

/**
	A GamePad stores information about a gamepad from the Gamepad API.
**/
@jsInaccessible extern class GamePad {
	/**
		Create a new GamePad Instance.
	**/
	function new(gamepad:js.html.Gamepad, map:Dynamic);
	/**
		The compiled mapping to reduce lookup delay when retrieving buttons
	**/
	private var _compiledMapping : Dynamic;
	/**
		The identifier for the gamepad. Its structure depends on device.
	**/
	var id : String;
	/**
		The index for this controller. A gamepad that is disconnected and reconnected will retain the same index.
	**/
	var index : Float;
	/**
		The buttons present on the GamePad. Order is provided by API, use GamePad#buttons instead.
	**/
	var _buttons : Array<GamePadButton>;
	/**
		The axes values from the GamePad. Order is provided by API, use GamePad#axes instead.
	**/
	var _axes : Array<Float>;
	/**
		Previous value for the analog axes present on the gamepad. Values are between -1 and 1.
	**/
	var _previousAxes : Array<Float>;
	/**
		The gamepad mapping detected by the browser. Value is either "standard", "xr-standard", "" or "custom". When empty string, you may need to update the mapping yourself. "custom" means you updated the mapping.
	**/
	var mapping : String;
	/**
		The buttons and axes map.
	**/
	var map : Dynamic;
	/**
		The hand this gamepad is usually handled on. Only relevant for XR pads. Value is either "left", "right" or "none".
	**/
	var hand : String;
	/**
		The original Gamepad API gamepad.
	**/
	var pad : js.html.Gamepad;
	/**
		Whether the gamepad is connected.
	**/
	final connected : Bool;
	/**
		Compile the buttons mapping to reduce lookup delay.
	**/
	private var _compileMapping : Dynamic;
	/**
		Update the existing GamePad Instance.
	**/
	function update(gamepad:js.html.Gamepad):GamePad;
	/**
		Update the map for this gamepad.
	**/
	function updateMap(map:{ var buttons : Array<String>; var axes : Array<String>; @:optional var synthesizedButtons : Dynamic; @:optional var mapping : String; }):Void;
	/**
		Reset gamepad mapping to default.
	**/
	function resetMap():Void;
	/**
		The values from analog axes present on the GamePad. Values are between -1 and 1.
	**/
	final axes : Array<Float>;
	/**
		The buttons present on the GamePad.
	**/
	final buttons : Array<GamePadButton>;
	/**
		Make the gamepad vibrate.
	**/
	function pulse(intensity:Float, duration:Float, ?options:{ @:optional var startDelay : Float; @:optional var strongMagnitude : Float; @:optional var weakMagnitude : Float; }):js.lib.Promise<Bool>;
	/**
		Retrieve a button from its index.
	**/
	function getButton(index:Float):GamePadButton;
	/**
		Returns true if the button is pressed.
	**/
	function isPressed(button:Float):Bool;
	/**
		Return true if the button was pressed since the last update.
	**/
	function wasPressed(button:Float):Bool;
	/**
		Return true if the button was released since the last update.
	**/
	function wasReleased(button:Float):Bool;
	/**
		Returns true if the button is touched.
	**/
	function isTouched(button:Float):Bool;
	/**
		Return true if the button was touched since the last update.
	**/
	function wasTouched(button:Float):Bool;
	/**
		Returns the value of a button between 0 and 1, with 0 representing a button that is not pressed, and 1 representing a button that is fully pressed.
	**/
	function getValue(button:Float):Float;
	/**
		Get the value of one of the analog axes of the pad.
	**/
	function getAxis(axis:Float):Float;
	static var prototype : GamePad;
}