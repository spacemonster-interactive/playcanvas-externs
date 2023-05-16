package global.pc;

/**
	Helper class that makes it easy to create Elements that can be dragged by the mouse or touch.
**/
@:native("pc.ElementDragHelper") extern class ElementDragHelper extends EventHandler {
	/**
		Create a new ElementDragHelper instance.
	**/
	function new(element:ElementComponent, ?axis:String);
	var _element : ElementComponent;
	var _app : AppBase;
	var _axis : String;
	var _enabled : Bool;
	var _dragScale : Vec3;
	var _dragStartMousePosition : Vec3;
	var _dragStartHandlePosition : Vec3;
	var _deltaMousePosition : Vec3;
	var _deltaHandlePosition : Vec3;
	var _isDragging : Bool;
	/**
		Fired whenever the position of the dragged element changes.
	**/
	function _toggleLifecycleListeners(onOrOff:Dynamic):Void;
	private var _toggleDragListeners : Dynamic;
	var _hasDragListeners : Bool;
	function _onMouseDownOrTouchStart(event:Dynamic):Void;
	var _dragCamera : Dynamic;
	function _onMouseUpOrTouchEnd():Void;
	/**
		This method calculates the `Vec3` intersection point of plane/ray intersection based on
		the mouse/touch input event. If there is no intersection, it returns `null`.
	**/
	private var _screenToLocal : Dynamic;
	function _determineInputPosition(event:Dynamic):Void;
	function _chooseRayOriginAndDirection():Void;
	function _calculateDragScale():Void;
	/**
		This method is linked to `_element` events: `mousemove` and `touchmove`
	**/
	private var _onMove : Dynamic;
	function destroy():Void;
	var enabled : Bool;
	final isDragging : Bool;
	static var prototype : ElementDragHelper;
}