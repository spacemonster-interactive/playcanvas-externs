package playcanvas;

/**
	DOM Overlay provides the ability to use DOM elements as an overlay in a WebXR AR session. It
	requires that the root DOM element is provided for session start. That way, input source select
	events are first tested against DOM Elements and then propagated down to the XR Session. If this
	propagation is not desirable, use the `beforexrselect` event on a DOM element and the
	`preventDefault` function to stop propagation.
	
	```javascript
	app.xr.domOverlay.root = element;
	app.xr.start(camera, pc.XRTYPE_AR, pc.XRSPACE_LOCALFLOOR);
	```
	
	```javascript
	// Disable input source firing `select` event when some descendant element of DOM overlay root
	// is touched/clicked. This is useful when the user interacts with UI elements and there should
	// not be `select` events behind UI.
	someElement.addEventListener('beforexrselect', function (evt) {
	     evt.preventDefault();
	});
	```
**/
@:jsRequire("playcanvas", "XrDomOverlay") extern class XrDomOverlay {
	/**
		DOM Overlay provides the ability to use DOM elements as an overlay in a WebXR AR session. It
		requires that the root DOM element is provided for session start. That way, input source
		select events are first tested against DOM Elements and then propagated down to the XR
		Session. If this propagation is not desirable, use the `beforexrselect` event on a DOM
		element and the `preventDefault` function to stop propagation.
	**/
	function new(manager:XrManager);
	private var _manager : Dynamic;
	private var _supported : Dynamic;
	private var _root : Dynamic;
	/**
		True if DOM Overlay is supported.
	**/
	final supported : Bool;
	/**
		True if DOM Overlay is available. It can only be available if it is supported, during a
		valid WebXR session and if a valid root element is provided.
	**/
	final available : Bool;
	/**
		State of the DOM Overlay, which defines how the root DOM element is rendered. Possible
		options:
		
		- screen: Screen - indicates that the DOM element is covering whole physical screen,
		matching XR viewports.
		- floating: Floating - indicates that the underlying platform renders the DOM element as
		floating in space, which can move during the WebXR session or allow the application to move
		the element.
		- head-locked: Head Locked - indicates that the DOM element follows the user's head movement
		consistently, appearing similar to a helmet heads-up display.
	**/
	final state : String;
	/**
		The DOM element to be used as the root for DOM Overlay. Can be changed only outside of an
		active WebXR session.
	**/
	var root : js.html.DOMElement;
	static var prototype : XrDomOverlay;
}