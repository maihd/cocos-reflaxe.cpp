package cc.base;

import cxx.Ptr;
import cxx.num.UInt32;

@:native("::cocos2d::Ref")
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