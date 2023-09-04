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
extern abstract Vec2(Vec2Data)
{
    
}