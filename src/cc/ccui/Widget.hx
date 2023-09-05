package cc.ccui;

import cc.base.Ref;
import cxx.Ptr;
import cc.cc2d.ProtectedNode;

typedef WidgetClickCallback = (Ptr<Ref>) -> Void;

@:include("ui/CocosGUI.h")
@:native("::cocos2d::ui::Widget")
extern class Widget extends ProtectedNode
{
    @:virtual
    function addClickEventListener(callback: WidgetClickCallback) : Void;

    @:virtual
    function setTouchEnabled(enabled: Bool) : Void;
}