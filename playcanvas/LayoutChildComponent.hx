package playcanvas;

/**
	A LayoutChildComponent enables the Entity to control the sizing applied to it by its parent
	{@link LayoutGroupComponent}.
**/
@:jsRequire("playcanvas", "LayoutChildComponent") extern class LayoutChildComponent extends Component {
	/**
		Create a new LayoutChildComponent.
	**/
	function new(system:LayoutChildComponentSystem, entity:Entity);
	private var _minWidth : Dynamic;
	private var _minHeight : Dynamic;
	private var _maxWidth : Dynamic;
	private var _maxHeight : Dynamic;
	private var _fitWidthProportion : Dynamic;
	private var _fitHeightProportion : Dynamic;
	private var _excludeFromLayout : Dynamic;
	/**
		The minimum width the element should be rendered at.
	**/
	var minWidth : Float;
	/**
		The minimum height the element should be rendered at.
	**/
	var minHeight : Float;
	/**
		The maximum width the element should be rendered at.
	**/
	var maxWidth : Dynamic;
	/**
		The maximum height the element should be rendered at.
	**/
	var maxHeight : Dynamic;
	/**
		The amount of additional horizontal space that the element should take up, if necessary to
		satisfy a Stretch/Shrink fitting calculation. This is specified as a proportion, taking into
		account the proportion values of other siblings.
	**/
	var fitWidthProportion : Float;
	/**
		The amount of additional vertical space that the element should take up, if necessary to
		satisfy a Stretch/Shrink fitting calculation. This is specified as a proportion, taking into
		account the proportion values of other siblings.
	**/
	var fitHeightProportion : Float;
	/**
		If set to true, the child will be excluded from all layout calculations.
	**/
	var excludeFromLayout : Bool;
	static var prototype : LayoutChildComponent;
}