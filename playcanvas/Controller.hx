package playcanvas;

/**
	A general input handler which handles both mouse and keyboard input assigned to named actions.
	This allows you to define input handlers separately to defining keyboard/mouse configurations.
**/
@:jsRequire("playcanvas", "Controller") extern class Controller {
	/**
		Create a new instance of a Controller.
	**/
	function new(?element:js.html.DOMElement, ?options:{ @:optional var keyboard : Keyboard; @:optional var mouse : Mouse; @:optional var gamepads : GamePads; });
	var _keyboard : Keyboard;
	var _mouse : Mouse;
	var _gamepads : GamePads;
	var _element : js.html.DOMElement;
	var _actions : { };
	var _axes : { };
	var _axesValues : { };
	/**
		Attach Controller to an Element. This is required before you can monitor for key/mouse
		inputs.
	**/
	function attach(element:js.html.DOMElement):Void;
	/**
		Detach Controller from an Element. This should be done before the Controller is destroyed.
	**/
	function detach():Void;
	/**
		Disable the context menu usually activated with the right mouse button.
	**/
	function disableContextMenu():Void;
	/**
		Enable the context menu usually activated with the right mouse button. This is enabled by
		default.
	**/
	function enableContextMenu():Void;
	/**
		Update the Keyboard and Mouse handlers.
	**/
	function update(dt:Dynamic):Void;
	/**
		Helper function to append an action.
	**/
	function appendAction(action_name:String, action:{ var type : String; @:optional var keys : Array<Float>; @:optional var button : Float; @:optional var pad : Float; }):Void;
	/**
		Create or update a action which is enabled when the supplied keys are pressed.
	**/
	function registerKeys(action:String, keys:Array<Float>):Void;
	/**
		Create or update an action which is enabled when the supplied mouse button is pressed.
	**/
	function registerMouse(action:String, button:Float):Void;
	/**
		Create or update an action which is enabled when the gamepad button is pressed.
	**/
	function registerPadButton(action:String, pad:Float, button:Float):Void;
	/**
		Register an action against a controller axis.
	**/
	function registerAxis(?options:{ @:optional var pad : Float; }):Void;
	/**
		Returns true if the current action is enabled.
	**/
	function isPressed(actionName:String):Bool;
	/**
		Returns true if the action was enabled this since the last update.
	**/
	function wasPressed(actionName:String):Bool;
	function getAxis(name:Dynamic):Float;
	function _enableMouse():Void;
	function _enableKeyboard():Void;
	static var prototype : Controller;
}