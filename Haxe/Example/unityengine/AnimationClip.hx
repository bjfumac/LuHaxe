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
extern class AnimationClip
{
	static function New():AnimationClip;
	var length:Float;
	var frameRate:Float;
	var wrapMode:WrapMode;
	var localBounds:Bounds;
	var legacy:Bool;
	var humanMotion:Bool;
	var empty:Bool;
	var events:Array<AnimationEvent>;
	function SampleAnimation(go:GameObject, time:Float):Void;
	function SetCurve(relativePath:String, type:Any, propertyName:String, curve:AnimationCurve):Void;
	function EnsureQuaternionContinuity():Void;
	function ClearCurves():Void;
	function AddEvent(evt:AnimationEvent):Void;
}

