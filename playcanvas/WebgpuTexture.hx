package playcanvas;

/**
	A WebGPU implementation of the Texture.
**/
@jsInaccessible extern class WebgpuTexture {
	function new(texture:Dynamic);
	private var gpuTexture : Dynamic;
	private var view : Dynamic;
	/**
		An array of samplers, addressed by SAMPLETYPE_*** constant, allowing texture to be sampled
		using different samplers. Most textures are sampled as interpolated floats, but some can
		additionally be sampled using non-interpolated floats (raw data) or compare sampling
		(shadow maps).
	**/
	private var samplers : Dynamic;
	private var descr : Dynamic;
	private var format : Dynamic;
	var texture : Texture;
	function create(device:Dynamic):Void;
	function destroy(device:Dynamic):Void;
	function getView(device:Dynamic):Dynamic;
	function createView(viewDescr:Dynamic):Dynamic;
	function getSampler(device:Dynamic, ?sampleType:Float):Dynamic;
	function loseContext():Void;
	function uploadImmediate(device:WebgpuGraphicsDevice, texture:Texture):Void;
	function uploadData(device:WebgpuGraphicsDevice):Void;
	function isExternalImage(image:Dynamic):Bool;
	function uploadExternalImage(device:Dynamic, image:Dynamic, mipLevel:Dynamic, face:Dynamic):Void;
	function uploadTypedArrayData(wgpu:Dynamic, data:Dynamic):Void;
	static var prototype : WebgpuTexture;
}