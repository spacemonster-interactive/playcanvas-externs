package playcanvas;

/**
	A WebGPU implementation of the BindGroup, which is a wrapper over GPUBindGroup.
**/
@jsInaccessible extern class WebgpuBindGroup {
	function new();
	private var bindGroup : Dynamic;
	function update(bindGroup:Dynamic):Void;
	function destroy():Void;
	/**
		Creates a bind group descriptor in WebGPU format
	**/
	function createDescriptor(device:WebgpuGraphicsDevice, bindGroup:BindGroup):Dynamic;
	var debugFormat : String;
	static var prototype : WebgpuBindGroup;
}