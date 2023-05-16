package global.pc;

/**
	An object that manages the case where an object holds a reference to an asset and needs to be
	notified when changes occur in the asset. e.g. notifications include load, add and remove
	events.
**/
@:native("pc.AssetReference") extern class AssetReference {
	/**
		Create a new AssetReference instance.
	**/
	function new(propertyName:String, parent:ts.AnyOf2<Dynamic, Asset>, registry:AssetRegistry, callbacks:{ @:optional var load : Dynamic; @:optional var add : Dynamic; @:optional var remove : Dynamic; @:optional var unload : Dynamic; }, ?scope:Dynamic);
	var propertyName : String;
	var parent : Dynamic;
	var _scope : Dynamic;
	var _registry : AssetRegistry;
	/**
		Get or set the asset id which this references. One of either id or url must be set to
		initialize an asset reference.
	**/
	var id : Dynamic;
	/**
		Get or set the asset url which this references. One of either id or url must be called to
		initialize an asset reference.
	**/
	var url : Dynamic;
	var asset : Dynamic;
	var _onAssetLoad : Dynamic;
	var _onAssetAdd : Dynamic;
	var _onAssetRemove : Dynamic;
	var _onAssetUnload : Dynamic;
	var _id : Dynamic;
	var _url : Dynamic;
	function _bind():Void;
	function _unbind():Void;
	function _onLoad(asset:Dynamic):Void;
	function _onAdd(asset:Dynamic):Void;
	function _onRemove(asset:Dynamic):Void;
	function _onUnload(asset:Dynamic):Void;
	static var prototype : AssetReference;
}