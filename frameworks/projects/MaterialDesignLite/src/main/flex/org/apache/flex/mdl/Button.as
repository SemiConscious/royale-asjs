////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.mdl
{
    import org.apache.flex.html.TextButton;          
    
    COMPILE::JS
    {
        import org.apache.flex.core.WrappedHTMLElement;
    }
    
    /**
     *  The Button class provides a Material Design Library UI-like appearance for
     *  a Button.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 10.2
     *  @playerversion AIR 2.6
     *  @productversion FlexJS 0.0
     */
	public class Button extends TextButton
	{
        /**
         *  Constructor.
         *  
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion FlexJS 0.0
         */
		public function Button()
		{
			super();

            className = ""; //set to empty string avoid 'undefined' output when no class selector is assigned by user;
		}
        
        /**
		 * @private
		 * @flexjsignorecoercion org.apache.flex.core.WrappedHTMLElement
		 */
		COMPILE::JS
		override protected function createElement():WrappedHTMLElement
		{
            typeNames = "mdl-button mdl-js-button";
            
            element = document.createElement('button') as WrappedHTMLElement;
            element.className = typeNames;

            positioner = element;
            
            element.flexjs_wrapper = this;

            return element;
		}

        private var _fab:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--fab" effect selector.
         *  Applies fab (circular) display effect. Mutually exclusive with raised, mini-fab, and icon.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get fab():Boolean
        {
            return _fab;
        }
        public function set fab(value:Boolean):void
        {
             _fab = value;

             className += (_fab ? " mdl-button--fab" : "" );
        }

        private var _raised:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--raised" effect selector.
         *  Applies raised display effect. Mutually exclusive with fab, mini-fab, and icon.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get raised():Boolean
        {
            return _raised;
        }
        public function set raised(value:Boolean):void
        {
            _raised = value;

             className += (_raised ? " mdl-button--raised" : "" );
        }

        private var _colored:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--colored" effect selector.
         *  Applies colored display effect (primary or accent color, depending on the type of button).
         *  Colors are defined in material.min.css
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get colored():Boolean
        {
            return _colored;
        }
        public function set colored(value:Boolean):void
        {
             _colored = value;

             className += (_colored ? " mdl-button--colored" : "");  
        }

        private var _accent:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--accent" effect selector.
		 *  Applies accent color display effect.
         *  Colors are defined in material.min.css.
         *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get accent():Boolean
        {
            return _accent;
        }
        public function set accent(value:Boolean):void
        {
            _accent = value;

            className += (_accent ? " mdl-button--accent" : "");  
        }

        private var _primary:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--primary" effect selector.
		 *  Applies primary color display effect.
         *  Colors are defined in material.min.css
         *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get primary():Boolean
        {
            return _primary;
        }
        public function set primary(value:Boolean):void
        {
            _primary = value;

            className += (_primary ? " mdl-button--primary" : "");
        }

        private var _minifab:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--mini-fab" effect selector.
		 *  Applies mini-fab (small fab circular) display effect.
         *  Mutually exclusive with raised, fab, and icon
         *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get minifab():Boolean
        {
            return _minifab;
        }
        public function set minifab(value:Boolean):void
        {
            _minifab = value;

            className += (_minifab ? " mdl-button--mini-fab" : "");
        }

        private var _icon:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-button--icon" effect selector.
		 *  Applies icon (small plain circular) display effect.
         *  Mutually exclusive with raised, fab, and mini-fab
         *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get icon():Boolean
        {
            return _icon;
        }
        public function set icon(value:Boolean):void
        {
            _icon = value;

            className += (_icon ? " mdl-button--icon" : "");
        }

        protected var _ripple:Boolean = false;
        /**
		 *  A boolean flag to activate "mdl-js-ripple-effect" effect selector.
		 *  Applies ripple click effect. May be used in combination with any other classes
         *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
        public function get ripple():Boolean
        {
            return _ripple;
        }
        public function set ripple(value:Boolean):void
        {
            _ripple = value;

            className += (_ripple ? " mdl-js-ripple-effect" : "");
        }
	}
}
