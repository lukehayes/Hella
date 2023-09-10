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

        this.enemies = new FlxTypedGroup<Enemy>();

        for(x in 0...5)
        {
            var enemy = new EnemySpider(200,50 + (10 * x));
            this.enemies.add(enemy);
        }

        this.enemies.add(new Tadpole(280, 144 / 2));
        add(this.enemies);

        this.bullets = new FlxTypedGroup<Bullet>();
        add(this.bullets);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        //flixel.FlxG.camera.follow(this.player);

        //flixel.FlxG.collide(this.bullets, this.enemies, handleCollisions);

        if(FlxG.keys.justPressed.SPACE)
        {
            trace("Shoot");
            var bullet = new Bullet(player.x + 16, player.y + 4);
            this.bullets.add(bullet);
            FlxG.camera.shake(0.008,0.1);
            FlxG.camera.flash(FlxColor.fromRGB(255,255,255,50), 0.2);
        }
    }

    private function handleCollisions(a,b)
    {
        trace(b.name);
    }
}
