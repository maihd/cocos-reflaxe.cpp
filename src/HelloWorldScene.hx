package;

import cc.cc2d.LabelTTF;
import cc.base.Director;
import cc.cc2d.Sprite;
import cc.cc2d.Scene;
import cc.cc2d.Node;
import cc.math.Vec2;

import cxx.Ptr;

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

        final origin = Director.getInstance().getVisibleOrigin();
        final visibleSize = Director.getInstance().getVisibleSize();

        final label = LabelTTF.create("Hello World", "fonts/Marker Felt.ttf", 24);
        if (label.isNull())
        {
            problemLoading("'fonts/Marker Felt.ttf'");
        }
        else
        {
            // position the label on the center of the screen
            label.setPosition(new Vec2(origin.x + visibleSize.width/2,
                                    origin.y + visibleSize.height - label.getContentSize().height));
    
            // add the label as a child to this layer
            this.addChild(label, 1);
        }

        final sprite = Sprite.create("HelloWorld.png");
        sprite.x = visibleSize.width * 0.5;
        sprite.y = visibleSize.height * 0.5;
        this.addChild(sprite);

        return true;
    }

	function problemLoading(arg0: String) : Void {
		trace("Error while loading: " + arg0);
	}
}