package playcanvas;

/**
	A LayoutGroupComponent enables the Entity to position and scale child {@link ElementComponent}s
	according to configurable layout rules.
**/
@:jsRequire("playcanvas", "LayoutGroupComponent") extern class LayoutGroupComponent extends Component {
	/**
		Create a new LayoutGroupComponent instance.
	**/
	function new(system:LayoutGroupComponentSystem, entity:Entity);
	private var _orientation : Dynamic;
	private var _reverseX : Dynamic;
	private var _reverseY : Dynamic;
	private var _alignment : Dynamic;
	private var _padding : Dynamic;
	private var _spacing : Dynamic;
	private var _widthFitting : Dynamic;
	private var _heightFitting : Dynamic;
	private var _wrap : Dynamic;
	private var _layoutCalculator : Dynamic;
	/**
		Whether the layout should run horizontally or vertically. Can be:
		
		- {@link ORIENTATION_HORIZONTAL}
		- {@link ORIENTATION_VERTICAL}
		
		Defaults to {@link ORIENTATION_HORIZONTAL}.
	**/
	var orientation : Float;
	/**
		Reverses the order of children along the x axis. Defaults to false.
	**/
	var reverseX : Bool;
	/**
		Reverses the order of children along the y axis. Defaults to true.
	**/
	var reverseY : Bool;
	/**
		Specifies the horizontal and vertical alignment of child elements. Values range from 0 to 1
		where [0, 0] is the bottom left and [1, 1] is the top right. Defaults to [0, 1].
	**/
	var alignment : Vec2;
	/**
		Padding to be applied inside the container before positioning any children. Specified as
		left, bottom, right and top values. Defaults to [0, 0, 0, 0] (no padding).
	**/
	var padding : Vec4;
	/**
		Spacing to be applied between each child element. Defaults to [0, 0] (no spacing).
	**/
	var spacing : Vec2;
	/**
		Fitting logic to be applied when positioning and scaling child elements. Can be:
		
		- {@link FITTING_NONE}: Child elements will be rendered at their natural size.
		- {@link FITTING_STRETCH}: When the natural size of all child elements does not fill the width
		of the container, children will be stretched to fit. The rules for how each child will be
		stretched are outlined below:
		   1. Sum the {@link LayoutChildComponent#fitWidthProportion} values of each child and normalize
		so that all values sum to 1.
		   2. Apply the natural width of each child.
		   3. If there is space remaining in the container, distribute it to each child based on the
		normalized {@link LayoutChildComponent#fitWidthProportion} values, but do not exceed the
		{@link LayoutChildComponent#maxWidth} of each child.
		- {@link FITTING_SHRINK}: When the natural size of all child elements overflows the width of the
		container, children will be shrunk to fit. The rules for how each child will be stretched are
		outlined below:
		   1. Sum the {@link LayoutChildComponent#fitWidthProportion} values of each child and normalize
		so that all values sum to 1.
		   2. Apply the natural width of each child.
		   3. If the new total width of all children exceeds the available space of the container, reduce
		each child's width proportionally based on the normalized {@link
		LayoutChildComponent#fitWidthProportion} values, but do not exceed the {@link
		LayoutChildComponent#minWidth} of each child.
		- {@link FITTING_BOTH}: Applies both STRETCH and SHRINK logic as necessary.
		
		Defaults to {@link FITTING_NONE}.
	**/
	var widthFitting : Float;
	/**
		Identical to {@link LayoutGroupComponent#widthFitting} but for the Y axis. Defaults to
		{@link FITTING_NONE}.
	**/
	var heightFitting : Float;
	/**
		Whether or not to wrap children onto a new row/column when the size of the container is
		exceeded. Defaults to false, which means that children will be be rendered in a single row
		(horizontal orientation) or column (vertical orientation). Note that setting wrap to true
		makes it impossible for the {@link FITTING_BOTH} fitting mode to operate in any logical
		manner. For this reason, when wrap is true, a {@link LayoutGroupComponent#widthFitting} or
		{@link LayoutGroupComponent#heightFitting} mode of {@link FITTING_BOTH} will be coerced to
		{@link FITTING_STRETCH}.
	**/
	var wrap : Bool;
	function _isSelfOrChild(entity:Dynamic):Bool;
	function _listenForReflowEvents(target:Dynamic, onOff:Dynamic):Void;
	function _onElementOrLayoutComponentAdd(entity:Dynamic):Void;
	function _onElementOrLayoutComponentRemove(entity:Dynamic):Void;
	function _onChildInsert(child:Dynamic):Void;
	function _onChildRemove(child:Dynamic):Void;
	function _scheduleReflow():Void;
	function reflow():Void;
	var _isPerformingReflow : Bool;
	function onRemove():Void;
	static var prototype : LayoutGroupComponent;
}