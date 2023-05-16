package playcanvas;

/**
	Represents a Mouse event fired on a {@link ElementComponent}.
**/
@:jsRequire("playcanvas", "ElementMouseEvent") extern class ElementMouseEvent extends ElementInputEvent {
	/**
		Create an instance of an ElementMouseEvent.
	**/
	function new(event:js.html.MouseEvent, element:ElementComponent, camera:CameraComponent, x:Float, y:Float, lastX:Float, lastY:Float);
	var x : Float;
	var y : Float;
	/**
		Whether the ctrl key was pressed.
	**/
	var ctrlKey : Bool;
	/**
		Whether the alt key was pressed.
	**/
	var altKey : Bool;
	/**
		Whether the shift key was pressed.
	**/
	var shiftKey : Bool;
	/**
		Whether the meta key was pressed.
	**/
	var metaKey : Bool;
	/**
		The mouse button.
	**/
	var button : Float;
	/**
		The amount of horizontal movement of the cursor.
	**/
	var dx : Float;
	/**
		The amount of vertical movement of the cursor.
	**/
	var dy : Float;
	/**
		The amount of the wheel movement.
	**/
	var wheelDelta : Float;
	static var prototype : ElementMouseEvent;
}