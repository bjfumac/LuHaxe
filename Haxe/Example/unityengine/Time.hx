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
extern class Time
{
	var time:Float;
	var timeSinceLevelLoad:Float;
	var deltaTime:Float;
	var fixedTime:Float;
	var unscaledTime:Float;
	var fixedUnscaledTime:Float;
	var unscaledDeltaTime:Float;
	var fixedUnscaledDeltaTime:Float;
	var fixedDeltaTime:Float;
	var maximumDeltaTime:Float;
	var smoothDeltaTime:Float;
	var maximumParticleDeltaTime:Float;
	var timeScale:Float;
	var frameCount:Int;
	var renderedFrameCount:Int;
	var realtimeSinceStartup:Float;
	var captureFramerate:Int;
	var inFixedTimeStep:Bool;
}

