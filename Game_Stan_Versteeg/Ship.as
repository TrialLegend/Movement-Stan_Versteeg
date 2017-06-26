package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Ship extends MovieClip {
		
		
			//propperties
		
			var velocity:Vector2;
			var location:Vector2;
			var acceleration:Vector2;
			var topspeed:Number;
			var mouse:Vector2
			
			public function Ship() {
				
				
				// constructor code
				
				mouse = new Vector2 (mouseX, mouseY);
				velocity = new Vector2(0,0);
				acceleration = new Vector2(0,0);
				location = new Vector2(100,100);
				topspeed = 0;
				
				addEventListener(Event.ENTER_FRAME,Update);
				
			}
			
			public function Update(e:Event) {
				//trace("2");
				mouse = new Vector2 (mouseX, mouseY);
				mouse.sub(location);
				mouse.normalize();
				acceleration.add(mouse);
				velocity.add(acceleration);
				
				x += velocity.x;
				y += velocity.y;
				acceleration = new Vector2(mouseX, mouseY);
				//acceleration.normalize();
				//acceleration.multS(1);
				//velocity.add(acceleration);
				//location.add(velocity);
				velocity.limit(topspeed);
				
			}
	}
}
