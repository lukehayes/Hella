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

        this.health = 1;
    }
}
