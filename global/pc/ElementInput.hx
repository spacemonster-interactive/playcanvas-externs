package global.pc;

/**
	Handles mouse and touch events for {@link ElementComponent}s. When input events occur on an
	ElementComponent this fires the appropriate events on the ElementComponent.
**/
@:native("pc.ElementInput") extern class ElementInput {
	/**
		Create a new ElementInput instance.
	**/
	function new(domElement:js.html.DOMElement, ?options:{ @:optional var useMouse : Bool; @:optional var useTouch : Bool; @:optional var useXr : Bool; });
	var _app : Dynamic;
	var _attached : Bool;
	var _target : js.html.DOMElement;
	var _enabled : Bool;
	var _lastX : Float;
	var _lastY : Float;
	var _upHandler : Dynamic;
	var _downHandler : Dynamic;
	var _moveHandler : Dynamic;
	var _wheelHandler : Dynamic;
	var _touchstartHandler : Dynamic;
	var _touchendHandler : Dynamic;
	var _touchcancelHandler : Dynamic;
	var _touchmoveHandler : Dynamic;
	var _sortHandler : Dynamic;
	var _elements : Array<Dynamic>;
	var _hoveredElement : Dynamic;
	var _pressedElement : Dynamic;
	var _touchedElements : { };
	var _touchesForWhichTouchLeaveHasFired : { };
	var _selectedElements : { };
	var _selectedPressedElements : { };
	var _useMouse : Bool;
	var _useTouch : Bool;
	var _useXr : Bool;
	var _selectEventsAttached : Bool;
	var _clickedEntities : { };
	var enabled : Bool;
	var app : Dynamic;
	/**
		Attach mouse and touch events to a DOM element.
	**/
	function attach(domElement:js.html.DOMElement):Void;
	function attachSelectEvents():Void;
	/**
		Remove mouse and touch events from the DOM element that it is attached to.
	**/
	function detach():Void;
	/**
		Add a {@link ElementComponent} to the internal list of ElementComponents that are being
		checked for input.
	**/
	function addElement(element:ElementComponent):Void;
	/**
		Remove a {@link ElementComponent} from the internal list of ElementComponents that are being
		checked for input.
	**/
	function removeElement(element:ElementComponent):Void;
	function _handleUp(event:Dynamic):Void;
	function _handleDown(event:Dynamic):Void;
	function _handleMove(event:Dynamic):Void;
	function _handleWheel(event:Dynamic):Void;
	function _determineTouchedElements(event:Dynamic):{ };
	function _handleTouchStart(event:Dynamic):Void;
	function _handleTouchEnd(event:Dynamic):Void;
	function _handleTouchMove(event:Dynamic):Void;
	function _onElementMouseEvent(eventType:Dynamic, event:Dynamic):Void;
	function _onXrStart():Void;
	function _onXrEnd():Void;
	function _onXrUpdate():Void;
	function _onXrInputRemove(inputSource:Dynamic):Void;
	function _onSelectStart(inputSource:Dynamic, event:Dynamic):Void;
	function _onSelectEnd(inputSource:Dynamic, event:Dynamic):Void;
	function _onElementSelectEvent(eventType:Dynamic, inputSource:Dynamic, event:Dynamic):Void;
	function _fireEvent(name:Dynamic, evt:Dynamic):Void;
	function _calcMouseCoords(event:Dynamic):Void;
	function _calcTouchCoords(touch:Dynamic):{
		var x : Float;
		var y : Float;
	};
	function _sortElements(a:Dynamic, b:Dynamic):Dynamic;
	function _getTargetElementByCoords(camera:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	function _getTargetElementByRay(ray:Dynamic, camera:Dynamic):Dynamic;
	function _getTargetElement(camera:Dynamic, rayScreen:Dynamic, ray3d:Dynamic):Dynamic;
	function _calculateRayScreen(x:Dynamic, y:Dynamic, camera:Dynamic, ray:Dynamic):Bool;
	function _calculateRay3d(x:Dynamic, y:Dynamic, camera:Dynamic, ray:Dynamic):Bool;
	function _checkElement(ray:Dynamic, element:Dynamic, screen:Dynamic):Float;
	static var prototype : ElementInput;
	static function buildHitCorners(element:Dynamic, screenOrWorldCorners:Dynamic, scale:Dynamic):Dynamic;
	static function calculateScaleToScreen(element:Dynamic):Vec3;
	static function calculateScaleToWorld(element:Dynamic):Vec3;
}