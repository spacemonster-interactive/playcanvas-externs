package global.pc;

/**
	A Event corresponding to touchstart, touchend, touchmove or touchcancel. TouchEvent wraps the
	standard browser event and provides lists of {@link Touch} objects.
**/
@:native("pc.TouchEvent") extern class TouchEvent {
	/**
		Create a new TouchEvent instance. It is created from an existing browser event.
	**/
	function new(device:TouchDevice, event:js.html.TouchEvent);
	/**
		The target Element that the event was fired from.
	**/
	var element : js.html.DOMElement;
	/**
		The original browser TouchEvent.
	**/
	var event : js.html.TouchEvent;
	/**
		A list of all touches currently in contact with the device.
	**/
	var touches : Array<Touch>;
	/**
		A list of touches that have changed since the last event.
	**/
	var changedTouches : Array<Touch>;
	/**
		Get an event from one of the touch lists by the id. It is useful to access
		touches by their id so that you can be sure you are referencing the same
		touch.
	**/
	function getTouchById(id:Float, list:Null<Array<Touch>>):Touch;
	static var prototype : TouchEvent;
}