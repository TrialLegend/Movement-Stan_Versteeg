package {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;


	public class Ball extends MovieClip {


		//propperties

		var velocity: Vector2;
		var location: Vector2;
		var acceleration: Vector2;
		var topspeed: Number;
		var mouse: Vector2
		//var gravity:Vector2;
		var angle;
		var direction: Vector2;
		//var friction:Number = 0.2;

		public function Ball() {


			// constructor code

			mouse = new Vector2(mouseX, mouseY);
			velocity = new Vector2(0, 0);
			acceleration = new Vector2(0, 0);
			location = new Vector2(100, 100);
			//gravity = new Vector2(0.1,1);
			topspeed = 10;


			addEventListener(Event.ENTER_FRAME, Update);

		}
		var l: Boolean;
		var r: Boolean;
		var u: Boolean;
		var d: Boolean
		public function Update(e: Event) {

			if (l) {
				this.acceleration.add(new Vector2(-1, 0));
				//friction = 0.2;
				//trace(x)
			} else {
				if (acceleration.x < 0) {

					this.acceleration.add(new Vector2(0.04, 0));
					//friction = 0.2;
					//trace(x)
				}
			}

			if (r) {
				this.acceleration.add(new Vector2(1, 0));
				//friction = 0.2;
				//trace(x)
			} else {
				if (acceleration.x > 0) {

					this.acceleration.add(new Vector2(-0.04, 0));
					//friction = 0.2;
					//trace(x)
				}
			}

			if (u) {
				this.acceleration.add(new Vector2(0, -1));
				//friction = 0.2;
				//trace(x)
			} else {
				if (acceleration.y < 0) {

					this.acceleration.add(new Vector2(0, 0.04));
					//friction = 0.2;
					//trace(x)
				}
			}

			if (d) {
				this.acceleration.add(new Vector2(0, 1));
				//friction = 0.2;
				//trace(x)
			} else {
				if (acceleration.y > 0) {

					this.acceleration.add(new Vector2(0, -0.04));
					//friction = 0.2;
					//trace(x)
				}
			}

			x = location.x;
			y = location.y;
			//acceleration = new Vector2(mouseX, mouseY);
			velocity.add(acceleration);
			location.add(velocity);
			this.rotation = this.velocity.heading() * (180 / Math.PI);
			velocity.limit(topspeed);
			velocity.multS(0.5);
			//trace(velocity);

		}
		public function ET() {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, KeyDownListener);
			stage.addEventListener(KeyboardEvent.KEY_UP, KeyUpListener);
		}

		public function KeyDownListener(e: KeyboardEvent) {
			if (e.keyCode == Keyboard.LEFT) {
				//this.rotation = 180;
				l = true;
			}
			if (e.keyCode == Keyboard.UP) {
				//this.rotation = -90;
				u = true;
			}
			if (e.keyCode == Keyboard.RIGHT) {
				//this.rotation = 0;
				r = true;
			}
			if (e.keyCode == Keyboard.DOWN) {
				//this.rotation = 90;
				this.acceleration.add(new Vector2(0, 1));
				//friction = 0.2;
			}
		}
		public function KeyUpListener(e: KeyboardEvent) {
			if (e.keyCode == Keyboard.LEFT) {
				l = false;
			}
			if (e.keyCode == Keyboard.UP) {
				u = false;
			}
			if (e.keyCode == Keyboard.RIGHT) {
				r = false;
			}
			if (e.keyCode == Keyboard.DOWN) {
				//this.rotation = 90;
				this.acceleration.add(new Vector2(0, 1));
				//friction = 0.2;
			}
		}
	}
}