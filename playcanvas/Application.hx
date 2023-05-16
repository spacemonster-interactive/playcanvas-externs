package playcanvas;

/**
	An Application represents and manages your PlayCanvas application. If you are developing using
	the PlayCanvas Editor, the Application is created for you. You can access your Application
	instance in your scripts. Below is a skeleton script which shows how you can access the
	application 'app' property inside the initialize and update functions:
	
	```javascript
	// Editor example: accessing the pc.Application from a script
	var MyScript = pc.createScript('myScript');
	
	MyScript.prototype.initialize = function() {
	     // Every script instance has a property 'this.app' accessible in the initialize...
	     const app = this.app;
	};
	
	MyScript.prototype.update = function(dt) {
	     // ...and update functions.
	     const app = this.app;
	};
	```
	
	If you are using the Engine without the Editor, you have to create the application instance
	manually.
**/
@:jsRequire("playcanvas", "Application") extern class Application extends AppBase {
	/**
		Create a new Application instance.
	**/
	function new(canvas:js.html.CanvasElement, ?options:{ @:optional var elementInput : ElementInput; @:optional var keyboard : Keyboard; @:optional var mouse : Mouse; @:optional var touch : TouchDevice; @:optional var gamepads : GamePads; @:optional var scriptPrefix : String; @:optional var assetPrefix : String; @:optional var graphicsDeviceOptions : Dynamic; @:optional var scriptsOrder : Array<String>; });
	function createDevice(canvas:Dynamic, options:Dynamic):WebglGraphicsDevice;
	function addComponentSystems(appOptions:Dynamic):Void;
	function addResourceHandles(appOptions:Dynamic):Void;
	static var prototype : Application;
}