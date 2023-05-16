package global.pc;

/**
	An asset resource which represents an anim state graph. It can be loaded into an anim component using the {@link AnimComponent#loadStateGraph} method.
	
	## Usage
	Scripts can retrieve an AnimStateGraph instance from assets of type 'animstategraph'. An AnimStateGraph can then be loaded into an anim component as follows:
	```javascript
	const animStateGraph = app.assets.get(ASSET_ID).resource;
	const entity = new pc.Entity();
	entity.addComponent('anim');
	entity.anim.loadStateGraph(animStateGraph);
	```
**/
@:native("pc.AnimStateGraph") extern class AnimStateGraph {
	/**
		Create an AnimStateGraph instance from JSON data.
	**/
	function new(data:Dynamic);
	var _layers : Dynamic;
	var _parameters : { };
	final parameters : { };
	final layers : Dynamic;
	static var prototype : AnimStateGraph;
}