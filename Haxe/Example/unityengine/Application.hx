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
extern class Application
{
	var streamedBytes:Int;
	var isPlaying:Bool;
	var isFocused:Bool;
	var isEditor:Bool;
	var platform:RuntimePlatform;
	var buildGUID:String;
	var isMobilePlatform:Bool;
	var isConsolePlatform:Bool;
	var runInBackground:Bool;
	var dataPath:String;
	var streamingAssetsPath:String;
	var persistentDataPath:String;
	var temporaryCachePath:String;
	var absoluteURL:String;
	var unityVersion:String;
	var version:String;
	var installerName:String;
	var identifier:String;
	var installMode:ApplicationInstallMode;
	var sandboxType:ApplicationSandboxType;
	var productName:String;
	var companyName:String;
	var cloudProjectId:String;
	var targetFrameRate:Int;
	var systemLanguage:SystemLanguage;
	var backgroundLoadingPriority:ThreadPriority;
	var internetReachability:NetworkReachability;
	var genuine:Bool;
	var genuineCheckAvailable:Bool;
	static function Quit():Void;
	static function CancelQuit():Void;
	static function Unload():Void;
	static function GetBuildTags():Array<String>;
	static function SetBuildTags(buildTags:Array<String>):Void;
	static function HasProLicense():Bool;
	static function RequestAdvertisingIdentifierAsync(delegateMethod:AdvertisingIdentifierCallback):Bool;
	static function OpenURL(url:String):Void;
	static function GetStackTraceLogType(logType:LogType):StackTraceLogType;
	static function SetStackTraceLogType(logType:LogType, stackTraceType:StackTraceLogType):Void;
	static function RequestUserAuthorization(mode:UserAuthorization):AsyncOperation;
	static function HasUserAuthorization(mode:UserAuthorization):Bool;
}

