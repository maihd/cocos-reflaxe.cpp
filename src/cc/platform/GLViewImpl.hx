package cc.platform;

import cc.math.Rect;
import cxx.Ptr;

@:include("cocos2d.h")
@:native("::cocos2d::GLViewImpl")
extern class GLViewImpl extends GLView
{
    @:native("::cocos2d::GLViewImpl::create")
    static function create(name: String) : Ptr<GLViewImpl>;

    @:native("::cocos2d::GLViewImpl::createWithRect")
    static function createWithRect(name: String, rect: Rect) : Ptr<GLViewImpl>;
}