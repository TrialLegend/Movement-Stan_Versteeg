package  {
	
	import flash.display.MovieClip;
	
	
	public class Main extends MovieClip {

		var a:ParticleSystem;
		//var b:Ball;
		
		public function Main() {
			trace("hello");
			
			a = new ParticleSystem();
			a.x = 275;
			a.y = 200;
			addChild(a);
			
			//a.ET();
			
			
			//b = new Ball();
			//b.x = 250;
			//b.y = 100;
			//addChild(b);
			
			//b.ET();
			
		}
	}
	
}
