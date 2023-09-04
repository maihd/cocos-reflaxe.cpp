package;

import haxe.display.JsonModuleTypes.JsonEnumFields;
import cc.base.Director;
import cc.cc2d.Sprite;
import cc.cc2d.Scene;
import cc.base.Ptr;
import cc.cc2d.Node;

class Empty
{
    public function new() {

    }
}

class HelloWorldScene extends Node
{
    public static function create() : Ptr<HelloWorldScene>
    {
        var helloWorldScene: Ptr<HelloWorldScene> = new HelloWorldScene();
        if (helloWorldScene.isNull())
        {
            return null;   
        }

        if (!helloWorldScene.init())
        {
            helloWorldScene.release();
            return null;
        }

        return helloWorldScene;
    }

    public static function createScene() : Ptr<Scene>
    {
        var helloWorldScene = create();
        var scene = Scene.create();

        scene.addChild(helloWorldScene);

        return scene;
    }

    public function new()
    {
        super();
    }

    public override function init() : Bool
    {
        if (!super.init())
        {
            return false;
        }

        final winSize = Director.getInstance().getVisibleSize();

        var sprite = Sprite.create("HelloWorld.png");
        sprite.x = winSize.width * 0.5;
        sprite.y = winSize.height * 0.5;
        addChild(sprite);

        // This code should not be compiled
        // var empty: Ptr<Empty> = new Empty();
        // addChild(empty);

        return true;
    }
}