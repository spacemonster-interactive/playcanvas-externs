package playcanvas;

/**
	ElementComponents are used to construct user interfaces. An ElementComponent's [type](#type)
	property can be configured in 3 main ways: as a text element, as an image element or as a group
	element. If the ElementComponent has a {@link ScreenComponent} ancestor in the hierarchy, it
	will be transformed with respect to the coordinate system of the screen. If there is no
	{@link ScreenComponent} ancestor, the ElementComponent will be transformed like any other
	entity.
	
	You should never need to use the ElementComponent constructor. To add an ElementComponent to a
	{@link Entity}, use {@link Entity#addComponent}:
	
	```javascript
	// Add an element component to an entity with the default options
	let entity = pc.Entity();
	entity.addComponent("element"); // This defaults to a 'group' element
	```
	
	To create a simple text-based element:
	
	```javascript
	entity.addComponent("element", {
	     anchor: new pc.Vec4(0.5, 0.5, 0.5, 0.5), // centered anchor
	     fontAsset: fontAsset,
	     fontSize: 128,
	     pivot: new pc.Vec2(0.5, 0.5),            // centered pivot
	     text: "Hello World!",
	     type: pc.ELEMENTTYPE_TEXT
	});
	```
	
	Once the ElementComponent is added to the entity, you can set and get any of its properties:
	
	```javascript
	entity.element.color = pc.Color.RED; // Set the element's color to red
	
	console.log(entity.element.color);   // Get the element's color and print it
	```
	
	Relevant 'Engine-only' examples:
	- [Basic text rendering](http://playcanvas.github.io/#user-interface/text-basic)
	- [Rendering text outlines](http://playcanvas.github.io/#user-interface/text-outline)
	- [Adding drop shadows to text](http://playcanvas.github.io/#user-interface/text-drop-shadow)
	- [Coloring text with markup](http://playcanvas.github.io/#user-interface/text-markup)
	- [Wrapping text](http://playcanvas.github.io/#user-interface/text-wrap)
	- [Typewriter text](http://playcanvas.github.io/#user-interface/text-typewriter)
**/
@:jsRequire("playcanvas", "ElementComponent") extern class ElementComponent extends Component {
	/**
		Create a new ElementComponent instance.
	**/
	function new(system:ElementComponentSystem, entity:Entity);
	var alignment : Vec2;
	var autoFitHeight : Bool;
	var autoFitWidth : Bool;
	var autoHeight : Bool;
	var autoWidth : Bool;
	var color : Color;
	var enableMarkup : Bool;
	var font : ts.AnyOf2<CanvasFont, Font>;
	var fontAsset : Float;
	var fontSize : Float;
	var key : String;
	var lineHeight : Float;
	var mask : Bool;
	var material : Material;
	var materialAsset : Float;
	var maxFontSize : Float;
	var maxLines : Float;
	var minFontSize : Float;
	var opacity : Float;
	var outlineColor : Color;
	var outlineThickness : Float;
	var pixelsPerUnit : Float;
	var rangeEnd : Float;
	var rangeStart : Float;
	var rect : Vec4;
	var rtlReorder : Bool;
	var shadowColor : Color;
	var shadowOffset : Float;
	var spacing : Float;
	var sprite : Sprite;
	var spriteAsset : Float;
	var spriteFrame : Float;
	var text : String;
	var texture : Texture;
	var textureAsset : Float;
	var unicodeConverter : Bool;
	var wrapLines : Bool;
	var _beingInitialized : Bool;
	var _anchor : Vec4;
	var _localAnchor : Vec4;
	var _pivot : Vec2;
	var _width : Float;
	var _calculatedWidth : Float;
	var _height : Float;
	var _calculatedHeight : Float;
	var _margin : Vec4;
	var _modelTransform : Mat4;
	var _screenToWorld : Mat4;
	var _anchorTransform : Mat4;
	var _anchorDirty : Bool;
	var _parentWorldTransform : Mat4;
	var _screenTransform : Mat4;
	var _screenCorners : Array<Vec3>;
	var _canvasCorners : Array<Vec2>;
	var _worldCorners : Array<Vec3>;
	var _cornersDirty : Bool;
	var _canvasCornersDirty : Bool;
	var _worldCornersDirty : Bool;
	/**
		The Entity with a {@link ScreenComponent} that this component belongs to. This is
		automatically set when the component is a child of a ScreenComponent.
	**/
	var screen : Null<Entity>;
	var _type : String;
	var _image : ImageElement;
	var _text : TextElement;
	var _group : Dynamic;
	var _drawOrder : Float;
	var _fitMode : String;
	var _useInput : Bool;
	var _layers : Array<Float>;
	var _addedModels : Array<Dynamic>;
	var _batchGroupId : Float;
	var _batchGroup : Dynamic;
	var _offsetReadAt : Float;
	var _maskOffset : Float;
	var _maskedBy : Dynamic;
	/**
		Fired when a touch is canceled on the component. Only fired when useInput is true.
	**/
	final _absLeft : Float;
	final _absRight : Float;
	final _absTop : Float;
	final _absBottom : Float;
	final _hasSplitAnchorsX : Bool;
	final _hasSplitAnchorsY : Bool;
	final aabb : Dynamic;
	/**
		Specifies where the left, bottom, right and top edges of the component are anchored relative
		to its parent. Each value ranges from 0 to 1. e.g. a value of [0, 0, 0, 0] means that the
		element will be anchored to the bottom left of its parent. A value of [1, 1, 1, 1] means it
		will be anchored to the top right. A split anchor is when the left-right or top-bottom pairs
		of the anchor are not equal. In that case the component will be resized to cover that entire
		area. e.g. a value of [0, 0, 1, 1] will make the component resize exactly as its parent.
	**/
	var anchor : Vec4;
	/**
		Assign element to a specific batch group (see {@link BatchGroup}). Default is -1 (no group).
	**/
	var batchGroupId : Float;
	/**
		The distance from the bottom edge of the anchor. Can be used in combination with a split
		anchor to make the component's top edge always be 'top' units away from the top.
	**/
	var bottom : Float;
	/**
		The width at which the element will be rendered. In most cases this will be the same as
		`width`. However, in some cases the engine may calculate a different width for the element,
		such as when the element is under the control of a {@link LayoutGroupComponent}. In these
		scenarios, `calculatedWidth` may be smaller or larger than the width that was set in the
		editor.
	**/
	var calculatedWidth : Float;
	/**
		The height at which the element will be rendered. In most cases this will be the same as
		`height`. However, in some cases the engine may calculate a different height for the element,
		such as when the element is under the control of a {@link LayoutGroupComponent}. In these
		scenarios, `calculatedHeight` may be smaller or larger than the height that was set in the
		editor.
	**/
	var calculatedHeight : Float;
	/**
		An array of 4 {@link Vec2}s that represent the bottom left, bottom right, top right and top
		left corners of the component in canvas pixels. Only works for screen space element
		components.
	**/
	final canvasCorners : Array<Vec2>;
	/**
		The draw order of the component. A higher value means that the component will be rendered on
		top of other components.
	**/
	var drawOrder : Float;
	/**
		The height of the element as set in the editor. Note that in some cases this may not reflect
		the true height at which the element is rendered, such as when the element is under the
		control of a {@link LayoutGroupComponent}. See `calculatedHeight` in order to ensure you are
		reading the true height at which the element will be rendered.
	**/
	var height : Float;
	/**
		An array of layer IDs ({@link Layer#id}) to which this element should belong. Don't push,
		pop, splice or modify this array, if you want to change it - set a new one instead.
	**/
	var layers : Array<Float>;
	/**
		The distance from the left edge of the anchor. Can be used in combination with a split
		anchor to make the component's left edge always be 'left' units away from the left.
	**/
	var left : Float;
	/**
		The distance from the left, bottom, right and top edges of the anchor. For example if we are
		using a split anchor like [0,0,1,1] and the margin is [0,0,0,0] then the component will be
		the same width and height as its parent.
	**/
	var margin : Vec4;
	/**
		Get the entity that is currently masking this element.
	**/
	private final maskedBy : Dynamic;
	/**
		The position of the pivot of the component relative to its anchor. Each value ranges from 0
		to 1 where [0,0] is the bottom left and [1,1] is the top right.
	**/
	var pivot : Vec2;
	/**
		The distance from the right edge of the anchor. Can be used in combination with a split
		anchor to make the component's right edge always be 'right' units away from the right.
	**/
	var right : Float;
	/**
		An array of 4 {@link Vec3}s that represent the bottom left, bottom right, top right and top
		left corners of the component relative to its parent {@link ScreenComponent}.
	**/
	final screenCorners : Array<Vec3>;
	/**
		The width of the text rendered by the component. Only works for {@link ELEMENTTYPE_TEXT} types.
	**/
	final textWidth : Float;
	/**
		The height of the text rendered by the component. Only works for {@link ELEMENTTYPE_TEXT} types.
	**/
	final textHeight : Float;
	/**
		The distance from the top edge of the anchor. Can be used in combination with a split anchor
		to make the component's bottom edge always be 'bottom' units away from the bottom.
	**/
	var top : Float;
	/**
		The type of the ElementComponent. Can be:
		
		- {@link ELEMENTTYPE_GROUP}: The component can be used as a layout mechanism to create groups of
		ElementComponents e.g. panels.
		- {@link ELEMENTTYPE_IMAGE}: The component will render an image
		- {@link ELEMENTTYPE_TEXT}: The component will render text
	**/
	var type : String;
	/**
		If true then the component will receive Mouse or Touch input events.
	**/
	var useInput : Bool;
	/**
		Set how the content should be fitted and preserve the aspect ratio of the source texture or sprite.
		Only works for {@link ELEMENTTYPE_IMAGE} types. Can be:
		
		- {@link FITMODE_STRETCH}: Fit the content exactly to Element's bounding box.
		- {@link FITMODE_CONTAIN}: Fit the content within the Element's bounding box while preserving its Aspect Ratio.
		- {@link FITMODE_COVER}: Fit the content to cover the entire Element's bounding box while preserving its Aspect Ratio.
	**/
	var fitMode : String;
	/**
		The width of the element as set in the editor. Note that in some cases this may not reflect
		the true width at which the element is rendered, such as when the element is under the
		control of a {@link LayoutGroupComponent}. See `calculatedWidth` in order to ensure you are
		reading the true width at which the element will be rendered.
	**/
	var width : Float;
	/**
		An array of 4 {@link Vec3}s that represent the bottom left, bottom right, top right and top
		left corners of the component in world space. Only works for 3D element components.
	**/
	final worldCorners : Array<Vec3>;
	function _patch():Void;
	function _unpatch():Void;
	/**
		Patched method for setting the position.
	**/
	private var _setPosition : Dynamic;
	/**
		Patched method for setting the local position.
	**/
	private var _setLocalPosition : Dynamic;
	function _sync():Dynamic;
	var _dirtyLocal : Bool;
	var _dirtyWorld : Bool;
	function _onInsert(parent:Dynamic):Void;
	function _dirtifyMask():Void;
	function _onPrerender():Void;
	function _bindScreen(screen:Dynamic):Void;
	function _unbindScreen(screen:Dynamic):Void;
	function _updateScreen(screen:Dynamic):Void;
	function syncMask(depth:Dynamic):Void;
	function _setMaskedBy(mask:Dynamic):Void;
	function _updateMask(currentMask:Dynamic, depth:Dynamic):Void;
	function _parseUpToScreen():{
		var screen : Dynamic;
		var mask : Dynamic;
	};
	function _onScreenResize(res:Dynamic):Void;
	function _onScreenSpaceChange():Void;
	function _onScreenRemove():Void;
	function _calculateLocalAnchors():Void;
	function getOffsetPosition(x:Dynamic, y:Dynamic):Vec3;
	function onLayersChanged(oldComp:Dynamic, newComp:Dynamic):Void;
	function onLayerAdded(layer:Dynamic):Void;
	function onLayerRemoved(layer:Dynamic):Void;
	function onRemove():Void;
	/**
		Recalculates these properties:
		   - `_localAnchor`
		   - `width`
		   - `height`
		   - Local position is updated if anchors are split
		
		Assumes these properties are up to date:
		   - `_margin`
	**/
	private var _calculateSize : Dynamic;
	var _sizeDirty : Bool;
	/**
		Internal set width without updating margin.
	**/
	private var _setWidth : Dynamic;
	/**
		Internal set height without updating margin.
	**/
	private var _setHeight : Dynamic;
	/**
		This method sets the calculated width value and optionally updates the margins.
	**/
	private var _setCalculatedWidth : Dynamic;
	/**
		This method sets the calculated height value and optionally updates the margins.
	**/
	private var _setCalculatedHeight : Dynamic;
	function _flagChildrenAsDirty():Void;
	function addModelToLayers(model:Dynamic):Void;
	function removeModelFromLayers(model:Dynamic):Void;
	function getMaskOffset():Float;
	function isVisibleForCamera(camera:Dynamic):Bool;
	function _isScreenSpace():Bool;
	function _isScreenCulled():Bool;
	function _dirtyBatch():Void;
	static var prototype : ElementComponent;
}