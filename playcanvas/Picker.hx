package playcanvas;

/**
	Picker object used to select mesh instances from screen coordinates.
**/
@:jsRequire("playcanvas", "Picker") extern class Picker {
	/**
		Create a new Picker instance.
	**/
	function new(app:AppBase, width:Float, height:Float);
	var renderTarget : Dynamic;
	var app : AppBase;
	var device : GraphicsDevice;
	var pickColor : js.lib.Float32Array;
	var mapping : Array<Dynamic>;
	var cameraEntity : Entity;
	var layer : Layer;
	var layerComp : LayerComposition;
	var clearDepthCommand : Command;
	var width : Float;
	var height : Float;
	/**
		Return the list of mesh instances selected by the specified rectangle in the previously
		prepared pick buffer.The rectangle using top-left coordinate system.
	**/
	function getSelection(x:Float, y:Float, ?width:Float, ?height:Float):Array<MeshInstance>;
	function allocateRenderTarget():Void;
	function releaseRenderTarget():Void;
	function initLayerComposition():Void;
	/**
		Primes the pick buffer with a rendering of the specified models from the point of view of
		the supplied camera. Once the pick buffer has been prepared, {@link Picker#getSelection} can
		be called multiple times on the same picker object. Therefore, if the models or camera do
		not change in any way, {@link Picker#prepare} does not need to be called again.
	**/
	function prepare(camera:CameraComponent, scene:Scene, ?layers:Array<Layer>):Void;
	function updateCamera(srcCamera:Dynamic):Void;
	/**
		Sets the resolution of the pick buffer. The pick buffer resolution does not need to match
		the resolution of the corresponding frame buffer use for general rendering of the 3D scene.
		However, the lower the resolution of the pick buffer, the less accurate the selection
		results returned by {@link Picker#getSelection}. On the other hand, smaller pick buffers
		will yield greater performance, so there is a trade off.
	**/
	function resize(width:Float, height:Float):Void;
	static var prototype : Picker;
}