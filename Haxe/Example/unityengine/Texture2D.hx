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
extern class Texture2D
{
	static function New():Texture2D;
	var mipmapCount:Int;
	var format:TextureFormat;
	var whiteTexture:Texture2D;
	var blackTexture:Texture2D;
	static function CreateExternalTexture(width:Int, height:Int, format:TextureFormat, mipmap:Bool, linear:Bool, nativeTex:IntPtr):Texture2D;
	function UpdateExternalTexture(nativeTex:IntPtr):Void;
	function SetPixel(x:Int, y:Int, color:Color):Void;
	function GetPixel(x:Int, y:Int):Color;
	function GetPixelBilinear(u:Float, v:Float):Color;
	function GetRawTextureData():Array<Byte>;
	function Compress(highQuality:Bool):Void;
	static function GenerateAtlas(sizes:Array<Vector2>, padding:Int, atlasSize:Int, results:Any):Bool;
}

