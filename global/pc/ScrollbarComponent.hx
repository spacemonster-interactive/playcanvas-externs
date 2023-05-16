package global.pc;

/**
	A ScrollbarComponent enables a group of entities to behave like a draggable scrollbar.
**/
@:native("pc.ScrollbarComponent") extern class ScrollbarComponent extends Component {
	/**
		Create a new ScrollbarComponent.
	**/
	function new(system:ScrollbarComponentSystem, entity:Entity);
	var handleEntity : Entity;
	var handleSize : Float;
	var orientation : Float;
	var _handleReference : EntityReference;
	private var _toggleLifecycleListeners : Dynamic;
	function _onHandleElementGain():Void;
	var _handleDragHelper : ElementDragHelper;
	function _onHandleElementLose():Void;
	function _onHandleDrag(position:Dynamic):Void;
	var value : Float;
	function _onSetValue(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _onSetHandleSize(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _onSetHandleAlignment():Void;
	function _onSetOrientation(name:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function _updateHandlePositionAndSize():Void;
	function _handlePositionToScrollValue(handlePosition:Dynamic):Float;
	function _scrollValueToHandlePosition(value:Dynamic):Float;
	function _getUsableTrackLength():Float;
	function _getTrackLength():Float;
	function _getHandleLength():Float;
	function _getHandlePosition():Float;
	function _getSign():Int;
	function _getAxis():String;
	function _getDimension():String;
	function _getOppositeDimension():String;
	function _destroyDragHelper():Void;
	function _setHandleDraggingEnabled(enabled:Dynamic):Void;
	function onRemove():Void;
	static var prototype : ScrollbarComponent;
}