package playcanvas;

/**
	Provides access to input sources for WebXR.
**/
@:jsRequire("playcanvas", "XrInput") extern class XrInput extends EventHandler {
	/**
		Create a new XrInput instance.
	**/
	function new(manager:XrManager);
	private var manager : Dynamic;
	private var _inputSources : Dynamic;
	private var _onInputSourcesChangeEvt : Dynamic;
	private var _onSessionStart : Dynamic;
	private var _onSessionEnd : Dynamic;
	private var _onInputSourcesChange : Dynamic;
	private var _getByInputSource : Dynamic;
	private var _addInputSource : Dynamic;
	private var _removeInputSource : Dynamic;
	function update(frame:Dynamic):Void;
	/**
		List of active {@link XrInputSource} instances.
	**/
	final inputSources : Array<XrInputSource>;
	static var prototype : XrInput;
}