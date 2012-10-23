//========================================================================================
//Copyright © 2012, Adobe Systems Incorporated
//All rights reserved.
//	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//•	Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//	•	Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//		THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//========================================================================================

package mx.automation.events
{
	
	import flash.events.Event;
	import mx.automation.IAutomationObject;
	
	/**
	 *  The AutomationReplayEvent class represents event objects that are dispatched 
	 *  by the AutomationManager, and used by the functional testing classes
	 *  and any other classes that must replay user interactions.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public class AutomationReplayEvent extends Event
	{
		include "../../core/Version.as";
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  The <code>AutomationReplayEvent.REPLAY</code> constant defines the value of the 
		 *  <code>type</code> property of the event object for a <code>replay</code> event.
		 *
		 *  <p>The properties of the event object have the following values:</p>
		 *  <table class="innertable">
		 *     <tr><th>Property</th><th>Value</th></tr>
		 *     <tr><td><code>automationObject</code></td><td>Delegate of the UIComponent 
		 *        that dispatched the interaction earlier.</td></tr>
		 *     <tr><td><code>bubbles</code></td><td>false</td></tr>
		 *     <tr><td><code>cancelable</code></td><td>false</td></tr>
		 *     <tr><td><code>currentTarget</code></td><td>The Object that defines the 
		 *       event listener that handles the event. For example, if you use 
		 *       <code>myButton.addEventListener()</code> to register an event listener, 
		 *       myButton is the value of the <code>currentTarget</code>. </td></tr>
		 *     <tr><td><code>replayableEvent</code></td><td>Event that needs to be replayed.</td></tr>
		 *     <tr><td><code>target</code></td><td>The Object that dispatched the event; 
		 *       it is not always the Object listening for the event. 
		 *       Use the <code>currentTarget</code> property to always access the 
		 *       Object listening for the event.</td></tr>
		 *  </table>
		 *
		 *  @eventType replay
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public static const REPLAY:String = "replay";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  Constructor.
		 *
		 *  @param type The event type; indicates the action that caused the event.
		 *
		 *  @param bubbles Whether the event can bubble up the display list hierarchy.
		 *
		 *  @param cancelable Whether the behavior associated with the event can be prevented.
		 * 
		 *  @param automationObject Delegate of the UIComponent that dispatched the interaction earlier.
		 *
		 *  @param replayableEvent Event that needs to be replayed.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public function AutomationReplayEvent(type:String = "replay", 
											  bubbles:Boolean = false,
											  cancelable:Boolean = false,
											  automationObject:Object = null, 
											  replayableEvent:Event = null)
		{
			super(type, bubbles, cancelable);
			
			this.automationObject = automationObject;
			this.replayableEvent = replayableEvent;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  automationObject
		//----------------------------------
		
		/**
		 *  Delegate of the UIComponent object on which this event will be replayed
		 *  since the target on an event that was not really dispatched
		 *  is not available.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public var automationObject:Object;
		
		//----------------------------------
		//  replayableEvent
		//----------------------------------
		
		/**
		 *  Event to the replayed.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public var replayableEvent:Event;
		
		//----------------------------------
		//  succeeded
		//----------------------------------
		
		/**
		 *  Contains <code>true</code> if the replay was successful, and <code>false</code> if not.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public var succeeded:Boolean;
		
		//--------------------------------------------------------------------------
		//
		//  Overridden methods: Event
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		override public function clone():Event
		{
			return new AutomationReplayEvent(type, bubbles, cancelable,
				automationObject,
				replayableEvent);
		}
	}
	
}
