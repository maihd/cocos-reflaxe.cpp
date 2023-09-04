package cc;

import cc.Application.PlatformType;
import cc.Application.LanguageType;
import cxx.num.Float32;
import cxx.ConstCharPtr;
import cxx.num.Int32;
import cxx.num.UInt32;

@:include("cocos2d.h")
extern abstract class ApplicationProtocol
{
    @:virtual
    function destructor() : Void;

    @:virtual
    function initGLContextAttrs() : Void;

    abstract function applicationDidFinishLaunching() : Bool;
    abstract function applicationDidEnterBackground() : Void;
    abstract function applicationWillEnterForeground() : Void;

    abstract function setAnimationInterval(interval: Float32) : Void;

    abstract function getCurrentLanguage() : LanguageType;
    abstract function getCurrentLanguageCode() : ConstCharPtr;

    abstract function getTargetPlatform() : PlatformType;
    abstract function getVersion() : String;

    abstract function openURL(url: String) : Bool;
}