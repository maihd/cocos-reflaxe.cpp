package cc.cc2d;

import cc.math.Size;
import cc.base.Ref;
import cc.math.Vec2;

import cxx.Ptr;
import cxx.num.Int32;
import cxx.num.Float32;

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


@:include("cocos2d.h")
@:native("::cocos2d::Node")
extern class Node extends Ref
{
    function new();
    function init() : Bool;
    
    @:overload(function(node: Ptr<Node>) : Void {})
    function addChild(node: Ptr<Node>, zOrder: Int32) : Void;

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

    @:virtual
    function getContentSize() : Size;
}