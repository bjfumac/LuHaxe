/**
 * MIT License

	Copyright (c) 2018 bjfumac macvsapple@gmail.com

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
 */
package;

/**
 * ...
 * @author bjfumac
 */
extern class Vector3 
{
	var x:Float;
	var y:Float;
	var z:Float;
	static var up:Vector3;
	static var down:Vector3;
	static var right:Vector3;
	static var left:Vector3;
	static var back:Vector3;
	static var zero:Vector3;
	static var one:Vector3;
	
	static function New(x:Float, y:Float, z:Float):Vector3;
	function Add(b:Vector3):Vector3;
	@:overload(function(b:Float):Vector3 {})
	function Div(b:Vector3):Vector3;
	@:overload(function(b:Float):Vector3 {})
	function Mul(b:Vector3):Vector3;
	function Sub(b:Vector3):Vector3;
	function Equals(b:Vector3):Vector3;
}