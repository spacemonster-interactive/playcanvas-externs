package playcanvas;

/**
	Handles localization. Responsible for loading localization assets and returning translations for
	a certain key. Can also handle plural forms. To override its default behavior define a different
	implementation for {@link I18n#getText} and {@link I18n#getPluralText}.
**/
@:jsRequire("playcanvas", "I18n") extern class I18n extends EventHandler {
	/**
		Create a new I18n instance.
	**/
	function new(app:AppBase);
	/**
		The current locale for example "en-US". Changing the locale will raise an event which will
		cause localized Text Elements to change language to the new locale.
	**/
	var locale : Dynamic;
	var _translations : { };
	var _availableLangs : { };
	var _app : AppBase;
	var _assets : Array<Dynamic>;
	var _parser : I18nParser;
	/**
		An array of asset ids or assets that contain localization data in the expected format. I18n
		will automatically load translations from these assets as the assets are loaded and it will
		also automatically unload translations if the assets get removed or unloaded at runtime.
	**/
	var assets : Array<Dynamic>;
	var _locale : Dynamic;
	var _lang : Dynamic;
	var _pluralFn : Dynamic;
	/**
		Returns the first available locale based on the desired locale specified. First tries to
		find the desired locale in the loaded translations and then tries to find an alternative
		locale based on the language.
	**/
	function findAvailableLocale(desiredLocale:String):String;
	/**
		Returns the translation for the specified key and locale. If the locale is not specified it
		will use the current locale.
	**/
	function getText(key:String, ?locale:String):String;
	/**
		Returns the pluralized translation for the specified key, number n and locale. If the locale
		is not specified it will use the current locale.
	**/
	function getPluralText(key:String, n:Float, ?locale:String):String;
	/**
		Adds localization data. If the locale and key for a translation already exists it will be
		overwritten.
	**/
	function addData(data:Dynamic):Void;
	/**
		Removes localization data.
	**/
	function removeData(data:Dynamic):Void;
	/**
		Frees up memory.
	**/
	function destroy():Void;
	function _findFallbackLocale(locale:Dynamic, lang:Dynamic):Dynamic;
	function _onAssetAdd(asset:Dynamic):Void;
	function _onAssetLoad(asset:Dynamic):Void;
	function _onAssetChange(asset:Dynamic):Void;
	function _onAssetRemove(asset:Dynamic):Void;
	function _onAssetUnload(asset:Dynamic):Void;
	static var prototype : I18n;
	/**
		Returns the first available locale based on the desired locale specified. First tries to
		find the desired locale and then tries to find an alternative locale based on the language.
	**/
	@:native("findAvailableLocale")
	static function findAvailableLocale_(desiredLocale:String, availableLocales:Dynamic):String;
}