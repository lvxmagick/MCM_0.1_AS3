package mcm
{
	
	import Shared.AS3.*;
	import flash.display.MovieClip;
	import scaleform.gfx.Extensions;
	import scaleform.gfx.TextFieldEx;
	
	public class UniversalListEntry extends Shared.AS3.BSScrollingListEntry
	{
		
		public var modBg:MovieClip;
		
		public function UniversalListEntry()
		{
			Extensions.enabled = true;
			TextFieldEx.setTextAutoSize(this.textField, TextFieldEx.TEXTAUTOSZ_SHRINK);
		}
		
		override public function SetEntryText(_arg_1:Object, _arg_2:String)
		{
			super.SetEntryText(_arg_1, _arg_2);
			
			if (_arg_1.filterFlag == 2)
			{
				textField.x = 30;
				textField.width = 218;
			}
			else
			{
				textField.x = 10;
				textField.width = 238;
			}
			//if (_arg_1.hasOwnProperty("numPages")){ //for debug
			//	textField.text = textField.text + " " + String(_arg_1.numPages);
			//}
			/*if (_arg_1.hasOwnProperty("pageSelected"))
			   {
			   this.textField.textColor = ((_arg_1.pageSelected) ? 0 : 0xFFFFFF);
			   this.modBg.alpha = ((_arg_1.pageSelected) ? 1 : 0);
			   }*/
			
			if (_arg_1.hasOwnProperty("pageSelected"))
			{
				if (_arg_1.pageSelected)
				{
					if (stage && stage.focus == MCM_Menu.instance.HelpPanel_mc.HelpList_mc)
					{
						this.textField.textColor = 0;
						this.modBg.alpha = 1;
					}
					else
					{
						this.textField.textColor = 0;
						this.modBg.alpha = 0.5;
					}
					
				}
				else
				{
					this.textField.textColor = 0xFFFFFF;
					this.modBg.alpha = 0;
				}
			}
			if (stage && stage.focus == MCM_Menu.instance.HelpPanel_mc.HelpList_mc)
			{
				this.border.alpha = (this.selected) ? 1 : 0;
			}
			else
			{
				this.border.alpha = (this.selected) ? 0.5 : 0;
			}
		
			//this.border.alpha = 0;			
		/*var _local_3:ColorTransform;
		   _local_3 = this.page_marker_mc.transform.colorTransform;
		   _local_3.redOffset = ((this.selected) ? -255 : 0);
		   _local_3.greenOffset = ((this.selected) ? -255 : 0);
		   _local_3.blueOffset = ((this.selected) ? -255 : 0);
		   this.page_marker_mc.transform.colorTransform = _local_3;
		   this.page_tree_marker_mc.transform.colorTransform = _local_3;
		   this.page_last_tree_marker_mc.transform.colorTransform = _local_3;	*/
		}
	}

}
