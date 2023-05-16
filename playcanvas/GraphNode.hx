package playcanvas;

/**
	A hierarchical scene node.
**/
@:jsRequire("playcanvas", "GraphNode") extern class GraphNode extends EventHandler {
	/**
		Create a new GraphNode instance.
	**/
	function new(?name:String);
	/**
		The non-unique name of a graph node. Defaults to 'Untitled'.
	**/
	var name : String;
	/**
		Interface for tagging graph nodes. Tag based searches can be performed using the
		{@link GraphNode#findByTag} function.
	**/
	var tags : Tags;
	private var _labels : Dynamic;
	private var localPosition : Dynamic;
	private var localRotation : Dynamic;
	private var localScale : Dynamic;
	private var localEulerAngles : Dynamic;
	private var position : Dynamic;
	private var rotation : Dynamic;
	private var eulerAngles : Dynamic;
	private var _scale : Dynamic;
	private var localTransform : Dynamic;
	private var _dirtyLocal : Dynamic;
	private var _aabbVer : Dynamic;
	/**
		Marks the node to ignore hierarchy sync entirely (including children nodes). The engine code
		automatically freezes and unfreezes objects whenever required. Segregating dynamic and
		stationary nodes into subhierarchies allows to reduce sync time significantly.
	**/
	private var _frozen : Dynamic;
	private var worldTransform : Dynamic;
	private var _dirtyWorld : Dynamic;
	/**
		Cached value representing the negatively scaled world transform. If the value is 0, this
		marks this value as dirty and it needs to be recalculated. If the value is 1, the world
		transform is not negatively scaled. If the value is -1, the world transform is negatively
		scaled.
	**/
	private var _worldScaleSign : Dynamic;
	private var _normalMatrix : Dynamic;
	private var _dirtyNormal : Dynamic;
	private var _right : Dynamic;
	private var _up : Dynamic;
	private var _forward : Dynamic;
	private var _parent : Dynamic;
	private var _children : Dynamic;
	private var _graphDepth : Dynamic;
	/**
		Represents enabled state of the entity. If the entity is disabled, the entity including all
		children are excluded from updates.
	**/
	private var _enabled : Dynamic;
	/**
		Represents enabled state of the entity in the hierarchy. It's true only if this entity and
		all parent entities all the way to the scene's root are enabled.
	**/
	private var _enabledInHierarchy : Dynamic;
	var scaleCompensation : Bool;
	/**
		The normalized local space X-axis vector of the graph node in world space.
	**/
	final right : Vec3;
	/**
		The normalized local space Y-axis vector of the graph node in world space.
	**/
	final up : Vec3;
	/**
		The normalized local space negative Z-axis vector of the graph node in world space.
	**/
	final forward : Vec3;
	/**
		A matrix used to transform the normal.
	**/
	final normalMatrix : Mat3;
	/**
		Enable or disable a GraphNode. If one of the GraphNode's parents is disabled there will be
		no other side effects. If all the parents are enabled then the new value will activate or
		deactivate all the enabled children of the GraphNode.
	**/
	var enabled : Bool;
	/**
		A read-only property to get a parent graph node.
	**/
	final parent : GraphNode;
	/**
		A read-only property to get the path of the graph node relative to the root of the hierarchy.
	**/
	final path : String;
	/**
		A read-only property to get highest graph node from current node.
	**/
	final root : GraphNode;
	/**
		A read-only property to get the children of this graph node.
	**/
	final children : Array<GraphNode>;
	/**
		A read-only property to get the depth of this child within the graph. Note that for
		performance reasons this is only recalculated when a node is added to a new parent, i.e. It
		is not recalculated when a node is simply removed from the graph.
	**/
	final graphDepth : Float;
	private var _notifyHierarchyStateChanged : Dynamic;
	/**
		Called when the enabled flag of the entity or one of its parents changes.
	**/
	private var _onHierarchyStateChanged : Dynamic;
	private var _cloneInternal : Dynamic;
	/**
		Clone a graph node.
	**/
	function clone():GraphNode;
	/**
		Copy a graph node.
	**/
	function copy(source:GraphNode):GraphNode;
	/**
		Search the graph node and all of its descendants for the nodes that satisfy some search
		criteria.
	**/
	function find(attr:ts.AnyOf2<String, FindNodeCallback>, ?value:Dynamic):Array<GraphNode>;
	/**
		Search the graph node and all of its descendants for the first node that satisfies some
		search criteria.
	**/
	function findOne(attr:ts.AnyOf2<String, FindNodeCallback>, ?value:Dynamic):Null<GraphNode>;
	/**
		Return all graph nodes that satisfy the search query. Query can be simply a string, or comma
		separated strings, to have inclusive results of assets that match at least one query. A
		query that consists of an array of tags can be used to match graph nodes that have each tag
		of array.
	**/
	function findByTag(args:haxe.extern.Rest<Dynamic>):Array<GraphNode>;
	/**
		Get the first node found in the graph with the name. The search is depth first.
	**/
	function findByName(name:String):Null<GraphNode>;
	/**
		Get the first node found in the graph by its full path in the graph. The full path has this
		form 'parent/child/sub-child'. The search is depth first.
	**/
	function findByPath(path:ts.AnyOf2<String, Array<String>>):Null<GraphNode>;
	/**
		Executes a provided function once on this graph node and all of its descendants.
	**/
	function forEach(callback:ForEachNodeCallback, ?thisArg:Dynamic):Void;
	/**
		Check if node is descendant of another node.
	**/
	function isDescendantOf(node:GraphNode):Bool;
	/**
		Check if node is ancestor for another node.
	**/
	function isAncestorOf(node:GraphNode):Bool;
	/**
		Get the world space rotation for the specified GraphNode in Euler angle form. The rotation
		is returned as euler angles in a {@link Vec3}. The value returned by this function should be
		considered read-only. In order to set the world-space rotation of the graph node, use
		{@link GraphNode#setEulerAngles}.
	**/
	function getEulerAngles():Vec3;
	/**
		Get the rotation in local space for the specified GraphNode. The rotation is returned as
		euler angles in a {@link Vec3}. The returned vector should be considered read-only. To
		update the local rotation, use {@link GraphNode#setLocalEulerAngles}.
	**/
	function getLocalEulerAngles():Vec3;
	/**
		Get the position in local space for the specified GraphNode. The position is returned as a
		{@link Vec3}. The returned vector should be considered read-only. To update the local
		position, use {@link GraphNode#setLocalPosition}.
	**/
	function getLocalPosition():Vec3;
	/**
		Get the rotation in local space for the specified GraphNode. The rotation is returned as a
		{@link Quat}. The returned quaternion should be considered read-only. To update the local
		rotation, use {@link GraphNode#setLocalRotation}.
	**/
	function getLocalRotation():Quat;
	/**
		Get the scale in local space for the specified GraphNode. The scale is returned as a
		{@link Vec3}. The returned vector should be considered read-only. To update the local scale,
		use {@link GraphNode#setLocalScale}.
	**/
	function getLocalScale():Vec3;
	/**
		Get the local transform matrix for this graph node. This matrix is the transform relative to
		the node's parent's world transformation matrix.
	**/
	function getLocalTransform():Mat4;
	/**
		Get the world space position for the specified GraphNode. The position is returned as a
		{@link Vec3}. The value returned by this function should be considered read-only. In order
		to set the world-space position of the graph node, use {@link GraphNode#setPosition}.
	**/
	function getPosition():Vec3;
	/**
		Get the world space rotation for the specified GraphNode. The rotation is returned as a
		{@link Quat}. The value returned by this function should be considered read-only. In order
		to set the world-space rotation of the graph node, use {@link GraphNode#setRotation}.
	**/
	function getRotation():Quat;
	/**
		Get the world space scale for the specified GraphNode. The returned value will only be
		correct for graph nodes that have a non-skewed world transform (a skew can be introduced by
		the compounding of rotations and scales higher in the graph node hierarchy). The scale is
		returned as a {@link Vec3}. The value returned by this function should be considered
		read-only. Note that it is not possible to set the world space scale of a graph node
		directly.
	**/
	function getScale():Vec3;
	/**
		Get the world transformation matrix for this graph node.
	**/
	function getWorldTransform():Mat4;
	/**
		Returns cached value of negative scale of the world transform.
	**/
	final worldScaleSign : Float;
	/**
		Remove graph node from current parent and add as child to new parent.
	**/
	function reparent(parent:GraphNode, ?index:Float):Void;
	/**
		Sets the local-space rotation of the specified graph node using euler angles. Eulers are
		interpreted in XYZ order. Eulers must be specified in degrees. This function has two valid
		signatures: you can either pass a 3D vector or 3 numbers to specify the local-space euler
		rotation.
	**/
	function setLocalEulerAngles(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Sets the local-space position of the specified graph node. This function has two valid
		signatures: you can either pass a 3D vector or 3 numbers to specify the local-space
		position.
	**/
	function setLocalPosition(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Sets the local-space rotation of the specified graph node. This function has two valid
		signatures: you can either pass a quaternion or 3 numbers to specify the local-space
		rotation.
	**/
	function setLocalRotation(x:ts.AnyOf2<Float, Quat>, ?y:Float, ?z:Float, ?w:Float):Void;
	/**
		Sets the local-space scale factor of the specified graph node. This function has two valid
		signatures: you can either pass a 3D vector or 3 numbers to specify the local-space scale.
	**/
	function setLocalScale(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	private var _dirtifyLocal : Dynamic;
	private var _unfreezeParentToRoot : Dynamic;
	private var _dirtifyWorld : Dynamic;
	private var _dirtifyWorldInternal : Dynamic;
	/**
		Sets the world-space position of the specified graph node. This function has two valid
		signatures: you can either pass a 3D vector or 3 numbers to specify the world-space
		position.
	**/
	function setPosition(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Sets the world-space rotation of the specified graph node. This function has two valid
		signatures: you can either pass a quaternion or 3 numbers to specify the world-space
		rotation.
	**/
	function setRotation(x:ts.AnyOf2<Float, Quat>, ?y:Float, ?z:Float, ?w:Float):Void;
	/**
		Sets the world-space rotation of the specified graph node using euler angles. Eulers are
		interpreted in XYZ order. Eulers must be specified in degrees. This function has two valid
		signatures: you can either pass a 3D vector or 3 numbers to specify the world-space euler
		rotation.
	**/
	function setEulerAngles(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Add a new child to the child list and update the parent value of the child node.
		If the node already had a parent, it is removed from its child list.
	**/
	function addChild(node:GraphNode):Void;
	/**
		Add a child to this node, maintaining the child's transform in world space.
		If the node already had a parent, it is removed from its child list.
	**/
	function addChildAndSaveTransform(node:GraphNode):Void;
	/**
		Insert a new child to the child list at the specified index and update the parent value of
		the child node. If the node already had a parent, it is removed from its child list.
	**/
	function insertChild(node:GraphNode, index:Float):Void;
	/**
		Prepares node for being inserted to a parent node, and removes it from the previous parent.
	**/
	private var _prepareInsertChild : Dynamic;
	/**
		Fires an event on all children of the node. The event `name` is fired on the first (root)
		node only. The event `nameHierarchy` is fired for all children.
	**/
	private var _fireOnHierarchy : Dynamic;
	/**
		Called when a node is inserted into a node's child list.
	**/
	private var _onInsertChild : Dynamic;
	/**
		Recurse the hierarchy and update the graph depth at each node.
	**/
	private var _updateGraphDepth : Dynamic;
	/**
		Remove the node from the child list and update the parent value of the child.
	**/
	function removeChild(child:GraphNode):Void;
	function _sync():Void;
	/**
		Updates the world transformation matrices at this node and all of its descendants.
	**/
	function syncHierarchy():Void;
	/**
		Reorients the graph node so that the negative z-axis points towards the target. This
		function has two valid signatures. Either pass 3D vectors for the look at coordinate and up
		vector, or pass numbers to represent the vectors.
	**/
	function lookAt(x:ts.AnyOf2<Float, Vec3>, ?y:ts.AnyOf2<Float, Vec3>, ?z:Float, ?ux:Float, ?uy:Float, ?uz:Float):Void;
	/**
		Translates the graph node in world-space by the specified translation vector. This function
		has two valid signatures: you can either pass a 3D vector or 3 numbers to specify the
		world-space translation.
	**/
	function translate(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Translates the graph node in local-space by the specified translation vector. This function
		has two valid signatures: you can either pass a 3D vector or 3 numbers to specify the
		local-space translation.
	**/
	function translateLocal(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Rotates the graph node in world-space by the specified Euler angles. Eulers are specified in
		degrees in XYZ order. This function has two valid signatures: you can either pass a 3D
		vector or 3 numbers to specify the world-space rotation.
	**/
	function rotate(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	/**
		Rotates the graph node in local-space by the specified Euler angles. Eulers are specified in
		degrees in XYZ order. This function has two valid signatures: you can either pass a 3D
		vector or 3 numbers to specify the local-space rotation.
	**/
	function rotateLocal(x:ts.AnyOf2<Float, Vec3>, ?y:Float, ?z:Float):Void;
	static var prototype : GraphNode;
}