package enemy;

import enemy.Enemy;

/**
    Enemy Spider
**/
class EnemySpider extends Enemy
{
    public function new(x:Float, y:Float)
    {
        super(x,y);
        loadGraphic("assets/images/enemy-spider.png");
        flipX = true;

        this.health = 1;
    }


    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        this.x -= 10 * elapsed;
    }
}
