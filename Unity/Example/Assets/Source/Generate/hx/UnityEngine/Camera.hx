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
extern class Camera
{
	static function New():Camera;
	static var onPreCull:CameraCallback;
	static var onPreRender:CameraCallback;
	static var onPostRender:CameraCallback;
	var fieldOfView:Float;
	var nearClipPlane:Float;
	var farClipPlane:Float;
	var renderingPath:RenderingPath;
	var actualRenderingPath:RenderingPath;
	var allowHDR:Bool;
	var forceIntoRenderTexture:Bool;
	var allowMSAA:Bool;
	var allowDynamicResolution:Bool;
	var orthographicSize:Float;
	var orthographic:Bool;
	var opaqueSortMode:OpaqueSortMode;
	var transparencySortMode:TransparencySortMode;
	var transparencySortAxis:Vector3;
	var depth:Float;
	var aspect:Float;
	var cullingMask:Int;
	var scene:Any;
	var eventMask:Int;
	var backgroundColor:Color;
	var rect:Rect;
	var pixelRect:Rect;
	var targetTexture:RenderTexture;
	var activeTexture:RenderTexture;
	var pixelWidth:Int;
	var pixelHeight:Int;
	var scaledPixelWidth:Int;
	var scaledPixelHeight:Int;
	var cameraToWorldMatrix:Any;
	var worldToCameraMatrix:Any;
	var projectionMatrix:Any;
	var nonJitteredProjectionMatrix:Any;
	var useJitteredProjectionMatrixForTransparentRendering:Bool;
	var previousViewProjectionMatrix:Any;
	var velocity:Vector3;
	var clearFlags:CameraClearFlags;
	var stereoEnabled:Bool;
	var stereoSeparation:Float;
	var stereoConvergence:Float;
	var cameraType:CameraType;
	var stereoTargetEye:StereoTargetEyeMask;
	var areVRStereoViewMatricesWithinSingleCullTolerance:Bool;
	var stereoActiveEye:MonoOrStereoscopicEye;
	var targetDisplay:Int;
	var main:Camera;
	var current:Camera;
	var allCameras:Array<Camera>;
	var allCamerasCount:Int;
	var useOcclusionCulling:Bool;
	var cullingMatrix:Any;
	var layerCullDistances:Array<Float>;
	var layerCullSpherical:Bool;
	var depthTextureMode:DepthTextureMode;
	var clearStencilAfterLightingPass:Bool;
	var commandBufferCount:Int;
	static var onPreCull:CameraCallback;
	static var onPreRender:CameraCallback;
	static var onPostRender:CameraCallback;
	function ResetWorldToCameraMatrix():Void;
	function ResetProjectionMatrix():Void;
	function ResetAspect():Void;
	function GetStereoViewMatrix(eye:StereoscopicEye):Any;
	function SetStereoViewMatrix(eye:StereoscopicEye, matrix:Any):Void;
	function ResetStereoViewMatrices():Void;
	function GetStereoProjectionMatrix(eye:StereoscopicEye):Any;
	function SetStereoProjectionMatrix(eye:StereoscopicEye, matrix:Any):Void;
	function CalculateFrustumCorners(viewport:Rect, z:Float, eye:MonoOrStereoscopicEye, outCorners:Array<Vector3>):Void;
	function ResetStereoProjectionMatrices():Void;
	function ResetTransparencySortSettings():Void;
	function WorldToScreenPoint(position:Vector3):Vector3;
	function WorldToViewportPoint(position:Vector3):Vector3;
	function ViewportToWorldPoint(position:Vector3):Vector3;
	function ScreenToWorldPoint(position:Vector3):Vector3;
	function ScreenToViewportPoint(position:Vector3):Vector3;
	function ViewportToScreenPoint(position:Vector3):Vector3;
	function ViewportPointToRay(position:Vector3):Ray;
	function ScreenPointToRay(position:Vector3):Ray;
	static function GetAllCameras(cameras:Array<Camera>):Int;
	function Render():Void;
	function RenderWithShader(shader:Shader, replacementTag:String):Void;
	function SetReplacementShader(shader:Shader, replacementTag:String):Void;
	function ResetReplacementShader():Void;
	function ResetCullingMatrix():Void;
	function RenderDontRestore():Void;
	static function SetupCurrent(cur:Camera):Void;
	function CopyFrom(other:Camera):Void;
	function AddCommandBuffer(evt:CameraEvent, buffer:CommandBuffer):Void;
	function RemoveCommandBuffer(evt:CameraEvent, buffer:CommandBuffer):Void;
	function RemoveCommandBuffers(evt:CameraEvent):Void;
	function RemoveAllCommandBuffers():Void;
	function GetCommandBuffers(evt:CameraEvent):Array<CommandBuffer>;
	function CalculateObliqueMatrix(clipPlane:Vector4):Any;
	function GetStereoNonJitteredProjectionMatrix(eye:StereoscopicEye):Any;
	function CopyStereoDeviceProjectionMatrixToNonJittered(eye:StereoscopicEye):Void;
}

