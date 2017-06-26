package  {
	
	import flash.display.MovieClip;
	
	
	public class Main extends MovieClip {

		var a:Ball;
		var b:Ball;
		
		public function Main() {
			trace("hello");
			
			a = new Ball();
			a.x = 100;
			a.y = 100;
			addChild(a);
			
			a.ET();
			
			
			//b = new Ball();
			//b.x = 250;
			//b.y = 100;
			//addChild(b);
			
		}
	}
	
}
