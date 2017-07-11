package {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.display.Sprite;


	public class ParticleSystem extends MovieClip {

		var particleCount: Number = 50;
		var particleArray: Array = new Array();

		public function ParticleSystem() {
			trace("partSys constr");
			for (var j = 0; j < particleCount; j++) {
				var particle:Particle = new Particle();
				
				addChild(particle); 
				particleArray.push(particle);
				
				particleArray[j].x = this.x;
				particleArray[j].y = this.y;

				addEventListener(Event.ENTER_FRAME, enterFrameHandler);
			}
		}
		
		public function enterFrameHandler(event: Event): void {

			for (var j = 0; j < particleArray.length; j++) {
				
				particleArray[j].update();
				
			}
		}
	}
}