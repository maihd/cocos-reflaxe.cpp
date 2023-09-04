package cc;

import cxx.ConstCharPtr;
import cxx.num.Float32;
import cxx.Ptr;

@:native("::cocos2d::ApplicationProtocol::Platform")
extern enum PlatformType
{
    OS_WINDOWS;     /**< Windows */
    OS_LINUX;       /**< Linux */
    OS_MAC;         /**< Mac OS X*/
    OS_ANDROID;     /**< Android */
    OS_IPHONE;      /**< iPhone */
    OS_IPAD;        /**< iPad */
    OS_BLACKBERRY;  /**< BlackBerry */
    OS_NACL;        /**< Native Client in Chrome */
    OS_EMSCRIPTEN;  /**< Emscripten */
    OS_TIZEN;       /**< Tizen */
    OS_WINRT;       /**< Windows Runtime Applications */
    OS_WP8;         /**< Windows Phone 8 Applications */
}

@:native("::cocos2d::LanguageType")
extern enum LanguageType
{
    ENGLISH;
    CHINESE;
    FRENCH;
    ITALIAN;
    GERMAN;
    SPANISH;
    DUTCH;
    RUSSIAN;
    KOREAN;
    JAPANESE;
    HUNGARIAN;
    PORTUGUESE;
    ARABIC;
    NORWEGIAN;
    POLISH;
    TURKISH;
    UKRAINIAN;
    ROMANIAN;
    BULGARIAN;
    BELARUSIAN;
}

@:unreflective
@:unsafePtrType
@:include("cocos2d.h")
@:native("::cocos2d::Application")
extern abstract class Application extends ApplicationProtocol
{
    public function new();
    public function destructor() : Void;
    
    public function run() : cxx.num.Int32;

    public static function getInstance() : Application;

    public override function setAnimationInterval(interval: Float32) : Void;
    
    public override function getCurrentLanguage() : LanguageType;
    
    public override function getCurrentLanguageCode() : ConstCharPtr;

    public override function getTargetPlatform() : PlatformType;

    public override function getVersion() : String;

    public override function openURL(url: String) : Bool;
}