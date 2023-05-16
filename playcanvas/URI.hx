package playcanvas;

/**
	A URI object.
**/
@:jsRequire("playcanvas", "URI") extern class URI {
	/**
		Create a new URI instance.
	**/
	function new(uri:String);
	/**
		The scheme. (e.g. http).
	**/
	var scheme : String;
	/**
		The authority. (e.g. `www.example.com`).
	**/
	var authority : String;
	/**
		The path. (e.g. /users/example).
	**/
	var path : String;
	/**
		The query, the section after a ?. (e.g. search=value).
	**/
	var query : String;
	/**
		The fragment, the section after a #.
	**/
	var fragment : String;
	/**
		Convert URI back to string.
	**/
	function toString():String;
	/**
		Returns the query parameters as an Object.
	**/
	function getQuery():Dynamic;
	/**
		Set the query section of the URI from a Object.
	**/
	function setQuery(params:Dynamic):Void;
	static var prototype : URI;
}