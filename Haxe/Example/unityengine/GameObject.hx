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
extern class GameObject
{
	static function New(name:String):GameObject;
	var transform:Transform;
	var layer:Int;
	var activeSelf:Bool;
	var activeInHierarchy:Bool;
	var isStatic:Bool;
	var tag:String;
	var scene:Any;
	var gameObject:GameObject;
	static function CreatePrimitive(type:PrimitiveType):GameObject;
	function GetComponentInParent(type:Any):Component;
	function SetActive(value:Bool):Void;
	function CompareTag(tag:String):Bool;
	static function FindGameObjectWithTag(tag:String):GameObject;
	static function FindWithTag(tag:String):GameObject;
	static function FindGameObjectsWithTag(tag:String):Array<GameObject>;
	static function Find(name:String):GameObject;
	function AddComponent(t:Any):Void;
	function BroadcastMessage(methodName:String):Void;
	function SendMessageUpwards(methodName:String):Void;
	function SendMessage(methodName:String):Void;
}

