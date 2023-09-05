package cc.ccui;

import cxx.Ptr;

@:include("ui/CocosGUI.h")
@:native("::cocos2d::ui::Button")
extern class Button extends Widget
{
    @:overload(function() : Ptr<Button> {})
    @:overload(function(normalImage: String) : Ptr<Button> {})
    @:overload(function(normalImage: String, selectedImage: String) : Ptr<Button> {})
    static function create(normalImage: String, selectedImage: String, disableImage: String) : Ptr<Button>;
}