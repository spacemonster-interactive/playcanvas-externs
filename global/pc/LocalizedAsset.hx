package global.pc;

@:native("pc.LocalizedAsset") extern class LocalizedAsset extends EventHandler {
	function new(app:Dynamic);
	var _app : Dynamic;
	var _autoLoad : Bool;
	var _disableLocalization : Bool;
	var _defaultAsset : Dynamic;
	var _localizedAsset : Dynamic;
	var defaultAsset : Dynamic;
	var localizedAsset : Dynamic;
	var autoLoad : Bool;
	var disableLocalization : Bool;
	function _bindDefaultAsset():Void;
	function _unbindDefaultAsset():Void;
	function _onDefaultAssetAdd(asset:Dynamic):Void;
	function _onDefaultAssetRemove(asset:Dynamic):Void;
	function _bindLocalizedAsset():Void;
	function _unbindLocalizedAsset():Void;
	function _onLocalizedAssetAdd(asset:Dynamic):Void;
	function _onLocalizedAssetLoad(asset:Dynamic):Void;
	function _onLocalizedAssetChange(asset:Dynamic, name:Dynamic, newValue:Dynamic, oldValue:Dynamic):Void;
	function _onLocalizedAssetRemove(asset:Dynamic):Void;
	function _onLocaleAdd(locale:Dynamic, assetId:Dynamic):Void;
	function _onLocaleRemove(locale:Dynamic, assetId:Dynamic):Void;
	function _onSetLocale(locale:Dynamic):Void;
	function destroy():Void;
	static var prototype : LocalizedAsset;
}