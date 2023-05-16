package global.pc;

/**
	Callback used by {@link SceneRegistryloadScene }.
**/
typedef LoadSceneCallback = ts.AnyOf2<(err:Null<String>) -> Dynamic, (err:Null<String>, entity:Entity) -> Dynamic>;