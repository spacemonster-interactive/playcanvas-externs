package playcanvas;

@jsInaccessible extern class GlbContainerParser {
	function new(device:Dynamic, assets:Dynamic, maxRetries:Dynamic);
	var _device : Dynamic;
	var _assets : Dynamic;
	var _defaultMaterial : StandardMaterial;
	var maxRetries : Dynamic;
	function _getUrlWithoutParams(url:Dynamic):Dynamic;
	function load(url:Dynamic, callback:Dynamic, asset:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic, asset:Dynamic):Dynamic;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	static var prototype : GlbContainerParser;
}