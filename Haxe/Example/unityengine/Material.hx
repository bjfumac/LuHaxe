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
extern class Material
{
	static function New():Material;
	var shader:Shader;
	var color:Color;
	var mainTexture:Texture;
	var mainTextureOffset:Vector2;
	var mainTextureScale:Vector2;
	var passCount:Int;
	var renderQueue:Int;
	var shaderKeywords:Array<String>;
	var globalIlluminationFlags:MaterialGlobalIlluminationFlags;
	var enableInstancing:Bool;
	var doubleSidedGI:Bool;
	function SetOverrideTag(tag:String, val:String):Void;
	function SetShaderPassEnabled(passName:String, enabled:Bool):Void;
	function GetShaderPassEnabled(passName:String):Bool;
	function Lerp(start:Material, end:Material, t:Float):Void;
	function SetPass(pass:Int):Bool;
	function GetPassName(pass:Int):String;
	function FindPass(passName:String):Int;
	function CopyPropertiesFromMaterial(mat:Material):Void;
	function EnableKeyword(keyword:String):Void;
	function DisableKeyword(keyword:String):Void;
	function IsKeywordEnabled(keyword:String):Bool;
}

