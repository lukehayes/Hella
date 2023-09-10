package bullet;

import flixel.FlxSprite;

/**
    Base class for all bullets.
**/
class Bullet extends FlxSprite
{
    public function new(x:Float, y:Float)
    {
        super(x,y);
        loadGraphic('assets/images/bullet.png');
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        this.x += 40 * elapsed;
    }
}
