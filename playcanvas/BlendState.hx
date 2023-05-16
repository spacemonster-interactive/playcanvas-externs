package playcanvas;

/**
	BlendState is a descriptor that defines how output of fragment shader is written and blended
	into render target. A blend state can be set on a material using {@link Material#blendState},
	or in some cases on the graphics device using {@link GraphicsDevice#setBlendState}.
	
	For the best performance, do not modify blend state after it has been created, but create
	multiple blend states and assign them to the material or graphics device as needed.
**/
@:jsRequire("playcanvas", "BlendState") extern class BlendState {
	/**
		Create a new BlendState instance.
		
		All factor parameters can take the following values:
		
		- {@link BLENDMODE_ZERO}
		- {@link BLENDMODE_ONE}
		- {@link BLENDMODE_SRC_COLOR}
		- {@link BLENDMODE_ONE_MINUS_SRC_COLOR}
		- {@link BLENDMODE_DST_COLOR}
		- {@link BLENDMODE_ONE_MINUS_DST_COLOR}
		- {@link BLENDMODE_SRC_ALPHA}
		- {@link BLENDMODE_SRC_ALPHA_SATURATE}
		- {@link BLENDMODE_ONE_MINUS_SRC_ALPHA}
		- {@link BLENDMODE_DST_ALPHA}
		- {@link BLENDMODE_ONE_MINUS_DST_ALPHA}
		- {@link BLENDMODE_CONSTANT}
		- {@link BLENDMODE_ONE_MINUS_CONSTANT}
		
		All op parameters can take the following values:
		
		- {@link BLENDEQUATION_ADD}
		- {@link BLENDEQUATION_SUBTRACT}
		- {@link BLENDEQUATION_REVERSE_SUBTRACT}
		- {@link BLENDEQUATION_MIN}
		- {@link BLENDEQUATION_MAX}
		
		Note that MIN and MAX operations on WebGL platform require either EXT_blend_minmax or WebGL2
		to work (check device.extBlendMinmax).
	**/
	function new(?blend:Bool, ?colorOp:Float, ?colorSrcFactor:Float, ?colorDstFactor:Float, ?alphaOp:Float, ?alphaSrcFactor:Float, ?alphaDstFactor:Float, ?redWrite:Bool, ?greenWrite:Bool, ?blueWrite:Bool, ?alphaWrite:Bool);
	/**
		Bitfield representing the blend state for render target 0.
	**/
	private var target0 : Dynamic;
	/**
		Enables or disables blending.
	**/
	var blend : Bool;
	function setColorBlend(op:Dynamic, srcFactor:Dynamic, dstFactor:Dynamic):Void;
	function setAlphaBlend(op:Dynamic, srcFactor:Dynamic, dstFactor:Dynamic):Void;
	function setColorWrite(redWrite:Dynamic, greenWrite:Dynamic, blueWrite:Dynamic, alphaWrite:Dynamic):Void;
	var redWrite : Bool;
	var greenWrite : Bool;
	var blueWrite : Bool;
	var alphaWrite : Bool;
	final colorOp : Float;
	final colorSrcFactor : Float;
	final colorDstFactor : Float;
	final alphaOp : Float;
	final alphaSrcFactor : Float;
	final alphaDstFactor : Float;
	final allWrite : Float;
	/**
		Copies the contents of a source blend state to this blend state.
	**/
	function copy(rhs:BlendState):BlendState;
	/**
		Returns an identical copy of the specified blend state.
	**/
	function clone():BlendState;
	final key : Float;
	/**
		Reports whether two BlendStates are equal.
	**/
	function equals(rhs:BlendState):Bool;
	static var prototype : BlendState;
	/**
		A default blend state that has blending disabled and writes to all color channels.
	**/
	static final DEFAULT : BlendState;
	/**
		A blend state that does not write to color channels.
	**/
	static final NOWRITE : BlendState;
}