package com.esri.ags.skins
{
    import flash.utils.*;
    import mx.core.*;

    public class TemplatePickerSkin_loader extends MovieClipLoaderAsset
    {
        public var dataClass:Class;
        private static var bytes:ByteArray = null;

        public function TemplatePickerSkin_loader()
        {
            this.dataClass = TemplatePickerSkin_loader_dataClass;
            initialWidth = 400 / 20;
            initialHeight = 400 / 20;
            return;
        }// end function

        override public function get movieClipData() : ByteArray
        {
            if (bytes == null)
            {
                bytes = ByteArray(new this.dataClass());
            }
            return bytes;
        }// end function

    }
}
