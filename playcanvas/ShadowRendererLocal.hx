package playcanvas;

@jsInaccessible extern class ShadowRendererLocal {
	function new(renderer:Dynamic, shadowRenderer:Dynamic);
	var shadowLights : Array<Dynamic>;
	var renderer : Renderer;
	var shadowRenderer : ShadowRenderer;
	var device : GraphicsDevice;
	function cull(light:Dynamic, drawCalls:Dynamic):Void;
	function prepareLights(shadowLights:Dynamic, lights:Dynamic):Dynamic;
	/**
		Prepare render pass for rendering of shadows for local clustered lights. This is done inside
		a single render pass, as all shadows are part of a single render target atlas.
	**/
	function prepareClusteredRenderPass(renderPass:Dynamic, lightsSpot:Dynamic, lightsOmni:Dynamic):Void;
	function setupNonClusteredFaceRenderPass(frameGraph:Dynamic, light:Dynamic, face:Dynamic, applyVsm:Dynamic):Void;
	/**
		Prepare render passes for rendering of shadows for local non-clustered lights. Each shadow face
		is a separate render pass as it renders to a separate render target.
	**/
	function buildNonClusteredRenderPasses(frameGraph:Dynamic, lightsSpot:Dynamic, lightsOmni:Dynamic):Void;
	static var prototype : ShadowRendererLocal;
}