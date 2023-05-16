package playcanvas;

/**
	Callback used by {@link SceneRegistryloadSceneData }.
**/
typedef LoadSceneDataCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, sceneItem:SceneRegistryItem) -> Dynamic>;