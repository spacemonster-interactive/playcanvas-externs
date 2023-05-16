package global.pc;

/**
	Item to be stored in the {@link SceneRegistry}.
**/
@:native("pc.SceneRegistryItem") extern class SceneRegistryItem {
	/**
		Creates a new SceneRegistryItem instance.
	**/
	function new(name:String, url:String);
	/**
		The name of the scene.
	**/
	var name : String;
	/**
		The url of the scene file.
	**/
	var url : String;
	var data : Dynamic;
	var _loading : Bool;
	var _onLoadedCallbacks : Array<Dynamic>;
	/**
		Returns true if the scene data has loaded.
	**/
	final loaded : Bool;
	/**
		Returns true if the scene data is still being loaded.
	**/
	final loading : Bool;
	static var prototype : SceneRegistryItem;
}