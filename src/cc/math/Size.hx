package cc.math;

import cxx.num.Float32;

@:valueType
@:structAccess
@:include("cocos2d.h")
@:native("::cocos2d::Size")
extern class Size
{
    static final ZERO: Size;

    var width: Float32;
    var height: Float32;

    @:overload(function() : Size {})
    function new(width: Float32, height: Float32);

    function setSize(width: Float32, height: Float32) : Void;
    function equals(target: Size) : Void;
}