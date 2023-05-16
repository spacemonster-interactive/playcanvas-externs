package global.pc;

/**
	MouseEvent object that is passed to events 'mousemove', 'mouseup', 'mousedown' and 'mousewheel'.
**/
@:native("pc.MouseEvent") extern class MouseEvent {
	/**
		Create a new MouseEvent instance.
	**/
	function new(mouse:Mouse, event:js.html.MouseEvent);
	/**
		The x coordinate of the mouse pointer relative to the element {@link Mouse} is
		attached to.
	**/
	var x : Float;
	/**
		The y coordinate of the mouse pointer relative to the element {@link Mouse} is
		attached to.
	**/
	var y : Float;
	/**
		A value representing the amount the mouse wheel has moved, only valid for
		{@link mousewheel} events.
	**/
	var wheelDelta : Float;
	/**
		The change in x coordinate since the last mouse event.
	**/
	var dx : Float;
	/**
		The change in y coordinate since the last mouse event.
	**/
	var dy : Float;
	/**
		The mouse button associated with this event. Can be:
		
		- {@link MOUSEBUTTON_LEFT}
		- {@link MOUSEBUTTON_MIDDLE}
		- {@link MOUSEBUTTON_RIGHT}
	**/
	var button : Float;
	var buttons : Array<Bool>;
	/**
		The element that the mouse was fired from.
	**/
	var element : js.html.DOMElement;
	/**
		True if the ctrl key was pressed when this event was fired.
	**/
	var ctrlKey : Bool;
	/**
		True if the alt key was pressed when this event was fired.
	**/
	var altKey : Bool;
	/**
		True if the shift key was pressed when this event was fired.
	**/
	var shiftKey : Bool;
	/**
		True if the meta key was pressed when this event was fired.
	**/
	var metaKey : Bool;
	/**
		The original browser event.
	**/
	var event : js.html.MouseEvent;
	static var prototype : MouseEvent;
}