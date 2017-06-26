 package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.utils.Timer;
	
	
	public class Main extends MovieClip {
		
		public var blocks:Array = new Array();
		public var myShip:Ship;
		public var topMap:Top;
		var spawnBlockTimer:Timer;
		
		public function Main() {
			
			spawnBlockTimer = new Timer(1000);
			spawnBlockTimer.addEventListener(TimerEvent.TIMER, spawnBlock);
			spawnBlockTimer.start();
			// constructor code
			
			myShip = new Ship();
			this.addChild(myShip);
			
			//topMap = new Top(this);
			//this.addChild(topMap);
			
			addEventListener(Event.ENTER_FRAME,Update);
		}
		
		
		public function Update(e:Event) {
			for each (var a:Top in blocks){
				a.Update();
			}
			
			//if( topMap.hitTestObject(myShip) ) {
				//trace("BOOOOM");
				
			//}
			
			
		}
		function spawnBlock(e:TimerEvent){
			blocks.push(new Top(this));
			stage.addChild(blocks[blocks.length - 1]);
			
		}
	}
}
