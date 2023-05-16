package playcanvas;

/**
	A Mouse Device, bound to a DOM Element.
**/
@:jsRequire("playcanvas", "Mouse") extern class Mouse extends EventHandler {
	/**
		Create a new Mouse instance.
	**/
	function new(?element:js.html.DOMElement);
	var _lastX : Float;
	var _lastY : Float;
	var _buttons : Array<Bool>;
	var _lastbuttons : Array<Bool>;
	var _upHandler : Dynamic;
	var _downHandler : Dynamic;
	var _moveHandler : Dynamic;
	var _wheelHandler : Dynamic;
	dynamic function _contextMenuHandler(event:Dynamic):Void;
	var _target : js.html.DOMElement;
	var _attached : Bool;
	/**
		Attach mouse events to an Element.
	**/
	function attach(element:js.html.DOMElement):Void;
	/**
		Remove mouse events from the element that it is attached to.
	**/
	function detach():Void;
	/**
		Disable the context menu usually activated with right-click.
	**/
	function disableContextMenu():Void;
	/**
		Enable the context menu usually activated with right-click. This option is active by
		default.
	**/
	function enableContextMenu():Void;
	/**
		Request that the browser hides the mouse cursor and locks the mouse to the element. Allowing
		raw access to mouse movement input without risking the mouse exiting the element. Notes:
		
		- In some browsers this will only work when the browser is running in fullscreen mode. See
		{@link Application#enableFullscreen}
		- Enabling pointer lock can only be initiated by a user action e.g. in the event handler for
		a mouse or keyboard input.
	**/
	function enablePointerLock(?success:LockMouseCallback, ?error:LockMouseCallback):Void;
	/**
		Return control of the mouse cursor to the user.
	**/
	function disablePointerLock(?success:LockMouseCallback):Void;
	/**
		Update method, should be called once per frame.
	**/
	function update():Void;
	/**
		Returns true if the mouse button is currently pressed.
	**/
	function isPressed(button:Float):Bool;
	/**
		Returns true if the mouse button was pressed this frame (since the last call to update).
	**/
	function wasPressed(button:Float):Bool;
	/**
		Returns true if the mouse button was released this frame (since the last call to update).
	**/
	function wasReleased(button:Float):Bool;
	function _handleUp(event:Dynamic):Void;
	function _handleDown(event:Dynamic):Void;
	function _handleMove(event:Dynamic):Void;
	function _handleWheel(event:Dynamic):Void;
	function _getTargetCoords(event:Dynamic):{
		var x : Float;
		var y : Float;
	};
	static var prototype : Mouse;
	/**
		Check if the mouse pointer has been locked, using {@link Mouse#enablePointerLock}.
	**/
	static function isPointerLocked():Bool;
}