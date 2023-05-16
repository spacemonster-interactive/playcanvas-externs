package global.pc;

/**
	Represents the resource of a Bundle Asset, which contains an index that maps URLs to blob URLs.
**/
@:native("pc.Bundle") extern class Bundle {
	/**
		Create a new Bundle instance.
	**/
	function new(files:Array<Dynamic>);
	var _blobUrls : { };
	/**
		Returns true if the specified URL exists in the loaded bundle.
	**/
	function hasBlobUrl(url:String):Bool;
	/**
		Returns a blob URL for the specified URL.
	**/
	function getBlobUrl(url:String):String;
	/**
		Destroys the bundle and frees up blob URLs.
	**/
	function destroy():Void;
	static var prototype : Bundle;
}