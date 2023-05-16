package playcanvas;

/**
	Callback used by {@link SceneRegistrychangeScene }.
**/
typedef ChangeSceneCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, entity:Entity) -> Dynamic>;