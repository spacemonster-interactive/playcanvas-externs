package global.pc;

/**
	Set of tag names. Tags are automatically available on {@link Entity} and {@link Asset} as `tags`
	field.
**/
@:native("pc.Tags") extern class Tags extends EventHandler {
	/**
		Create an instance of a Tags.
	**/
	function new(?parent:Dynamic);
	private var _index : Dynamic;
	private var _list : Dynamic;
	var _parent : Dynamic;
	/**
		Add a tag, duplicates are ignored. Can be array or comma separated arguments for multiple tags.
	**/
	function add(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Remove tag.
	**/
	function remove(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Remove all tags.
	**/
	function clear():Void;
	/**
		Check if tags satisfy filters. Filters can be provided by simple name of tag, as well as by
		array of tags. When an array is provided it will check if tags contain each tag within the
		array. If any of comma separated argument is satisfied, then it will return true. Any number
		of combinations are valid, and order is irrelevant.
	**/
	function has(args:haxe.extern.Rest<Dynamic>):Bool;
	private var _has : Dynamic;
	/**
		Returns immutable array of tags.
	**/
	function list():Array<String>;
	private var _processArguments : Dynamic;
	/**
		Number of tags in set.
	**/
	final size : Float;
	static var prototype : Tags;
}