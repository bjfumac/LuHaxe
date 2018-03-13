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
extern class ParticleSystem
{
	static function New():ParticleSystem;
	var isPlaying:Bool;
	var isEmitting:Bool;
	var isStopped:Bool;
	var isPaused:Bool;
	var time:Float;
	var particleCount:Int;
	var randomSeed:UInt;
	var useAutoRandomSeed:Bool;
	var main:Any;
	var emission:Any;
	var shape:Any;
	var velocityOverLifetime:Any;
	var limitVelocityOverLifetime:Any;
	var inheritVelocity:Any;
	var forceOverLifetime:Any;
	var colorOverLifetime:Any;
	var colorBySpeed:Any;
	var sizeOverLifetime:Any;
	var sizeBySpeed:Any;
	var rotationOverLifetime:Any;
	var rotationBySpeed:Any;
	var externalForces:Any;
	var noise:Any;
	var collision:Any;
	var trigger:Any;
	var subEmitters:Any;
	var textureSheetAnimation:Any;
	var lights:Any;
	var trails:Any;
	var customData:Any;
	function SetParticles(particles:Array<Any>, size:Int):Void;
	function GetParticles(particles:Array<Any>):Int;
	function SetCustomParticleData(customData:Any, streamIndex:Any):Void;
	function GetCustomParticleData(customData:Any, streamIndex:Any):Int;
}

