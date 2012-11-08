package com.esri.ags.skins
{
    import com.esri.ags.components.*;
    import flash.filters.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.core.*;
    import mx.events.*;
    import mx.graphics.*;
    import spark.components.*;
    import spark.components.supportClasses.*;
    import spark.primitives.*;

    public class ScaleBarSkin extends Skin implements IBindingClient
    {
        public var _ScaleBarSkin_Line1:Line;
        public var _ScaleBarSkin_Line2:Line;
        public var _ScaleBarSkin_Line3:Line;
        public var _ScaleBarSkin_Line4:Line;
        private var _123446844labelMetric:Label;
        private var _63202158labelUS:Label;
        private var _122811344solidColorStroke:SolidColorStroke;
        private var __moduleFactoryInitialized:Boolean = false;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _213507019hostComponent:ScaleBar;
        private static var _watcherSetupUtil:IWatcherSetupUtil2;

        public function ScaleBarSkin()
        {
            var target:Object;
            var watcherSetupUtilClass:Object;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            var bindings:* = this._ScaleBarSkin_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_esri_ags_skins_ScaleBarSkinWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (propertyName:String)
            {
                return target[propertyName];
            }// end function
            , function (propertyName:String)
            {
                return [propertyName];
            }// end function
            , bindings, watchers);
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            this.minWidth = 200;
            this.filters = [this._ScaleBarSkin_GlowFilter1_c()];
            this.mxmlContent = [this._ScaleBarSkin_Line1_i(), this._ScaleBarSkin_Line2_i(), this._ScaleBarSkin_Line3_i(), this._ScaleBarSkin_Line4_i(), this._ScaleBarSkin_Label1_i(), this._ScaleBarSkin_Label2_i()];
            this._ScaleBarSkin_SolidColorStroke1_i();
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            return;
        }// end function

        override public function set moduleFactory(factory:IFlexModuleFactory) : void
        {
            super.moduleFactory = factory;
            if (this.__moduleFactoryInitialized)
            {
                return;
            }
            this.__moduleFactoryInitialized = true;
            return;
        }// end function

        override public function initialize() : void
        {
            super.initialize();
            return;
        }// end function

        override protected function measure() : void
        {
            this.labelUS.text = this.hostComponent.textUS;
            this.labelUS.x = this.hostComponent.lengthUS - this.labelUS.getExplicitOrMeasuredWidth() * 0.5;
            this.labelMetric.text = this.hostComponent.textMetric;
            this.labelMetric.x = this.hostComponent.lengthMetric - this.labelMetric.getExplicitOrMeasuredWidth() * 0.5;
            super.measure();
            return;
        }// end function

        private function _ScaleBarSkin_SolidColorStroke1_i() : SolidColorStroke
        {
            var _loc_1:* = new SolidColorStroke();
            _loc_1.color = 0;
            _loc_1.weight = 2;
            this.solidColorStroke = _loc_1;
            BindingManager.executeBindings(this, "solidColorStroke", this.solidColorStroke);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_GlowFilter1_c() : GlowFilter
        {
            var _loc_1:* = new GlowFilter();
            _loc_1.alpha = 1;
            _loc_1.blurX = 3;
            _loc_1.blurY = 3;
            _loc_1.color = 16777215;
            _loc_1.strength = 7;
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Line1_i() : Line
        {
            var _loc_1:* = new Line();
            _loc_1.xFrom = 0;
            _loc_1.xTo = 0;
            _loc_1.yFrom = 12;
            _loc_1.yTo = 28;
            _loc_1.initialized(this, "_ScaleBarSkin_Line1");
            this._ScaleBarSkin_Line1 = _loc_1;
            BindingManager.executeBindings(this, "_ScaleBarSkin_Line1", this._ScaleBarSkin_Line1);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Line2_i() : Line
        {
            var _loc_1:* = new Line();
            _loc_1.xFrom = 0;
            _loc_1.yFrom = 20;
            _loc_1.yTo = 20;
            _loc_1.initialized(this, "_ScaleBarSkin_Line2");
            this._ScaleBarSkin_Line2 = _loc_1;
            BindingManager.executeBindings(this, "_ScaleBarSkin_Line2", this._ScaleBarSkin_Line2);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Line3_i() : Line
        {
            var _loc_1:* = new Line();
            _loc_1.yFrom = 12;
            _loc_1.yTo = 20;
            _loc_1.initialized(this, "_ScaleBarSkin_Line3");
            this._ScaleBarSkin_Line3 = _loc_1;
            BindingManager.executeBindings(this, "_ScaleBarSkin_Line3", this._ScaleBarSkin_Line3);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Line4_i() : Line
        {
            var _loc_1:* = new Line();
            _loc_1.yFrom = 20;
            _loc_1.yTo = 28;
            _loc_1.initialized(this, "_ScaleBarSkin_Line4");
            this._ScaleBarSkin_Line4 = _loc_1;
            BindingManager.executeBindings(this, "_ScaleBarSkin_Line4", this._ScaleBarSkin_Line4);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Label1_i() : Label
        {
            var _loc_1:* = new Label();
            _loc_1.y = 0;
            _loc_1.setStyle("color", 0);
            _loc_1.id = "labelMetric";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            this.labelMetric = _loc_1;
            BindingManager.executeBindings(this, "labelMetric", this.labelMetric);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_Label2_i() : Label
        {
            var _loc_1:* = new Label();
            _loc_1.y = 30;
            _loc_1.setStyle("color", 0);
            _loc_1.id = "labelUS";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            this.labelUS = _loc_1;
            BindingManager.executeBindings(this, "labelUS", this.labelUS);
            return _loc_1;
        }// end function

        private function _ScaleBarSkin_bindingsSetup() : Array
        {
            var result:Array;
            result[0] = new Binding(this, null, null, "_ScaleBarSkin_Line1.stroke", "solidColorStroke");
            result[1] = new Binding(this, null, null, "_ScaleBarSkin_Line2.stroke", "solidColorStroke");
            result[2] = new Binding(this, function () : Number
            {
                return Math.max(hostComponent.lengthUS, hostComponent.lengthMetric);
            }// end function
            , null, "_ScaleBarSkin_Line2.xTo");
            result[3] = new Binding(this, null, null, "_ScaleBarSkin_Line3.stroke", "solidColorStroke");
            result[4] = new Binding(this, function () : Number
            {
                return hostComponent.lengthMetric;
            }// end function
            , null, "_ScaleBarSkin_Line3.xFrom");
            result[5] = new Binding(this, function () : Number
            {
                return hostComponent.lengthMetric;
            }// end function
            , null, "_ScaleBarSkin_Line3.xTo");
            result[6] = new Binding(this, null, null, "_ScaleBarSkin_Line4.stroke", "solidColorStroke");
            result[7] = new Binding(this, function () : Number
            {
                return hostComponent.lengthUS;
            }// end function
            , null, "_ScaleBarSkin_Line4.xFrom");
            result[8] = new Binding(this, function () : Number
            {
                return hostComponent.lengthUS;
            }// end function
            , null, "_ScaleBarSkin_Line4.xTo");
            result[9] = new Binding(this, function () : String
            {
                var _loc_1:* = getStyle("fontFamily");
                return _loc_1 == undefined ? (null) : (String(_loc_1));
            }// end function
            , function (_sourceFunctionReturnValue:String) : void
            {
                labelMetric.setStyle("fontFamily", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelMetric.fontFamily");
            result[10] = new Binding(this, function () : Number
            {
                return getStyle("fontSize");
            }// end function
            , function (_sourceFunctionReturnValue:Number) : void
            {
                labelMetric.setStyle("fontSize", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelMetric.fontSize");
            result[11] = new Binding(this, function () : String
            {
                var _loc_1:* = getStyle("fontWeight");
                return _loc_1 == undefined ? (null) : (String(_loc_1));
            }// end function
            , function (_sourceFunctionReturnValue:String) : void
            {
                labelMetric.setStyle("fontWeight", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelMetric.fontWeight");
            result[12] = new Binding(this, function () : String
            {
                var _loc_1:* = getStyle("fontFamily");
                return _loc_1 == undefined ? (null) : (String(_loc_1));
            }// end function
            , function (_sourceFunctionReturnValue:String) : void
            {
                labelUS.setStyle("fontFamily", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelUS.fontFamily");
            result[13] = new Binding(this, function () : Number
            {
                return getStyle("fontSize");
            }// end function
            , function (_sourceFunctionReturnValue:Number) : void
            {
                labelUS.setStyle("fontSize", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelUS.fontSize");
            result[14] = new Binding(this, function () : String
            {
                var _loc_1:* = getStyle("fontWeight");
                return _loc_1 == undefined ? (null) : (String(_loc_1));
            }// end function
            , function (_sourceFunctionReturnValue:String) : void
            {
                labelUS.setStyle("fontWeight", _sourceFunctionReturnValue);
                return;
            }// end function
            , "labelUS.fontWeight");
            return result;
        }// end function

        public function get labelMetric() : Label
        {
            return this._123446844labelMetric;
        }// end function

        public function set labelMetric(value:Label) : void
        {
            var _loc_2:* = this._123446844labelMetric;
            if (_loc_2 !== value)
            {
                this._123446844labelMetric = value;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "labelMetric", _loc_2, value));
                }
            }
            return;
        }// end function

        public function get labelUS() : Label
        {
            return this._63202158labelUS;
        }// end function

        public function set labelUS(value:Label) : void
        {
            var _loc_2:* = this._63202158labelUS;
            if (_loc_2 !== value)
            {
                this._63202158labelUS = value;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "labelUS", _loc_2, value));
                }
            }
            return;
        }// end function

        public function get solidColorStroke() : SolidColorStroke
        {
            return this._122811344solidColorStroke;
        }// end function

        public function set solidColorStroke(value:SolidColorStroke) : void
        {
            var _loc_2:* = this._122811344solidColorStroke;
            if (_loc_2 !== value)
            {
                this._122811344solidColorStroke = value;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "solidColorStroke", _loc_2, value));
                }
            }
            return;
        }// end function

        public function get hostComponent() : ScaleBar
        {
            return this._213507019hostComponent;
        }// end function

        public function set hostComponent(value:ScaleBar) : void
        {
            var _loc_2:* = this._213507019hostComponent;
            if (_loc_2 !== value)
            {
                this._213507019hostComponent = value;
                if (this.hasEventListener("propertyChange"))
                {
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hostComponent", _loc_2, value));
                }
            }
            return;
        }// end function

        public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil2) : void
        {
            _watcherSetupUtil = watcherSetupUtil;
            return;
        }// end function

    }
}