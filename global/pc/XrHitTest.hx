package global.pc;

/**
	Hit Test provides ability to get position and rotation of ray intersecting point with
	representation of real world geometry by underlying AR system.
**/
@:native("pc.XrHitTest") extern class XrHitTest extends EventHandler {
	/**
		Create a new XrHitTest instance.
	**/
	function new(manager:XrManager);
	private var manager : Dynamic;
	private var _supported : Dynamic;
	private var _session : Dynamic;
	/**
		List of active {@link XrHitTestSource}.
	**/
	var sources : Array<XrHitTestSource>;
	private var _onSessionStart : Dynamic;
	private var _onSessionEnd : Dynamic;
	/**
		Checks if hit testing is available.
	**/
	private var isAvailable : Dynamic;
	/**
		Attempts to start hit test with provided reference space.
	**/
	function start(?options:{ @:optional var spaceType : String; @:optional var profile : String; @:optional var entityTypes : Array<String>; @:optional var offsetRay : Ray; @:optional dynamic function callback(err:Null<js.lib.Error>, hitTestSource:Null<XrHitTestSource>):Dynamic; }):Void;
	private var _onHitTestSource : Dynamic;
	function update(frame:Dynamic):Void;
	/**
		True if AR Hit Test is supported.
	**/
	final supported : Bool;
	static var prototype : XrHitTest;
}