package cc.base;

import cc.math.Vec2;
import cc.math.Size;
import cc.platform.GLView;
import cc.cc2d.Scene;

import cxx.Ptr;
import cxx.ConstCharPtr;

@:native("::cocos2d::Director::Projection")
extern enum Projection
{
    /// Sets a 2D projection (orthogonal projection).
    _2D;
    
    /// Sets a 3D projection with a fovy=60, znear=0.5f and zfar=1500.
    _3D;
    
    /// It calls "updateProjection" on the projection delegate.
    CUSTOM;
    
    /// Default projection is 3D projection.
    // DEFAULT = _3D,
}

@:final
@:include("cocos2d.h")
@:native("::cocos2d::Director")
extern class Director extends Ref
{
    /** Director will trigger ann event before set next scene. */
    static final EVENT_BEFORE_SET_NEXT_SCENE: ConstCharPtr;
    /** Director will trigger an event after set next scene. */
    static final EVENT_AFTER_SET_NEXT_SCENE: ConstCharPtr;
    
    /** Director will trigger an event when projection type is changed. */
    static final EVENT_PROJECTION_CHANGED: ConstCharPtr;
    /** Director will trigger an event before Schedule::update() is invoked. */
    static final EVENT_BEFORE_UPDATE: ConstCharPtr;
    /** Director will trigger an event after Schedule::update() is invoked. */
    static final EVENT_AFTER_UPDATE: ConstCharPtr;
    /** Director will trigger an event while resetting Director */
    static final EVENT_RESET: ConstCharPtr;
    /** Director will trigger an event after Scene::render() is invoked. */
    static final EVENT_AFTER_VISIT: ConstCharPtr;
    /** Director will trigger an event after a scene is drawn, the data is sent to GPU. */
    static final EVENT_AFTER_DRAW: ConstCharPtr;
    /** Director will trigger a event before a scene is drawn, right after clear. */
    static final EVENT_BEFORE_DRAW: ConstCharPtr;

    static function getInstance() : Ptr<Director>;

    function new();
    function destructor() : Void;

    function init() : Bool;

    function getOpenGLView() : Ptr<GLView>;
    function setOpenGLView(openGLView: Ptr<GLView>) : Void;

    function getRunningScene() : Ptr<Scene>;
    function runWithScene(scene: Ptr<Scene>) : Void;
    function replaceScene(scene: Ptr<Scene>) : Void;

    function getVisibleSize() : Size;
    function getVisibleOrigin() : Vec2;

    function isDisplayStats() : Bool;
    function setDisplayStats(show: Bool) : Void;
}