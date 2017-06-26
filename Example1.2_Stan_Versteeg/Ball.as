package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Ball extends MovieClip {
		
		
			//propperties
		
			var vectorSpeed:Vector2;
			
			public function Ball() {
				
				
				// constructor code
				
				vectorSpeed = new Vector2(8,-8);
				
				addEventListener(Event.ENTER_FRAME,Update);
				
			}
			
			public function Update(e:Event) {
				
				x += vectorSpeed.x;
				y += vectorSpeed.y;
			
				Coll();
			}
			
			public function Coll() {
				
				if (this.x >= stage.stageWidth-this.width) {
				vectorSpeed.x *= -1;
			}
			
			if (this.x <= 0) {
				vectorSpeed.x *= -1;
			}
			
			if (this.y >= stage.stageHeight-this.height) {
				vectorSpeed.y *= -1;
			}
			
			if (this.y <= 0) {
				vectorSpeed.y *= -1
				
			}						
		}
	}
}
