package global.pc;

@:native("pc.AppOptions") extern class AppOptions {
	function new();
	/**
		Input handler for {@link ElementComponent}s.
	**/
	var elementInput : ElementInput;
	/**
		Keyboard handler for input.
	**/
	var keyboard : Keyboard;
	/**
		Mouse handler for input.
	**/
	var mouse : Mouse;
	/**
		TouchDevice handler for input.
	**/
	var touch : TouchDevice;
	/**
		Gamepad handler for input.
	**/
	var gamepads : GamePads;
	/**
		Prefix to apply to script urls before loading.
	**/
	var scriptPrefix : String;
	/**
		Prefix to apply to asset urls before loading.
	**/
	var assetPrefix : String;
	/**
		Scripts in order of loading first.
	**/
	var scriptsOrder : Array<String>;
	/**
		The sound manager
	**/
	var soundManager : SoundManager;
	/**
		The graphics device.
	**/
	var graphicsDevice : GraphicsDevice;
	/**
		The lightmapper.
	**/
	var lightmapper : Lightmapper;
	/**
		The BatchManager.
	**/
	var batchManager : BatchManager;
	/**
		The XrManager.
	**/
	var xr : XrManager;
	/**
		The component systems the app requires.
	**/
	var componentSystems : Array<ComponentSystem>;
	/**
		The resource handlers the app requires.
	**/
	var resourceHandlers : Array<ResourceHandler>;
	static var prototype : AppOptions;
}