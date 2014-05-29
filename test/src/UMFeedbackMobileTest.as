package
{
	import com.czqsoft.anes.UMFeedback;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class UMFeedbackMobileTest extends Sprite
	{
		public function UMFeedbackMobileTest()
		{
			super();
			
			UMFeedback.init();
			
			var s:Sprite = new Sprite();
			s.graphics.beginFill(0x0);
			s.graphics.drawRect(0, 0, 200, 200);
			s.graphics.endFill();
			s.addEventListener(MouseEvent.CLICK, function(e:*):void{
				trace(123);
				UMFeedback.open();
			});
			
			addChild(s);
		}
	}
}