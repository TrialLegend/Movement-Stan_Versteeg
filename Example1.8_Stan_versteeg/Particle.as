package {
	import flash.display.MovieClip;

	public class Particle extends MovieClip {

		var velocity: Vector2;

		public function Particle() {
			//this.graphics.beginFill(0x0000FF, 1);
			//this.graphics.drawCircle(0, 0, 3);
			//this.graphics.endFill();
			this.velocity = new Vector2(Math.random() - 0.5, Math.random() - 0.5);
		}

		public function update() {
			//trace(velocity.x + "," + velocity.y);

			this.x += velocity.x;
			this.y += velocity.y;
		}

	}

}