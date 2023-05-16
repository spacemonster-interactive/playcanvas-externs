package playcanvas;

/**
	Attach a TouchDevice to an element and it will receive and fire events when the element is
	touched. See also {@link Touch} and {@link TouchEvent}.
**/
@:jsRequire("playcanvas", "TouchDevice") extern class TouchDevice extends EventHandler {
	/**
		Create a new touch device and attach it to an element.
	**/
	function new(element:js.html.DOMElement);
	var _element : js.html.DOMElement;
	var _startHandler : Dynamic;
	var _endHandler : Dynamic;
	var _moveHandler : Dynamic;
	var _cancelHandler : Dynamic;
	/**
		Attach a device to an element in the DOM. If the device is already attached to an element
		this method will detach it first.
	**/
	function attach(element:js.html.DOMElement):Void;
	/**
		Detach a device from the element it is attached to.
	**/
	function detach():Void;
	function _handleTouchStart(e:Dynamic):Void;
	function _handleTouchEnd(e:Dynamic):Void;
	function _handleTouchMove(e:Dynamic):Void;
	function _handleTouchCancel(e:Dynamic):Void;
	static var prototype : TouchDevice;
}