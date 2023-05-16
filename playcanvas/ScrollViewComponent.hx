package playcanvas;

/**
	A ScrollViewComponent enables a group of entities to behave like a masked scrolling area, with
	optional horizontal and vertical scroll bars.
**/
@:jsRequire("playcanvas", "ScrollViewComponent") extern class ScrollViewComponent extends Component {
	/**
		Create a new ScrollViewComponent.
	**/
	function new(system:ScrollViewComponentSystem, entity:Entity);
	var bounceAmount : Float;
	var contentEntity : Entity;
	var friction : Float;
	var horizontal : Bool;
	var horizontalScrollbarEntity : Entity;
	var horizontalScrollbarVisibility : Float;
	var mouseWheelSensitivity : Vec2;
	var scrollMode : Float;
	var useMouseWheel : Bool;
	var vertical : Bool;
	var verticalScrollbarEntity : Entity;
	var verticalScrollbarVisibility : Float;
	var viewportEntity : Entity;
	var _viewportReference : EntityReference;
	var _contentReference : EntityReference;
	var _scrollbarUpdateFlags : { };
	var _scrollbarReferences : { };
	var _prevContentSizes : { };
	var _scroll : Vec2;
	var _velocity : Vec3;
	var _dragStartPosition : Vec3;
	var _disabledContentInput : Bool;
	var _disabledContentInputEntities : Array<Dynamic>;
	private var _toggleLifecycleListeners : Dynamic;
	private var _toggleElementListeners : Dynamic;
	var _hasElementListeners : Bool;
	function _onElementComponentAdd(entity:Dynamic):Void;
	function _onElementComponentRemove(entity:Dynamic):Void;
	function _onViewportElementGain():Void;
	function _onContentElementGain():Void;
	var _contentDragHelper : ElementDragHelper;
	function _onContentElementLose():Void;
	function _onContentDragStart():Void;
	function _onContentDragEnd():Void;
	var _prevContentDragPosition : Dynamic;
	function _onContentDragMove(position:Dynamic):Void;
	var _wasDragged : Bool;
	function _onSetContentOrViewportSize():Void;
	function _onSetHorizontalScrollbarValue(scrollValueX:Dynamic):Void;
	function _onSetVerticalScrollbarValue(scrollValueY:Dynamic):Void;
	function _onSetHorizontalScrollingEnabled():Void;
	function _onSetVerticalScrollingEnabled():Void;
	function _onHorizontalScrollbarGain():Void;
	function _onVerticalScrollbarGain():Void;
	function _onSetScroll(x:Dynamic, y:Dynamic, resetVelocity:Dynamic):Void;
	function _updateAxis(scrollValue:Dynamic, axis:Dynamic, orientation:Dynamic):Bool;
	function _determineNewScrollValue(scrollValue:Dynamic, axis:Dynamic, orientation:Dynamic):Dynamic;
	function _syncAll():Void;
	function _syncContentPosition(orientation:Dynamic):Void;
	function _syncScrollbarPosition(orientation:Dynamic):Void;
	function _syncScrollbarEnabledState(orientation:Dynamic):Void;
	function _contentIsLargerThanViewport(orientation:Dynamic):Bool;
	function _contentPositionToScrollValue(contentPosition:Dynamic):Vec2;
	function _getMaxOffset(orientation:Dynamic, contentSize:Dynamic):Float;
	function _getMaxScrollValue(orientation:Dynamic):Int;
	function _getScrollbarHandleSize(axis:Dynamic, orientation:Dynamic):Float;
	function _getViewportSize(orientation:Dynamic):Dynamic;
	function _getContentSize(orientation:Dynamic):Dynamic;
	function _getSize(orientation:Dynamic, entityReference:Dynamic):Dynamic;
	function _getScrollingEnabled(orientation:Dynamic):Dynamic;
	function _getScrollbarVisibility(orientation:Dynamic):Dynamic;
	function _getSign(orientation:Dynamic):Int;
	function _getAxis(orientation:Dynamic):String;
	function _getCalculatedDimension(orientation:Dynamic):String;
	function _destroyDragHelper():Void;
	function onUpdate():Void;
	function _updateVelocity():Void;
	function _hasOvershoot(axis:Dynamic, orientation:Dynamic):Bool;
	function _toOvershoot(scrollValue:Dynamic, orientation:Dynamic):Dynamic;
	function _setVelocityFromOvershoot(scrollValue:Dynamic, axis:Dynamic, orientation:Dynamic):Void;
	function _setVelocityFromContentPositionDelta(position:Dynamic):Void;
	function _setScrollFromContentPosition(position:Dynamic):Void;
	function _applyScrollValueTension(scrollValue:Dynamic):Dynamic;
	function _isDragging():Bool;
	function _setScrollbarComponentsEnabled(enabled:Dynamic):Void;
	function _setContentDraggingEnabled(enabled:Dynamic):Void;
	function _onMouseWheel(event:Dynamic):Void;
	var scroll : Vec2;
	function _enableContentInput():Void;
	function _disableContentInput():Void;
	function onRemove():Void;
	static var prototype : ScrollViewComponent;
}