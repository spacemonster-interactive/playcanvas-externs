package playcanvas;

/**
	Resource handler used for loading {@link Material} resources.
**/
@:jsRequire("playcanvas", "MaterialHandler") extern class MaterialHandler {
	/**
		Create a new MaterialHandler instance.
	**/
	function new(app:AppBase);
	/**
		Type of the resource the handler handles.
	**/
	var handlerType : String;
	var _assets : AssetRegistry;
	var _device : GraphicsDevice;
	var _placeholderTextures : { };
	var _parser : JsonStandardMaterialParser;
	var maxRetries : Float;
	function load(url:Dynamic, callback:Dynamic):Void;
	function open(url:Dynamic, data:Dynamic):StandardMaterial;
	function _createPlaceholders():Void;
	function patch(asset:Dynamic, assets:Dynamic):Void;
	function _onAssetUnload(asset:Dynamic):Void;
	function _assignTexture(parameterName:Dynamic, materialAsset:Dynamic, texture:Dynamic):Void;
	function _getPlaceholderTexture(parameterName:Dynamic):Dynamic;
	function _assignPlaceholderTexture(parameterName:Dynamic, materialAsset:Dynamic):Void;
	function _onTextureLoad(parameterName:Dynamic, materialAsset:Dynamic, textureAsset:Dynamic):Void;
	function _onTextureAdd(parameterName:Dynamic, materialAsset:Dynamic, textureAsset:Dynamic):Void;
	function _onTextureRemoveOrUnload(parameterName:Dynamic, materialAsset:Dynamic, textureAsset:Dynamic):Void;
	function _assignCubemap(parameterName:Dynamic, materialAsset:Dynamic, textures:Dynamic):Void;
	function _onCubemapLoad(parameterName:Dynamic, materialAsset:Dynamic, cubemapAsset:Dynamic):Void;
	function _onCubemapAdd(parameterName:Dynamic, materialAsset:Dynamic, cubemapAsset:Dynamic):Void;
	function _onCubemapRemoveOrUnload(parameterName:Dynamic, materialAsset:Dynamic, cubemapAsset:Dynamic):Void;
	function _bindAndAssignAssets(materialAsset:Dynamic, assets:Dynamic):Void;
	static var prototype : MaterialHandler;
}