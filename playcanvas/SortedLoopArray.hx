package playcanvas;

/**
	Helper class used to hold an array of items in a specific order. This array is safe to modify
	while we loop through it. The class assumes that it holds objects that need to be sorted based
	on one of their fields.
**/
@:jsRequire("playcanvas", "SortedLoopArray") extern class SortedLoopArray {
	/**
		Create a new SortedLoopArray instance.
	**/
	function new(args:{ var sortBy : String; });
	/**
		The internal array that holds the actual array elements.
	**/
	var items : Array<Dynamic>;
	/**
		The number of elements in the array.
	**/
	var length : Float;
	/**
		The current index used to loop through the array. This gets modified if we add or remove
		elements from the array while looping. See the example to see how to loop through this
		array.
	**/
	var loopIndex : Float;
	private var _sortBy : Dynamic;
	private var _sortHandler : Dynamic;
	/**
		Searches for the right spot to insert the specified item.
	**/
	private var _binarySearch : Dynamic;
	function _doSort(a:Dynamic, b:Dynamic):Float;
	/**
		Inserts the specified item into the array at the right index based on the 'sortBy' field
		passed into the constructor. This also adjusts the loopIndex accordingly.
	**/
	function insert(item:Dynamic):Void;
	/**
		Appends the specified item to the end of the array. Faster than insert() as it does not
		binary search for the right index. This also adjusts the loopIndex accordingly.
	**/
	function append(item:Dynamic):Void;
	/**
		Removes the specified item from the array.
	**/
	function remove(item:Dynamic):Void;
	/**
		Sorts elements in the array based on the 'sortBy' field passed into the constructor. This
		also updates the loopIndex if we are currently looping.
		
		WARNING: Be careful if you are sorting while iterating because if after sorting the array
		element that you are currently processing is moved behind other elements then you might end
		up iterating over elements more than once!
	**/
	function sort():Void;
	static var prototype : SortedLoopArray;
}