package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
    public function new()
    {
        super();
        addChild(new FlxGame(256, 144, levels.DebugLevel, 60,60, true));
    }
}
