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
extern class Animator
{
	static function New():Animator;
	var isOptimizable:Bool;
	var isHuman:Bool;
	var hasRootMotion:Bool;
	var humanScale:Float;
	var isInitialized:Bool;
	var deltaPosition:Vector3;
	var deltaRotation:Any;
	var velocity:Vector3;
	var angularVelocity:Vector3;
	var rootPosition:Vector3;
	var rootRotation:Any;
	var applyRootMotion:Bool;
	var linearVelocityBlending:Bool;
	var updateMode:AnimatorUpdateMode;
	var hasTransformHierarchy:Bool;
	var gravityWeight:Float;
	var bodyPosition:Vector3;
	var bodyRotation:Any;
	var stabilizeFeet:Bool;
	var layerCount:Int;
	var parameters:Array<AnimatorControllerParameter>;
	var parameterCount:Int;
	var feetPivotActive:Float;
	var pivotWeight:Float;
	var pivotPosition:Vector3;
	var isMatchingTarget:Bool;
	var speed:Float;
	var targetPosition:Vector3;
	var targetRotation:Any;
	var cullingMode:AnimatorCullingMode;
	var playbackTime:Float;
	var recorderStartTime:Float;
	var recorderStopTime:Float;
	var recorderMode:AnimatorRecorderMode;
	var runtimeAnimatorController:RuntimeAnimatorController;
	var hasBoundPlayables:Bool;
	var avatar:Avatar;
	var playableGraph:PlayableGraph;
	var layersAffectMassCenter:Bool;
	var leftFeetBottomHeight:Float;
	var rightFeetBottomHeight:Float;
	var logWarnings:Bool;
	var fireEvents:Bool;
	function GetIKPosition(goal:AvatarIKGoal):Vector3;
	function SetIKPosition(goal:AvatarIKGoal, goalPosition:Vector3):Void;
	function GetIKRotation(goal:AvatarIKGoal):Any;
	function SetIKRotation(goal:AvatarIKGoal, goalRotation:Any):Void;
	function GetIKPositionWeight(goal:AvatarIKGoal):Float;
	function SetIKPositionWeight(goal:AvatarIKGoal, value:Float):Void;
	function GetIKRotationWeight(goal:AvatarIKGoal):Float;
	function SetIKRotationWeight(goal:AvatarIKGoal, value:Float):Void;
	function GetIKHintPosition(hint:AvatarIKHint):Vector3;
	function SetIKHintPosition(hint:AvatarIKHint, hintPosition:Vector3):Void;
	function GetIKHintPositionWeight(hint:AvatarIKHint):Float;
	function SetIKHintPositionWeight(hint:AvatarIKHint, value:Float):Void;
	function SetLookAtPosition(lookAtPosition:Vector3):Void;
	function SetBoneLocalRotation(humanBoneId:HumanBodyBones, rotation:Any):Void;
	function GetBehaviours(fullPathHash:Int, layerIndex:Int):Array<StateMachineBehaviour>;
	function GetLayerName(layerIndex:Int):String;
	function GetLayerIndex(layerName:String):Int;
	function GetLayerWeight(layerIndex:Int):Float;
	function SetLayerWeight(layerIndex:Int, weight:Float):Void;
	function GetCurrentAnimatorStateInfo(layerIndex:Int):AnimatorStateInfo;
	function GetNextAnimatorStateInfo(layerIndex:Int):AnimatorStateInfo;
	function GetAnimatorTransitionInfo(layerIndex:Int):AnimatorTransitionInfo;
	function GetCurrentAnimatorClipInfoCount(layerIndex:Int):Int;
	function GetNextAnimatorClipInfoCount(layerIndex:Int):Int;
	function IsInTransition(layerIndex:Int):Bool;
	function GetParameter(index:Int):AnimatorControllerParameter;
	function SetTarget(targetIndex:AvatarTarget, targetNormalizedTime:Float):Void;
	function GetBoneTransform(humanBoneId:HumanBodyBones):Transform;
	function StartPlayback():Void;
	function StopPlayback():Void;
	function StartRecording(frameCount:Int):Void;
	function StopRecording():Void;
	function HasState(layerIndex:Int, stateID:Int):Bool;
	static function StringToHash(name:String):Int;
	function Update(deltaTime:Float):Void;
	function Rebind():Void;
	function ApplyBuiltinRootMotion():Void;
}

