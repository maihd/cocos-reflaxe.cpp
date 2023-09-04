package;

import cc.math.Rect;
import cc.platform.GLViewImpl;
import cc.base.Director;
import cxx.num.Float32;
import cc.Application;

class AppDelegate extends Application
{
    public function new()
    {
        super();
    }

	public function applicationDidFinishLaunching() : Bool
    {
        var glView = Director.getInstance().getOpenGLView();
        if (glView.isNull())
        {
            glView = GLViewImpl.createWithRect("HaxeCocosCpp", new Rect(0, 0, 800, 600));   
            Director.getInstance().setOpenGLView(glView);
        }

        Director.getInstance().setDisplayStats(true);
        Director.getInstance().runWithScene(HelloWorldScene.createScene());

		return true;
	}

	public function applicationDidEnterBackground() : Void
    {

    }

	public function applicationWillEnterForeground() : Void
    {

    }
}