package global.pc;

/**
	Represents XR hit test source, which provides access to hit results of real world geometry from
	AR session.
**/
@:native("pc.XrHitTestSource") extern class XrHitTestSource extends EventHandler {
	/**
		Create a new XrHitTestSource instance.
	**/
	function new(manager:XrManager, xrHitTestSource:Dynamic, transient:Bool);
	private var manager : Dynamic;
	private var _xrHitTestSource : Dynamic;
	private var _transient : Dynamic;
	/**
		Stop and remove hit test source.
	**/
	function remove():Void;
	function onStop():Void;
	function update(frame:Dynamic):Void;
	private var updateHitResults : Dynamic;
	static var prototype : XrHitTestSource;
}