package cc.base;

import cxx.num.UInt32;
import cc.base.Ptr;

@:native("::cocos2d::Ref*")
extern class Ref
{
	@:nativeFunctionCode("({this} == nullptr)")
	public function isNull(): Bool;

    @:virtual
    public function destructor() : Void;

    public function retain() : Void;
    public function release() : Void;
    public function autorelease() : Ptr<Ref>;

    @:const
    public function getReferenceCount() : UInt32;
}