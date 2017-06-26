package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Ball extends MovieClip {
		
		
			//propperties
		
			var vectorSpeed:Vector2;
			var location:Vector2;
			var acceleration:Vector2;
			var topspeed:Number;
			//var mouse:Vector2;
			
			public function Ball() {
				
				
				// constructor code
				
				vectorSpeed = new Vector2(100,100);
				acceleration = new Vector2(1,1);
				location = new Vector2(0,0);
				topspeed = 10;
				//mouse = new Vector2(0,0);
				
				
				addEventListener(Event.ENTER_FRAME,Update);
				
			}
			
			public function Update(e:Event) {
				vectorSpeed.add(acceleration);
				
				x += vectorSpeed.x;
				y += vectorSpeed.y;
				acceleration.normalize();
				acceleration.multS(1);
				vectorSpeed.add(acceleration);
				location.add(vectorSpeed);
				vectorSpeed.limit(topspeed);
				
				
			
				Coll();
			}
			
			public function Coll() {
				
				if (this.x >= stage.stageWidth-this.width) {
					vectorSpeed.x *= -1;
					acceleration.x *= -1;
					//x = 20;
					//y = 20;
				}
			
				if (this.x <= 0) {
					vectorSpeed.x *= -1;
					acceleration.x *= -1;
				}
			
				if (this.y >= stage.stageHeight-this.height) {
					vectorSpeed.y *= -1;
					acceleration.y *= -1;
					//x = 20;
					//y = 20;
				}
			
				if (this.y <= 0) {
					vectorSpeed.y *= -1
					acceleration.y *= -1;
				
				}						
			}
	}
}
