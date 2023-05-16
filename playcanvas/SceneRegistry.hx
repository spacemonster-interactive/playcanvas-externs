package playcanvas;

/**
	Container for storing and loading of scenes. An instance of the registry is created on the
	{@link AppBase} object as {@link AppBase#scenes}.
**/
@:jsRequire("playcanvas", "SceneRegistry") extern class SceneRegistry {
	/**
		Create a new SceneRegistry instance.
	**/
	function new(app:AppBase);
	var _app : AppBase;
	var _list : Array<Dynamic>;
	var _index : { };
	var _urlIndex : { };
	function destroy():Void;
	/**
		Return the list of scene.
	**/
	function list():Array<SceneRegistryItem>;
	/**
		Add a new item to the scene registry.
	**/
	function add(name:String, url:String):Bool;
	/**
		Find a Scene by name and return the {@link SceneRegistryItem}.
	**/
	function find(name:String):Null<SceneRegistryItem>;
	/**
		Find a scene by the URL and return the {@link SceneRegistryItem}.
	**/
	function findByUrl(url:String):Null<SceneRegistryItem>;
	/**
		Remove an item from the scene registry.
	**/
	function remove(name:String):Void;
	function _loadSceneData(sceneItem:Dynamic, storeInCache:Dynamic, callback:Dynamic):Void;
	/**
		Loads and stores the scene data to reduce the number of the network requests when the same
		scenes are loaded multiple times. Can also be used to load data before calling
		{@link SceneRegistry#loadSceneHierarchy} and {@link SceneRegistry#loadSceneSettings} to make
		scene loading quicker for the user.
	**/
	function loadSceneData(sceneItem:ts.AnyOf2<String, SceneRegistryItem>, callback:LoadSceneDataCallback):Void;
	/**
		Unloads scene data that has been loaded previously using {@link SceneRegistry#loadSceneData}.
	**/
	function unloadSceneData(sceneItem:ts.AnyOf2<String, SceneRegistryItem>):Void;
	function _loadSceneHierarchy(sceneItem:Dynamic, onBeforeAddHierarchy:Dynamic, callback:Dynamic):Void;
	/**
		Load a scene file, create and initialize the Entity hierarchy and add the hierarchy to the
		application root Entity.
	**/
	function loadSceneHierarchy(sceneItem:ts.AnyOf2<String, SceneRegistryItem>, callback:LoadHierarchyCallback):Void;
	/**
		Load a scene file and apply the scene settings to the current scene.
	**/
	function loadSceneSettings(sceneItem:ts.AnyOf2<String, SceneRegistryItem>, callback:LoadSettingsCallback):Void;
	/**
		Change to a new scene. Calling this function will load the scene data, delete all
		entities and graph nodes under `app.root` and load the scene settings and hierarchy.
	**/
	function changeScene(sceneItem:ts.AnyOf2<String, SceneRegistryItem>, ?callback:ChangeSceneCallback):Void;
	/**
		Load the scene hierarchy and scene settings. This is an internal method used by the
		{@link AppBase}.
	**/
	function loadScene(url:String, callback:LoadSceneCallback):Void;
	static var prototype : SceneRegistry;
}