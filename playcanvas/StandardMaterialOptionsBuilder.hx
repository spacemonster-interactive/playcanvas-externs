package playcanvas;

@jsInaccessible extern class StandardMaterialOptionsBuilder {
	function new();
	var _mapXForms : Array<Dynamic>;
	function updateMinRef(options:Dynamic, scene:Dynamic, stdMat:Dynamic, objDefs:Dynamic, staticLightList:Dynamic, pass:Dynamic, sortedLights:Dynamic):Void;
	function updateRef(options:Dynamic, scene:Dynamic, stdMat:Dynamic, objDefs:Dynamic, staticLightList:Dynamic, pass:Dynamic, sortedLights:Dynamic):Void;
	function _updateSharedOptions(options:Dynamic, scene:Dynamic, stdMat:Dynamic, objDefs:Dynamic, pass:Dynamic):Void;
	function _updateUVOptions(options:Dynamic, stdMat:Dynamic, objDefs:Dynamic, minimalOptions:Dynamic):Void;
	function _updateTexOptions(options:Dynamic, stdMat:Dynamic, p:Dynamic, hasUv0:Dynamic, hasUv1:Dynamic, hasVcolor:Dynamic, minimalOptions:Dynamic, uniqueTextureMap:Dynamic):Void;
	function _updateMinOptions(options:Dynamic, stdMat:Dynamic):Void;
	function _updateMaterialOptions(options:Dynamic, stdMat:Dynamic):Void;
	function _updateEnvOptions(options:Dynamic, stdMat:Dynamic, scene:Dynamic):Void;
	function _updateLightOptions(options:Dynamic, scene:Dynamic, stdMat:Dynamic, objDefs:Dynamic, sortedLights:Dynamic, staticLightList:Dynamic):Void;
	function _collectLights(lType:Dynamic, lights:Dynamic, lightsFiltered:Dynamic, mask:Dynamic, staticLightList:Dynamic):Void;
	function _getMapTransformID(xform:Dynamic, uv:Dynamic):Dynamic;
	static var prototype : StandardMaterialOptionsBuilder;
}