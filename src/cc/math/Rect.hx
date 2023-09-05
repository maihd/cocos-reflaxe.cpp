package cc.math;

import cxx.num.Float32;

@:valueType
@:structAccess
@:include("cocos2d.h")
@:native("::cocos2d::Rect")
extern class Rect
{
    @:native("::cocos2d::Rect")
    @:overload(function() : Rect {})
    function new(x: Float32, y: Float32, width: Float32, height: Float32);
}