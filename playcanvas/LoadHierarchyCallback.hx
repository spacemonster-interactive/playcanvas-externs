package playcanvas;

/**
	Callback used by {@link SceneRegistryloadSceneHierarchy }.
**/
typedef LoadHierarchyCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, entity:Entity) -> Dynamic>;