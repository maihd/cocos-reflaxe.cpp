package cc.cc2d;

import cxx.Ptr;

@:native("::cocos2d::Sprite")
extern class Sprite extends Node
{
    //
    // Creators
    //

    @:overload(function() : Sprite {})
    public static function create(fileName: String) : Ptr<Sprite>;

    //
    // BatchNode methods
    //


}