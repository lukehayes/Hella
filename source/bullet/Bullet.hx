package bullet;

import flixel.FlxSprite;

/**
    Base class for all bullets.
**/
class Bullet extends FlxSprite
{
    var speed : Float;

    public function new(x:Float, y:Float, speed:Float = 150)
    {
        super(x,y);
        loadGraphic('assets/images/bullet.png');

        this.speed = speed;
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        this.x += speed * elapsed;
    }
}
