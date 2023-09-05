package cc.cc2d;

import cc.math.Size;

import cxx.Ptr;
import cxx.num.Float32;

@:include("cocos2d.h")
@:native("::cocos2d::LabelTTF")
extern class LabelTTF extends Sprite
{
    //
    // Creations
    //

    function new();
    function destructor() : Void;

    static function create(string: String, fontName: String, fontSize: Float32) : Ptr<LabelTTF>;
    // static function createWithFontDefinition(string: String, textDefinition: FontDefinition);

    //
    // Properties
    //

    var string(get, set): String;

    private inline function get_string() : String
    {
        return getString();
    }

    private inline function set_string(string: String) : String
    {
        setString(string);
        return string;
    }

    //
    // Methods
    //

    function getString() : String;
    function setString(string: String) : Void;
}