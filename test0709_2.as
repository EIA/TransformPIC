package {
	import flash.display.Sprite;
	import com.moulin_orange.as3.display.TransformPIC;
	import flash.events.Event;
	public class test0709_2 extends Sprite {
		private var _transformPIC:TransformPIC;
		private var _transformPIC2:TransformPIC;
		public function test0709_2():void {
			trace("test0709_2");
			_transformPIC = new TransformPIC();
			addChild(_transformPIC);
			//
			_transformPIC.setBitmapData(new girl(500, 500));
			//_transformPIC.setPos(100, 100, 300, 100, 100, 300, 300, 300);
			_transformPIC.setSmooth(true);
			//
			addEventListener(Event.ENTER_FRAME, _eff);
		}
		private function _eff(evt:Event):void {
			_transformPIC.setPos(c_TL.x, c_TL.y, c_TR.x, c_TR.y, c_BL.x, c_BL.y, c_BR.x, c_BR.y);
		}
	}
}