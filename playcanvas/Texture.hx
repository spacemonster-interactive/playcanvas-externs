package playcanvas;

/**
	A texture is a container for texel data that can be utilized in a fragment shader. Typically,
	the texel data represents an image that is mapped over geometry.
**/
@:jsRequire("playcanvas", "Texture") extern class Texture {
	/**
		Create a new Texture instance.
	**/
	function new(graphicsDevice:GraphicsDevice, ?options:{ @:optional var name : String; @:optional var width : Float; @:optional var height : Float; @:optional var depth : Float; @:optional var format : Float; @:optional var projection : String; @:optional var minFilter : Float; @:optional var magFilter : Float; @:optional var anisotropy : Float; @:optional var addressU : Float; @:optional var addressV : Float; @:optional var addressW : Float; @:optional var mipmaps : Bool; @:optional var cubemap : Bool; @:optional var volume : Bool; @:optional var type : String; @:optional var fixCubemapSeams : Bool; @:optional var flipY : Bool; @:optional var premultiplyAlpha : Bool; @:optional var compareOnRead : Bool; @:optional var compareFunc : Float; @:optional var levels : Array<js.lib.Uint8Array>; });
	/**
		The name of the texture.
	**/
	var name : String;
	private var _isRenderTarget : Bool;
	private var _gpuSize : Float;
	private var id : Float;
	private var _invalid : Bool;
	private var _lockedLevel : Float;
	var device : GraphicsDevice;
	var _width : Float;
	var _height : Float;
	var _format : Float;
	var _compressed : Bool;
	var _volume : Bool;
	var _depth : Float;
	var _cubemap : Bool;
	var fixCubemapSeams : Bool;
	var _flipY : Bool;
	var _premultiplyAlpha : Bool;
	var _mipmaps : Dynamic;
	var _minFilter : Float;
	var _magFilter : Float;
	var _anisotropy : Float;
	var _addressU : Float;
	var _addressV : Float;
	var _addressW : Float;
	var _compareOnRead : Bool;
	var _compareFunc : Float;
	var type : String;
	var projection : String;
	var profilerHint : Dynamic;
	var _levels : ts.AnyOf2<Array<Array<Dynamic>>, Array<js.lib.Uint8Array>>;
	var impl : Dynamic;
	/**
		Frees resources associated with this texture.
	**/
	function destroy():Void;
	/**
		Called when the rendering context was lost. It releases all context related resources.
	**/
	function loseContext():Void;
	/**
		Updates vram size tracking for the texture, size can be positive to add or negative to subtract
	**/
	function adjustVramSizeTracking(vram:Dynamic, size:Dynamic):Void;
	/**
		Returns number of required mip levels for the texture based on its dimensions and parameters.
	**/
	final requiredMipLevels : Float;
	/**
		The minification filter to be applied to the texture. Can be:
		
		- {@link FILTER_NEAREST}
		- {@link FILTER_LINEAR}
		- {@link FILTER_NEAREST_MIPMAP_NEAREST}
		- {@link FILTER_NEAREST_MIPMAP_LINEAR}
		- {@link FILTER_LINEAR_MIPMAP_NEAREST}
		- {@link FILTER_LINEAR_MIPMAP_LINEAR}
	**/
	var minFilter : Float;
	/**
		The magnification filter to be applied to the texture. Can be:
		
		- {@link FILTER_NEAREST}
		- {@link FILTER_LINEAR}
	**/
	var magFilter : Float;
	/**
		The addressing mode to be applied to the texture horizontally. Can be:
		
		- {@link ADDRESS_REPEAT}
		- {@link ADDRESS_CLAMP_TO_EDGE}
		- {@link ADDRESS_MIRRORED_REPEAT}
	**/
	var addressU : Float;
	/**
		The addressing mode to be applied to the texture vertically. Can be:
		
		- {@link ADDRESS_REPEAT}
		- {@link ADDRESS_CLAMP_TO_EDGE}
		- {@link ADDRESS_MIRRORED_REPEAT}
	**/
	var addressV : Float;
	/**
		The addressing mode to be applied to the 3D texture depth (WebGL2 only). Can be:
		
		- {@link ADDRESS_REPEAT}
		- {@link ADDRESS_CLAMP_TO_EDGE}
		- {@link ADDRESS_MIRRORED_REPEAT}
	**/
	var addressW : Float;
	/**
		When enabled, and if texture format is {@link PIXELFORMAT_DEPTH} or
		{@link PIXELFORMAT_DEPTHSTENCIL}, hardware PCF is enabled for this texture, and you can get
		filtered results of comparison using texture() in your shader (WebGL2 only).
	**/
	var compareOnRead : Bool;
	/**
		Comparison function when compareOnRead is enabled (WebGL2 only). Possible values:
		
		- {@link FUNC_LESS}
		- {@link FUNC_LESSEQUAL}
		- {@link FUNC_GREATER}
		- {@link FUNC_GREATEREQUAL}
		- {@link FUNC_EQUAL}
		- {@link FUNC_NOTEQUAL}
	**/
	var compareFunc : Float;
	/**
		Integer value specifying the level of anisotropic to apply to the texture ranging from 1 (no
		anisotropic filtering) to the {@link GraphicsDevice} property maxAnisotropy.
	**/
	var anisotropy : Float;
	/**
		Defines if texture should generate/upload mipmaps if possible.
	**/
	var mipmaps : Dynamic;
	var _needsMipmapsUpload : Dynamic;
	/**
		The width of the texture in pixels.
	**/
	final width : Float;
	/**
		The height of the texture in pixels.
	**/
	final height : Float;
	/**
		The number of depth slices in a 3D texture (WebGL2 only).
	**/
	final depth : Float;
	/**
		The pixel format of the texture. Can be:
		
		- {@link PIXELFORMAT_A8}
		- {@link PIXELFORMAT_L8}
		- {@link PIXELFORMAT_LA8}
		- {@link PIXELFORMAT_RGB565}
		- {@link PIXELFORMAT_RGBA5551}
		- {@link PIXELFORMAT_RGBA4}
		- {@link PIXELFORMAT_RGB8}
		- {@link PIXELFORMAT_RGBA8}
		- {@link PIXELFORMAT_DXT1}
		- {@link PIXELFORMAT_DXT3}
		- {@link PIXELFORMAT_DXT5}
		- {@link PIXELFORMAT_RGB16F}
		- {@link PIXELFORMAT_RGBA16F}
		- {@link PIXELFORMAT_RGB32F}
		- {@link PIXELFORMAT_RGBA32F}
		- {@link PIXELFORMAT_ETC1}
		- {@link PIXELFORMAT_PVRTC_2BPP_RGB_1}
		- {@link PIXELFORMAT_PVRTC_2BPP_RGBA_1}
		- {@link PIXELFORMAT_PVRTC_4BPP_RGB_1}
		- {@link PIXELFORMAT_PVRTC_4BPP_RGBA_1}
		- {@link PIXELFORMAT_111110F}
		- {@link PIXELFORMAT_ASTC_4x4}>/li>
		- {@link PIXELFORMAT_ATC_RGB}
		- {@link PIXELFORMAT_ATC_RGBA}
	**/
	final format : Float;
	/**
		Returns true if this texture is a cube map and false otherwise.
	**/
	final cubemap : Bool;
	final gpuSize : Float;
	/**
		Returns true if this texture is a 3D volume and false otherwise.
	**/
	final volume : Bool;
	/**
		Specifies whether the texture should be flipped in the Y-direction. Only affects textures
		with a source that is an image, canvas or video element. Does not affect cubemaps,
		compressed textures or textures set from raw pixel data. Defaults to true.
	**/
	var flipY : Bool;
	var _needsUpload : Bool;
	var premultiplyAlpha : Bool;
	/**
		Returns true if all dimensions of the texture are power of two, and false otherwise.
	**/
	final pot : Bool;
	final encoding : String;
	function dirtyAll():Void;
	var _levelsUpdated : ts.AnyOf2<Array<Bool>, Array<Array<Bool>>>;
	var _mipmapsUploaded : Bool;
	var _parameterFlags : Float;
	/**
		Locks a miplevel of the texture, returning a typed array to be filled with pixel data.
	**/
	function lock(?options:{ @:optional var level : Float; @:optional var face : Float; @:optional var mode : Float; }):ts.AnyOf3<js.lib.Float32Array, js.lib.Uint8Array, js.lib.Uint16Array>;
	/**
		Set the pixel data of the texture from a canvas, image, video DOM element. If the texture is
		a cubemap, the supplied source must be an array of 6 canvases, images or videos.
	**/
	function setSource(source:ts.AnyOf6<js.html.CanvasElement, js.html.ImageElement, js.html.VideoElement, Array<js.html.CanvasElement>, Array<js.html.ImageElement>, Array<js.html.VideoElement>>, ?mipLevel:Float):Void;
	/**
		Get the pixel data of the texture. If this is a cubemap then an array of 6 images will be
		returned otherwise a single image.
	**/
	function getSource(?mipLevel:Float):js.html.ImageElement;
	/**
		Unlocks the currently locked mip level and uploads it to VRAM.
	**/
	function unlock():Void;
	/**
		Forces a reupload of the textures pixel data to graphics memory. Ordinarily, this function
		is called by internally by {@link Texture#setSource} and {@link Texture#unlock}. However, it
		still needs to be called explicitly in the case where an HTMLVideoElement is set as the
		source of the texture.  Normally, this is done once every frame before video textured
		geometry is rendered.
	**/
	function upload():Void;
	/**
		Generate an in-memory DDS representation of this texture. Only works on RGBA8 textures.
		Currently, only used by the Editor to write prefiltered cubemaps to DDS format.
	**/
	function getDds():js.lib.ArrayBuffer;
	static var prototype : Texture;
	/**
		Calculate the GPU memory required for a texture.
	**/
	static function calcGpuSize(width:Float, height:Float, depth:Float, format:Float, mipmaps:Bool, cubemap:Bool):Float;
}