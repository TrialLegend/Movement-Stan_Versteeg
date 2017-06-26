package  {
	
	import flash.display.MovieClip;
	
	
	public class Top extends MovieClip {
		
		var main:Main;
		var vecLocation:Vector2;
		var vecVelocity:Vector2;
		var vecAcceleration:Vector2;
		var sizeMultiplier
		
		public function Top(_main) {
			
			this.main = _main;
			this.width *= (1, 2.5, 1.5, 2 + Math.random() * (1 - 0.5));
			this.height *= (1, 1.5, 2 + Math.random() * (1 - 0.5));
			vecVelocity = new Vector2(-1, 0);
			vecAcceleration = new Vector2(-randnum(1,2), 0);
			trace(vecAcceleration.x);
			vecLocation = new Vector2(main.stage.stageWidth + 100,Math.random() * main.stage.stageHeight); 
			
			
			// constructor code
			
			
		}
		public function Update(){
			vecVelocity.add(vecAcceleration);
			vecLocation.add(vecVelocity)
			this.x = vecLocation.x;
			this.y = vecLocation.y;
			
		}
		
		private function randnum(min:int, max:int):Number {
			return (Math.floor(Math.random() * (max - min + 1)) + min);
		}
		
	}
	
}
