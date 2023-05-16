package playcanvas;

/**
	A ScreenComponent enables the Entity to render child {@link ElementComponent}s using anchors and
	positions in the ScreenComponent's space.
**/
@:jsRequire("playcanvas", "ScreenComponent") extern class ScreenComponent extends Component {
	/**
		Create a new ScreenComponent.
	**/
	function new(system:ScreenComponentSystem, entity:Entity);
	var _resolution : Vec2;
	var _referenceResolution : Vec2;
	var _scaleMode : String;
	var scale : Float;
	var _scaleBlend : Float;
	var _priority : Float;
	var _screenSpace : Bool;
	/**
		If true then elements inside this screen will be not be rendered when outside of the
		screen (only valid when screenSpace is true).
	**/
	var cull : Bool;
	var _screenMatrix : Mat4;
	var _elements : js.lib.Set<Dynamic>;
	/**
		Set the drawOrder of each child {@link ElementComponent} so that ElementComponents which are
		last in the hierarchy are rendered on top. Draw Order sync is queued and will be updated by
		the next update loop.
	**/
	function syncDrawOrder():Void;
	function _recurseDrawOrderSync(e:Dynamic, i:Dynamic):Dynamic;
	function _processDrawOrderSync():Void;
	function _calcProjectionMatrix():Void;
	function _updateScale():Void;
	function _calcScale(resolution:Dynamic, referenceResolution:Dynamic):Float;
	function _onResize(width:Dynamic, height:Dynamic):Void;
	/**
		The width and height of the ScreenComponent. When screenSpace is true the resolution will
		always be equal to {@link GraphicsDevice#width} x {@link GraphicsDevice#height}.
	**/
	var resolution : Vec2;
	function _bindElement(element:Dynamic):Void;
	function _unbindElement(element:Dynamic):Void;
	function onRemove():Void;
	/**
		The resolution that the ScreenComponent is designed for. This is only taken into account
		when screenSpace is true and scaleMode is {@link SCALEMODE_BLEND}. If the actual resolution
		is different then the ScreenComponent will be scaled according to the scaleBlend value.
	**/
	var referenceResolution : Vec2;
	/**
		If true then the ScreenComponent will render its child {@link ElementComponent}s in screen
		space instead of world space. Enable this to create 2D user interfaces.
	**/
	var screenSpace : Bool;
	/**
		Can either be {@link SCALEMODE_NONE} or {@link SCALEMODE_BLEND}. See the description of
		referenceResolution for more information.
	**/
	var scaleMode : String;
	/**
		A value between 0 and 1 that is used when scaleMode is equal to {@link SCALEMODE_BLEND}.
		Scales the ScreenComponent with width as a reference (when value is 0), the height as a
		reference (when value is 1) or anything in between.
	**/
	var scaleBlend : Float;
	/**
		Priority determines the order in which Screen components in the same layer are rendered.
		Number must be an integer between 0 and 255. Priority is set into the top 8 bits of the
		drawOrder property in an element.
	**/
	var priority : Float;
	static var prototype : ScreenComponent;
}