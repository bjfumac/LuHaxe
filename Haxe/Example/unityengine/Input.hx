/**
    * MIT License

	Copyright (c) 2018 bjfumac macvsapple@gmail.com

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights

    to use, copy, modify, merge, publish, distribute, sublicense, and/ or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:

            The above copyright notice and this permission notice shall be included in all
            copies or substantial portions of the Software.


    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

    SOFTWARE.
    */ 

package unityengine;
extern class Input
{
	var compensateSensors:Bool;
	var gyro:Gyroscope;
	var mousePosition:Vector3;
	var mouseScrollDelta:Vector2;
	var mousePresent:Bool;
	var simulateMouseWithTouches:Bool;
	var anyKey:Bool;
	var anyKeyDown:Bool;
	var inputString:String;
	var acceleration:Vector3;
	var accelerationEvents:Array<AccelerationEvent>;
	var accelerationEventCount:Int;
	var touches:Array<Touch>;
	var touchCount:Int;
	var touchPressureSupported:Bool;
	var stylusTouchSupported:Bool;
	var touchSupported:Bool;
	var multiTouchEnabled:Bool;
	var location:LocationService;
	var compass:Compass;
	var deviceOrientation:DeviceOrientation;
	var imeCompositionMode:IMECompositionMode;
	var compositionString:String;
	var imeIsSelected:Bool;
	var compositionCursorPos:Vector2;
	var backButtonLeavesApp:Bool;
	static function GetAxis(axisName:String):Float;
	static function GetAxisRaw(axisName:String):Float;
	static function GetButton(buttonName:String):Bool;
	static function GetButtonDown(buttonName:String):Bool;
	static function GetButtonUp(buttonName:String):Bool;
	static function GetJoystickNames():Array<String>;
	static function GetMouseButton(button:Int):Bool;
	static function GetMouseButtonDown(button:Int):Bool;
	static function GetMouseButtonUp(button:Int):Bool;
	static function ResetInputAxes():Void;
	static function GetAccelerationEvent(index:Int):AccelerationEvent;
	static function GetTouch(index:Int, flag:Int):Touch;
}

