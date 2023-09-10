package levels;

import flixel.FlxState;
import flixel.util.FlxColor;
import player.Player;
import enemy.Enemy;
import enemy.EnemySpider;

import flixel.group.FlxGroup;

class DebugLevel extends FlxState
{

    var player : Player;

    var enemies : FlxTypedGroup<Enemy>;

    override public function create()
    {
        super.create();

        this.bgColor = flixel.util.FlxColor.BLACK;

        // Player
        this.player = new Player();
        add(this.player);

        this.enemies = new FlxTypedGroup<Enemy>();

        for(x in 0...5)
        {
            var enemy = new EnemySpider(200,50 + (10 * x));
            this.enemies.add(enemy);
        }

        add(this.enemies);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        //flixel.FlxG.camera.follow(this.player);

        //flixel.FlxG.collide(this.player, this.pickups, handleCollisions);
    }

    private function handleCollisions(a,b)
    {
        trace(b.name);
    }
}
