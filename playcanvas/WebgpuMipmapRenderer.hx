package playcanvas;

/**
	A WebGPU helper class implementing texture mipmap generation.
**/
@jsInaccessible extern class WebgpuMipmapRenderer {
	function new(device:Dynamic);
	var device : WebgpuGraphicsDevice;
	var shader : Shader;
	var minSampler : Dynamic;
	/**
		Generates mipmaps for the specified WebGPU texture.
	**/
	function generate(webgpuTexture:WebgpuTexture):Void;
	static var prototype : WebgpuMipmapRenderer;
}