package cc.cc2d;

import cxx.Ptr;

@:include("cocos2d.h")
@:native("::cocos2d::Scene")
extern class Scene extends Node
{
    @:native("::cocos2d::Scene::create")
    static function create() : Ptr<Scene>;
}