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
extern class Renderer
{
	static function New():Renderer;
	var bounds:Bounds;
	var enabled:Bool;
	var isVisible:Bool;
	var shadowCastingMode:ShadowCastingMode;
	var receiveShadows:Bool;
	var motionVectorGenerationMode:MotionVectorGenerationMode;
	var lightProbeUsage:LightProbeUsage;
	var reflectionProbeUsage:ReflectionProbeUsage;
	var sortingLayerName:String;
	var sortingLayerID:Int;
	var sortingOrder:Int;
	var allowOcclusionWhenDynamic:Bool;
	var isPartOfStaticBatch:Bool;
	var worldToLocalMatrix:Any;
	var localToWorldMatrix:Any;
	var lightProbeProxyVolumeOverride:GameObject;
	var probeAnchor:Transform;
	var lightmapIndex:Int;
	var realtimeLightmapIndex:Int;
	var lightmapScaleOffset:Vector4;
	var realtimeLightmapScaleOffset:Vector4;
	var material:Material;
	var sharedMaterial:Material;
	var materials:Array<Material>;
	var sharedMaterials:Array<Material>;
	function SetPropertyBlock(properties:MaterialPropertyBlock):Void;
	function GetPropertyBlock(dest:MaterialPropertyBlock):Void;
	function GetClosestReflectionProbes(result:Any):Void;
}

