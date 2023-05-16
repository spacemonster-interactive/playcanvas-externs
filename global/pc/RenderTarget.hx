package global.pc;

/**
	A render target is a rectangular rendering surface.
**/
@:native("pc.RenderTarget") extern class RenderTarget {
	/**
		Creates a new RenderTarget instance. A color buffer or a depth buffer must be set.
	**/
	function new(?options:{ @:optional var autoResolve : Bool; @:optional var colorBuffer : Texture; @:optional var depth : Bool; @:optional var depthBuffer : Texture; @:optional var face : Float; @:optional var flipY : Bool; @:optional var name : String; @:optional var samples : Float; @:optional var stencil : Bool; }, args:haxe.extern.Rest<Dynamic>);
	var id : Float;
	var _colorBuffer : Dynamic;
	var _depthBuffer : Texture;
	var _face : Float;
	var _depth : Bool;
	var _stencil : Bool;
	var _device : Dynamic;
	var _samples : Dynamic;
	var autoResolve : Bool;
	var name : Dynamic;
	var flipY : Bool;
	var impl : Dynamic;
	/**
		Frees resources associated with this render target.
	**/
	function destroy():Void;
	/**
		Free device resources associated with this render target.
	**/
	function destroyFrameBuffers():Void;
	/**
		Free textures associated with this render target.
	**/
	function destroyTextureBuffers():Void;
	/**
		Initializes the resources associated with this render target.
	**/
	function init():Void;
	final initialized : Dynamic;
	/**
		Called when the device context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		If samples > 1, resolves the anti-aliased render target (WebGL2 only). When you're rendering
		to an anti-aliased render target, pixels aren't written directly to the readable texture.
		Instead, they're first written to a MSAA buffer, where each sample for each pixel is stored
		independently. In order to read the results, you first need to 'resolve' the buffer - to
		average all samples and create a simple texture with one color per pixel. This function
		performs this averaging and updates the colorBuffer and the depthBuffer. If autoResolve is
		set to true, the resolve will happen after every rendering to this render target, otherwise
		you can do it manually, during the app update or inside a {@link Command}.
	**/
	function resolve(?color:Bool, ?depth:Bool):Void;
	/**
		Copies color and/or depth contents of source render target to this one. Formats, sizes and
		anti-aliasing samples must match. Depth buffer can only be copied on WebGL 2.0.
	**/
	function copy(source:RenderTarget, ?color:Bool, ?depth:Bool):Bool;
	/**
		Number of antialiasing samples the render target uses.
	**/
	final samples : Float;
	/**
		True if the render target contains the depth attachment.
	**/
	final depth : Bool;
	/**
		True if the render target contains the stencil attachment.
	**/
	final stencil : Bool;
	/**
		Color buffer set up on the render target.
	**/
	final colorBuffer : Texture;
	/**
		Depth buffer set up on the render target. Only available, if depthBuffer was set in
		constructor. Not available if depth property was used instead.
	**/
	final depthBuffer : Texture;
	/**
		If the render target is bound to a cubemap, this property specifies which face of the
		cubemap is rendered to. Can be:
		
		- {@link CUBEFACE_POSX}
		- {@link CUBEFACE_NEGX}
		- {@link CUBEFACE_POSY}
		- {@link CUBEFACE_NEGY}
		- {@link CUBEFACE_POSZ}
		- {@link CUBEFACE_NEGZ}
	**/
	final face : Float;
	/**
		Width of the render target in pixels.
	**/
	final width : Float;
	/**
		Height of the render target in pixels.
	**/
	final height : Float;
	static var prototype : RenderTarget;
}