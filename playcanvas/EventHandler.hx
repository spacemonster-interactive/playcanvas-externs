package playcanvas;

/**
	Abstract base class that implements functionality for event handling.
	
	```javascript
	const obj = new EventHandlerSubclass();
	
	// subscribe to an event
	obj.on('hello', function (str) {
	     console.log('event hello is fired', str);
	});
	
	// fire event
	obj.fire('hello', 'world');
	```
**/
@:jsRequire("playcanvas", "EventHandler") extern class EventHandler {
	function new();
	private var _callbacks : Dynamic;
	private var _callbackActive : Dynamic;
	/**
		Reinitialize the event handler.
	**/
	private var initEventHandler : Dynamic;
	/**
		Registers a new event handler.
	**/
	private var _addCallback : Dynamic;
	/**
		Attach an event handler to an event.
	**/
	function on(name:String, callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	/**
		Detach an event handler from an event. If callback is not provided then all callbacks are
		unbound from the event, if scope is not provided then all events with the callback will be
		unbound.
	**/
	function off(?name:String, ?callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	/**
		Fire an event, all additional arguments are passed on to the event listener.
	**/
	function fire(name:String, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic, ?arg8:Dynamic):EventHandler;
	/**
		Attach an event handler to an event. This handler will be removed after being fired once.
	**/
	function once(name:String, callback:HandleEventCallback, ?scope:Dynamic):EventHandler;
	/**
		Test if there are any handlers bound to an event name.
	**/
	function hasEvent(name:String):Bool;
	static var prototype : EventHandler;
}