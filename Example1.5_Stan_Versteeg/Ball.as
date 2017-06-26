package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Ball extends MovieClip {
		
		
			//propperties
		
			var velocity:Vector2;
			var location:Vector2;
			var acceleration:Vector2;
			var topspeed:Number;
			var mouse:Vector2
			var gravity:Vector2;
			
			public function Ball() {
				
				
				// constructor code
				
				mouse = new Vector2 (mouseX, mouseY);
				velocity = new Vector2(0,0);
				acceleration = new Vector2(0,0);
				location = new Vector2(100,100);
				gravity = new Vector2(0.1,2);
				topspeed = 10;
				
				
				addEventListener(Event.ENTER_FRAME,Update);
				
			}
			
			public function Update(e:Event) {
				trace("2");
				//mouse = new Vector2 (mouseX, mouseY);
				//mouse.sub(location);
				//mouse.normalize();
				//acceleration.add(mouse);
				acceleration.add(gravity);
				acceleration.normalize();
				velocity.add(acceleration);
				location.add(velocity);
				
				x = location.x;
				y = location.y;
				//acceleration = new Vector2(mouseX, mouseY);
				//acceleration.normalize();
				//acceleration.multS(1);
				//velocity.add(acceleration);
				//location.add(velocity);
				//velocity.limit(topspeed);
				
				
				
				Coll();
			}
			
			public function Coll() {
				
				trace(stage)
				if (this.x >= stage.stageWidth-(this.width/2)) {
					location.x = stage.stageWidth-(this.width/2);
					velocity.x *= -1;
					acceleration.x *= -1;
					//x = 20;
					//y = 20;
				}
			
				if (this.x <= this.width/2) {
					location.x = this.width/2;
					velocity.x *= -1;
					acceleration.x *= -1;
				}
			
				if (this.y >= stage.stageHeight-(this.height/2)) {
					location.y = stage.stageHeight-(this.height/2);
					velocity.y *= -1;
					acceleration.y *= -1;
					//x = 20;
					//y = 20;
				}
			
				if (this.y <= this.height/2) {
					location.y = this.height/2;
					velocity.y *= -1
					acceleration.y *= -1;
				
				}						
			}
			
			//public function applyForce(Vector2 force) {
			  // Newton’s second law at its simplest.
				//pvector = vector2.
			 // acceleration = force;
			}
	}
//}
