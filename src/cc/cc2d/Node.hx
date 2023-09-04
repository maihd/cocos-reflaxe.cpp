package cc.cc2d;

import cc.math.Vec2;
import cc.base.Ptr;
import cxx.num.Float32;
import cc.base.Ref;

enum NodeEvents
{
    @:native("kNodeOnEnter")
    OnEnter;

    @:native("kNodeOnExit")
    OnExit;

    @:native("kNodeOnEnterTransitionDidFinish")
    OnEnterTransitionDidFinish;

    @:native("kNodeOnExitTransitionDidStart")
    OnExitTransitionDidStart;

    @:native("kNodeOnCleanup")
    OnCleanup;
}

// @:arrowAccess
// @:overrideMemoryManagement
// @:unsafePtrType
// @:forward
// extern abstract NodePtr<T: Node>(T) 
// 	from T to T
//     from Ptr<T> to Ptr<T>
// {
// 	@:nativeFunctionCode("{arg0}")
// 	public function new<U>(v: U);

// 	public static var Null(get, never): Ptr<Dynamic>;

// 	@:nativeFunctionCode("nullptr")
// 	public static function get_Null(): Ptr<Dynamic>;

// 	@:nativeFunctionCode("std::string({this})")
// 	@:include("string", true)
// 	public function toString(): String;

// 	@:nativeFunctionCode("({this} == nullptr)")
// 	public function isNull(): Bool;

// 	@:nativeFunctionCode("({this} == {arg1})")
// 	public function addrEquals<U>(other: cxx.Ptr<U>): Bool;

// 	@:nativeFunctionCode("({this} != {arg1})")
// 	public function addrNotEquals<U>(other: cxx.Ptr<U>): Bool;

// 	@:nativeFunctionCode("({this}++)")
// 	public function increment(): Void;

// 	@:nativeFunctionCode("({this}--)")
// 	public function decrement(): Void;

// 	@:nativeFunctionCode("(*{this})")
// 	public function toValue(): cxx.Value<T>;

// 	// @:from
// 	// static public function fromSubType<U>(other: cxx.Ptr<U>) {
// 	// 	return new Ptr<T>(other.this);
// 	// }

// 	@:to
// 	public inline function toRootType<U: Node>() : NodePtr<U> {
// 		return new NodePtr<U>(this);
// 	}
// }


@:include("cocos2d.h")
@:native("::cocos2d::Node")
extern class Node extends Ref
{
    function new();
    function init() : Bool;
    function addChild(node: Ptr<Node>) : Void;

    // Properties

    var x(get, set): Float32;
    var y(get, set): Float32;
    var position(get, set): Vec2;
    // var z(get, set): Float32;

    private inline function get_x() : Float32
    {
        return getPositionX();
    }
    
    private inline function set_x(x: Float32) : Float32
    {
        setPositionX(x);
        return x;
    }

    private inline function get_y() : Float32
    {
        return getPositionY();
    }
    
    private inline function set_y(y: Float32) : Float32
    {
        setPositionY(y);
        return y;
    }

    private inline function get_position() : Vec2
    {
        return getPosition();
    }

    private inline function set_position(v: Vec2) : Vec2
    {
        setPosition(v);
        return v;
    }

    //

    @:virtual
    function getPositionX() : Float32;

    @:virtual
    function setPositionX(x: Float32) : Void;

    @:virtual
    function getPositionY() : Float32;

    @:virtual
    function setPositionY(y: Float32) : Void;

    @:virtual
    function getPosition() : Vec2;

    @:virtual
    function setPosition(v: Vec2) : Void;
}