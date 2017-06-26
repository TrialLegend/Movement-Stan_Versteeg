package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Ball extends MovieClip {
		
		
			//propperties
		
			public var xvel:Number;
			public var yvel:Number;
			public var speed:Number = 8;
			
			public function Ball() {
				
				// constructor code
				
				addEventListener(Event.ENTER_FRAME,Update);
				
				
				xvel = 1;
				yvel = -1;
			}
			
			public function Update(e:Event) {
				x += xvel * speed;
				y += yvel * speed;
			
				Coll();
			}
			
			public function Coll() {
				
				if (this.x >= stage.stageWidth-this.width) {
				xvel *= -1;
			}
			
			if (this.x <= 0) {
				xvel *= -1;
			}
			
			if (this.y >= stage.stageHeight-this.height) {
				yvel *= -1;
			}
			
			if (this.y <= 0) {
				yvel *= -1
				
			}						
		}
	}
}
