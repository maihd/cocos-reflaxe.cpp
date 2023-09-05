package cc.math;

import cxx.num.Float32;

@:valueType
@:structAccess
@:include("cocos2d.h")
@:native("::cocos2d::Vec2")
extern class Vec2Data
{
    var x: Float32;
    var y: Float32;
}

@:forward
@:native("::cocos2d::Vec2")
extern abstract Vec2(Vec2Data)
{
    @:native("::cocos2d::Vec2")
    @:overload(function() : Void {})
    function new(x: Float32, y: Float32);
}