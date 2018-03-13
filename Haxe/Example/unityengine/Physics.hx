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
extern class Physics
{
	 static inline var IgnoreRaycastLayer:4;
	 static inline var DefaultRaycastLayers:-5;
	 static inline var AllLayers:-1;
	var gravity:Vector3;
	var defaultContactOffset:Float;
	var bounceThreshold:Float;
	var defaultSolverIterations:Int;
	var defaultSolverVelocityIterations:Int;
	var sleepThreshold:Float;
	var queriesHitTriggers:Bool;
	var queriesHitBackfaces:Bool;
	var interCollisionDistance:Float;
	var interCollisionStiffness:Float;
	var interCollisionSettingsToggle:Bool;
	var autoSimulation:Bool;
	var autoSyncTransforms:Bool;
	static var IgnoreRaycastLayer:Int;
	static var DefaultRaycastLayers:Int;
	static var AllLayers:Int;
	static function GetIgnoreLayerCollision(layer1:Int, layer2:Int):Bool;
	static function ComputePenetration(colliderA:Collider, positionA:Vector3, rotationA:Any, colliderB:Collider, positionB:Vector3, rotationB:Any, direction:Vector3&, distance:Single&):Bool;
	static function ClosestPoint(point:Vector3, collider:Collider, position:Vector3, rotation:Any):Vector3;
	static function Simulate(step:Float):Void;
	static function SyncTransforms():Void;
	static function RebuildBroadphaseRegions(worldBounds:Bounds, subdivisions:Int):Void;
}

