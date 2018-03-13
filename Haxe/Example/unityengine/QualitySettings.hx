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
extern class QualitySettings
{
	var names:Array<String>;
	var shadowCascade4Split:Vector3;
	var anisotropicFiltering:AnisotropicFiltering;
	var maxQueuedFrames:Int;
	var blendWeights:BlendWeights;
	var pixelLightCount:Int;
	var shadows:ShadowQuality;
	var shadowProjection:ShadowProjection;
	var shadowCascades:Int;
	var shadowDistance:Float;
	var shadowResolution:ShadowResolution;
	var shadowmaskMode:ShadowmaskMode;
	var shadowNearPlaneOffset:Float;
	var shadowCascade2Split:Float;
	var lodBias:Float;
	var masterTextureLimit:Int;
	var maximumLODLevel:Int;
	var particleRaycastBudget:Int;
	var softParticles:Bool;
	var softVegetation:Bool;
	var vSyncCount:Int;
	var antiAliasing:Int;
	var asyncUploadTimeSlice:Int;
	var asyncUploadBufferSize:Int;
	var realtimeReflectionProbes:Bool;
	var billboardsFaceCameraPosition:Bool;
	var resolutionScalingFixedDPIFactor:Float;
	var desiredColorSpace:ColorSpace;
	var activeColorSpace:ColorSpace;
	static function GetQualityLevel():Int;
}

