package playcanvas;

/**
	A WebGPU implementation of the BindGroupFormat, which is a wrapper over GPUBindGroupLayout.
**/
@jsInaccessible extern class WebgpuBindGroupFormat {
	function new(bindGroupFormat:BindGroupFormat);
	/**
		Unique key, used for caching
	**/
	var key : String;
	var descr : Dynamic;
	private var bindGroupLayout : Dynamic;
	function destroy():Void;
	function loseContext():Void;
	/**
		Returns texture binding slot.
	**/
	function getTextureSlot(bindGroupFormat:BindGroupFormat, index:Float):Float;
	function createDescriptor(bindGroupFormat:Dynamic):Dynamic;
	static var prototype : WebgpuBindGroupFormat;
}