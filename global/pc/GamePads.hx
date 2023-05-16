package global.pc;

/**
	Input handler for accessing GamePad input.
**/
@:native("pc.GamePads") extern class GamePads extends EventHandler {
	/**
		Whether gamepads are supported by this device.
	**/
	var gamepadsSupported : Bool;
	/**
		The list of current gamepads.
	**/
	var current : Array<playcanvas.GamePad>;
	/**
		The list of previous buttons states
	**/
	var _previous : Array<Array<Bool>>;
	var _ongamepadconnectedHandler : Dynamic;
	var _ongamepaddisconnectedHandler : Dynamic;
	/**
		Threshold for axes to return values. Must be between 0 and 1.
	**/
	var deadZone : Float;
	/**
		The list of previous buttons states.
	**/
	final previous : Array<Array<Bool>>;
	/**
		Callback function when a gamepad is connecting.
	**/
	private var _ongamepadconnected : Dynamic;
	/**
		Callback function when a gamepad is disconnecting.
	**/
	private var _ongamepaddisconnected : Dynamic;
	/**
		Update the previous state of the gamepads. This must be called every frame for
		`wasPressed` and `wasTouched` to work.
	**/
	function update():Void;
	/**
		Poll for the latest data from the gamepad API.
	**/
	function poll(?pads:Array<playcanvas.GamePad>):Array<playcanvas.GamePad>;
	/**
		Destroy the event listeners.
	**/
	function destroy():Void;
	/**
		Retrieve the order for buttons and axes for given HTML5 Gamepad.
	**/
	function getMap(pad:js.html.Gamepad):Dynamic;
	/**
		Returns true if the button on the pad requested is pressed.
	**/
	function isPressed(orderIndex:Float, button:Float):Bool;
	/**
		Returns true if the button was pressed since the last frame.
	**/
	function wasPressed(orderIndex:Float, button:Float):Bool;
	/**
		Returns true if the button was released since the last frame.
	**/
	function wasReleased(orderIndex:Float, button:Float):Bool;
	/**
		Get the value of one of the analog axes of the pad.
	**/
	function getAxis(orderIndex:Float, axis:Float):Float;
	/**
		Make the gamepad vibrate.
	**/
	function pulse(orderIndex:Float, intensity:Float, duration:Float, ?options:{ @:optional var startDelay : Float; @:optional var strongMagnitude : Float; @:optional var weakMagnitude : Float; }):js.lib.Promise<Bool>;
	/**
		Make all gamepads vibrate.
	**/
	function pulseAll(intensity:Float, duration:Float, ?options:{ @:optional var startDelay : Float; @:optional var strongMagnitude : Float; @:optional var weakMagnitude : Float; }):js.lib.Promise<Array<Bool>>;
	/**
		Find a connected {@link GamePad} from its identifier.
	**/
	function findById(id:String):Null<playcanvas.GamePad>;
	/**
		Find a connected {@link GamePad} from its device index.
	**/
	function findByIndex(index:Float):Null<playcanvas.GamePad>;
	static var prototype : GamePads;
}