package global.pc;

/**
	Callback used by {@link AssetRegistryloadFromUrl } and called when an asset is loaded (or an
	error occurs).
**/
typedef LoadAssetCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, asset:Asset) -> Dynamic>;