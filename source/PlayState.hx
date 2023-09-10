package;

import flixel.FlxState;
import flixel.util.FlxColor;
import player.Player;

import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState
{

    var player : Player;

    override public function create()
    {
        super.create();

        this.bgColor = flixel.util.FlxColor.BLACK;

        // Player
        this.player = new Player();
        add(player);
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
