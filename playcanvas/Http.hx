package playcanvas;

/**
	Used to send and receive HTTP requests.
**/
@:jsRequire("playcanvas", "Http") extern class Http {
	function new();
	function get(url:String, options:{ @:optional var headers : Dynamic; @:optional var async : Bool; @:optional var cache : Bool; @:optional var withCredentials : Bool; @:optional var responseType : String; @:optional var postdata : ts.AnyOf2<Dynamic, js.html.Document>; @:optional var retry : Bool; @:optional var maxRetries : Float; @:optional var maxRetryDelay : Float; }, callback:HttpResponseCallback):js.html.XMLHttpRequest;
	function post(url:String, data:Dynamic, options:{ @:optional var headers : Dynamic; @:optional var async : Bool; @:optional var cache : Bool; @:optional var withCredentials : Bool; @:optional var responseType : String; @:optional var retry : Bool; @:optional var maxRetries : Float; @:optional var maxRetryDelay : Float; }, callback:HttpResponseCallback):js.html.XMLHttpRequest;
	function put(url:String, data:ts.AnyOf2<Dynamic, js.html.Document>, options:{ @:optional var headers : Dynamic; @:optional var async : Bool; @:optional var cache : Bool; @:optional var withCredentials : Bool; @:optional var responseType : String; @:optional var retry : Bool; @:optional var maxRetries : Float; @:optional var maxRetryDelay : Float; }, callback:HttpResponseCallback):js.html.XMLHttpRequest;
	function del(url:Dynamic, options:{ @:optional var headers : Dynamic; @:optional var async : Bool; @:optional var cache : Bool; @:optional var withCredentials : Bool; @:optional var responseType : String; @:optional var postdata : ts.AnyOf2<Dynamic, js.html.Document>; @:optional var retry : Bool; @:optional var maxRetries : Float; @:optional var maxRetryDelay : Float; }, callback:HttpResponseCallback):js.html.XMLHttpRequest;
	function request(method:String, url:String, options:{ @:optional var headers : Dynamic; @:optional var async : Bool; @:optional var cache : Bool; @:optional var withCredentials : Bool; @:optional var retry : Bool; @:optional var maxRetries : Float; @:optional var maxRetryDelay : Float; @:optional var responseType : String; @:optional var postdata : ts.AnyOf2<Dynamic, js.html.Document>; }, callback:HttpResponseCallback):js.html.XMLHttpRequest;
	function _guessResponseType(url:Dynamic):String;
	function _isBinaryContentType(contentType:Dynamic):Bool;
	function _isBinaryResponseType(responseType:Dynamic):Bool;
	function _onReadyStateChange(method:Dynamic, url:Dynamic, options:Dynamic, xhr:Dynamic):Void;
	function _onSuccess(method:Dynamic, url:Dynamic, options:Dynamic, xhr:Dynamic):Void;
	function _onError(method:Dynamic, url:Dynamic, options:Dynamic, xhr:Dynamic):Void;
	static var prototype : Http;
	static var ContentType : {
		var AAC : String;
		var BASIS : String;
		var BIN : String;
		var DDS : String;
		var FORM_URLENCODED : String;
		var GIF : String;
		var GLB : String;
		var JPEG : String;
		var JSON : String;
		var MP3 : String;
		var MP4 : String;
		var OGG : String;
		var OPUS : String;
		var PNG : String;
		var TEXT : String;
		var WAV : String;
		var XML : String;
	};
	static var ResponseType : {
		var TEXT : String;
		var ARRAY_BUFFER : String;
		var BLOB : String;
		var DOCUMENT : String;
		var JSON : String;
	};
	static var binaryExtensions : Array<String>;
	static var retryDelay : Float;
}