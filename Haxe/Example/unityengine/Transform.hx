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
extern class Transform
{
	var position:Vector3;
	var localPosition:Vector3;
	var eulerAngles:Vector3;
	var localEulerAngles:Vector3;
	var right:Vector3;
	var up:Vector3;
	var forward:Vector3;
	var rotation:Any;
	var localRotation:Any;
	var localScale:Vector3;
	var parent:Transform;
	var worldToLocalMatrix:Any;
	var localToWorldMatrix:Any;
	var root:Transform;
	var childCount:Int;
	var lossyScale:Vector3;
	var hasChanged:Bool;
	var hierarchyCapacity:Int;
	var hierarchyCount:Int;
	function SetPositionAndRotation(position:Vector3, rotation:Any):Void;
	function RotateAround(point:Vector3, axis:Vector3, angle:Float):Void;
	function DetachChildren():Void;
	function SetAsFirstSibling():Void;
	function SetAsLastSibling():Void;
	function SetSiblingIndex(index:Int):Void;
	function GetSiblingIndex():Int;
	function Find(name:String):Transform;
	function IsChildOf(parent:Transform):Bool;
	function GetEnumerator():Any;
	function GetChild(index:Int):Transform;
	function LookAt(target:Transform, worldUp:Vector3 = Vector3.up):Void; 
}

