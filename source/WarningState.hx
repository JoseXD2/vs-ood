package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class Warning2 extends MusicBeatState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
		
		var warning:FlxSprite = new FlxSprite(0, 0);
		warning.loadGraphic("assets/images/warning.png", false, 1280, 720);
		add(warning);
		
		#if mobileC
		addVirtualPad(NONE, A_B);
		#end
	}
	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
