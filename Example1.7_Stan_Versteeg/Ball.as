package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	
	public class Ball extends MovieClip {
		
		
			//propperties
		
			var velocity:Vector2;
			var location:Vector2;
			var acceleration:Vector2;
			var topspeed:Number;
			var mouse:Vector2
			var gravity:Vector2;
			var angle;
			var direction:Vector2;
			
			public function Ball() {
				
				
				// constructor code
				
				mouse = new Vector2 (mouseX, mouseY);
				velocity = new Vector2(0,0);
				acceleration = new Vector2(0,0);
				location = new Vector2(100,100);
				//gravity = new Vector2(0.1,1);
				topspeed = 10;
				
				
				addEventListener(Event.ENTER_FRAME,Update);
				
			}
			
			public function Update(e:Event) {

				
				x = location.x;
				y = location.y;
				//acceleration = new Vector2(mouseX, mouseY);
				velocity.add(acceleration);
				location.add(velocity);
				velocity.limit(topspeed);
							

		}
		public function ET() {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, KeyDownListener);
		}
		
		public function KeyDownListener(e:KeyboardEvent) {
			if (e.keyCode == Keyboard.LEFT) {
				this.rotation = -180;
			}
			if (e.keyCode == Keyboard.UP) {
				this.rotation = -90;
			}
			if (e.keyCode == Keyboard.RIGHT) {
				this.rotation = 0;
			}
			if (e.keyCode == Keyboard.DOWN) {
				this.rotation = 90;
			}
		}		
	}						
}
			
		