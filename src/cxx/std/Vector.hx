package cxx.std;

@:cxxStd
@:cppStd
@:nativeTypeCode("::std::vector<{type0}>")
@:valueType
@:include("vector", true)
extern class Vector<T> {
	public function new();

	public function at(pos: cxx.num.SizeT): T;
	public function front(): T;
	public function back(): T;
	public function data(): cxx.CArray<T>;

	public function empty(): Bool;
	public function size(): cxx.num.SizeT;
	public function maxSize(): cxx.num.SizeT;

	public function fill(value: T): Void;

    @:nativeName("push_back")
    public function pushBack(value: ConstRef<T>) : Void;
}