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
extern class Animation
{
	static function New():Animation;
	var clip:AnimationClip;
	var playAutomatically:Bool;
	var wrapMode:WrapMode;
	var isPlaying:Bool;
	var animatePhysics:Bool;
	var cullingType:AnimationCullingType;
	var localBounds:Bounds;


	
var get_Item:AnimationState	function Sample():Void;
	function IsPlaying(name:String):Bool;
	function get_Item(name:String):AnimationState;
	function GetClipCount():Int;
	function SyncLayer(layer:Int):Void;
	function GetEnumerator():Any;
	function GetClip(name:String):AnimationClip;
}

