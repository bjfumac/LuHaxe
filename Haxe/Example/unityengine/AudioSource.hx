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
extern class AudioSource
{
	static function New():AudioSource;
	var volume:Float;
	var pitch:Float;
	var time:Float;
	var timeSamples:Int;
	var clip:AudioClip;
	var outputAudioMixerGroup:AudioMixerGroup;
	var isPlaying:Bool;
	var isVirtual:Bool;
	var loop:Bool;
	var ignoreListenerVolume:Bool;
	var playOnAwake:Bool;
	var ignoreListenerPause:Bool;
	var velocityUpdateMode:AudioVelocityUpdateMode;
	var panStereo:Float;
	var spatialBlend:Float;
	var spatialize:Bool;
	var spatializePostEffects:Bool;
	var reverbZoneMix:Float;
	var bypassEffects:Bool;
	var bypassListenerEffects:Bool;
	var bypassReverbZones:Bool;
	var dopplerLevel:Float;
	var spread:Float;
	var priority:Int;
	var mute:Bool;
	var minDistance:Float;
	var maxDistance:Float;
	var rolloffMode:AudioRolloffMode;
	function PlayDelayed(delay:Float):Void;
	function PlayScheduled(time:Double):Void;
	function SetScheduledStartTime(time:Double):Void;
	function SetScheduledEndTime(time:Double):Void;
	function Stop():Void;
	function Pause():Void;
	function UnPause():Void;
	function SetCustomCurve(type:AudioSourceCurveType, curve:AnimationCurve):Void;
	function GetCustomCurve(type:AudioSourceCurveType):AnimationCurve;
	function GetOutputData(samples:Array<Float>, channel:Int):Void;
	function GetSpectrumData(samples:Array<Float>, channel:Int, window:FFTWindow):Void;
	function SetSpatializerFloat(index:Int, value:Float):Bool;
	function GetSpatializerFloat(index:Int, value:Single&):Bool;
	function SetAmbisonicDecoderFloat(index:Int, value:Float):Bool;
	function GetAmbisonicDecoderFloat(index:Int, value:Single&):Bool;
}

