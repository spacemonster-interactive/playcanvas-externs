package playcanvas;

@jsInaccessible extern class ShadowRendererDirectional {
	function new(renderer:Dynamic, shadowRenderer:Dynamic);
	var renderer : Renderer;
	var shadowRenderer : ShadowRenderer;
	var device : GraphicsDevice;
	function cull(light:Dynamic, drawCalls:Dynamic, camera:Dynamic):Void;
	function generateSplitDistances(light:Dynamic, nearDist:Dynamic, farDist:Dynamic):Void;
	function addLightRenderPasses(frameGraph:Dynamic, light:Dynamic, camera:Dynamic):Void;
	/**
		Builds a frame graph for rendering of directional shadows for the render action.
	**/
	function buildFrameGraph(frameGraph:FrameGraph, renderAction:RenderAction, camera:CameraComponent):Void;
	static var prototype : ShadowRendererDirectional;
}