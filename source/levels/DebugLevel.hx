package levels;

import flixel.FlxState;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;
import player.Player;

import enemy.Enemy;
import enemy.EnemySpider;
import enemy.Tadpole;

import bullet.Bullet;

class DebugLevel extends FlxState
{
    var player : Player;

    var enemies : FlxTypedGroup<Enemy>;

    var bullets : FlxTypedGroup<Bullet>;

    override public function create()
    {
        super.create();

        this.bgColor = flixel.util.FlxColor.BLACK;

        // Player
        this.player = new Player();
        add(this.player);

        // Enemies
        this.enemies = new FlxTypedGroup<Enemy>();
        add(this.enemies);

        var e = new EnemySpider(200, 100);
        e.health = 3;
        this.enemies.add(e);


        // Bullets
        this.bullets = new FlxTypedGroup<Bullet>();
        add(this.bullets);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        //flixel.FlxG.camera.follow(this.player);
        flixel.FlxG.overlap(this.bullets, this.enemies, handleCollisions);

        if(FlxG.keys.justPressed.SPACE)
        {
            trace("Space Pressed");
            var b = new Bullet(this.player.x + 6,this.player.y + 3);
            this.bullets.add(b);
        }
    }

    private function handleCollisions(a,b)
    {
    }
}
