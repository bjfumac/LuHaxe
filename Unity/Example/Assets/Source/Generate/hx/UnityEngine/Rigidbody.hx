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
extern class Rigidbody
{
	static function New():Rigidbody;
	var velocity:Vector3;
	var angularVelocity:Vector3;
	var drag:Float;
	var angularDrag:Float;
	var mass:Float;
	var useGravity:Bool;
	var maxDepenetrationVelocity:Float;
	var isKinematic:Bool;
	var freezeRotation:Bool;
	var constraints:RigidbodyConstraints;
	var collisionDetectionMode:CollisionDetectionMode;
	var centerOfMass:Vector3;
	var worldCenterOfMass:Vector3;
	var inertiaTensorRotation:Any;
	var inertiaTensor:Vector3;
	var detectCollisions:Bool;
	var position:Vector3;
	var rotation:Any;
	var interpolation:RigidbodyInterpolation;
	var solverIterations:Int;
	var solverVelocityIterations:Int;
	var sleepThreshold:Float;
	var maxAngularVelocity:Float;
	function SetDensity(density:Float):Void;
	function ClosestPointOnBounds(position:Vector3):Vector3;
	function GetRelativePointVelocity(relativePoint:Vector3):Vector3;
	function GetPointVelocity(worldPoint:Vector3):Vector3;
	function MovePosition(position:Vector3):Void;
	function MoveRotation(rot:Any):Void;
	function Sleep():Void;
	function IsSleeping():Bool;
	function WakeUp():Void;
	function ResetCenterOfMass():Void;
	function ResetInertiaTensor():Void;
}

