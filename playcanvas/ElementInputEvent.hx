package playcanvas;

/**
	Represents an input event fired on a {@link ElementComponent}. When an event is raised on an
	ElementComponent it bubbles up to its parent ElementComponents unless we call stopPropagation().
**/
@:jsRequire("playcanvas", "ElementInputEvent") extern class ElementInputEvent {
	/**
		Create a new ElementInputEvent instance.
	**/
	function new(event:ts.AnyOf2<js.html.MouseEvent, js.html.TouchEvent>, element:ElementComponent, camera:CameraComponent);
	/**
		The MouseEvent or TouchEvent that was originally raised.
	**/
	var event : ts.AnyOf2<js.html.MouseEvent, js.html.TouchEvent>;
	/**
		The ElementComponent that this event was originally raised on.
	**/
	var element : ElementComponent;
	/**
		The CameraComponent that this event was originally raised via.
	**/
	var camera : CameraComponent;
	var _stopPropagation : Bool;
	/**
		Stop propagation of the event to parent {@link ElementComponent}s. This also stops
		propagation of the event to other event listeners of the original DOM Event.
	**/
	function stopPropagation():Void;
	static var prototype : ElementInputEvent;
}