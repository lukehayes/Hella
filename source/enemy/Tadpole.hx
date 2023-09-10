package enemy;

import enemy.Enemy;

/**
    Enemy Tadpole
**/
class Tadpole extends Enemy
{
    public function new(x:Float, y:Float)
    {
        super(x,y);
        loadGraphic("assets/images/tadpole.png");

        this.health = 1;
    }


    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        this.velocity.x  += 20;
        //this.x -= 10 * elapsed;
        //this.y += Math.sin(this.x/10.0);

        if(this.x < -200)
        {
            this.x = 300;
        }
    }
}
