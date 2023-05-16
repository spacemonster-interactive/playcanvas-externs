package playcanvas;

/**
	Callback function that the {@link AnimEvaluator } uses to set final animation values. These
	callbacks are stored in {@link AnimTarget } instances which are constructed by an
	{@link AnimBinder }.
**/
typedef AnimSetter = (value:Array<Float>) -> Dynamic;