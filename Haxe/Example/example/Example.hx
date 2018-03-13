/**
 * MIT License

	Copyright (c) 2018 bjfumac macvsapple@gmail.com

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
 */

package example;
import unityengine.Object;
import unityengine.PrimitiveType;
import unityengine.GameObject;
import unityengine.Resources;
import Global.*;
import unityengine.WWW;
import unityengine.ui.Text;

class Example{
	private var go:GameObject;
	private var cube:GameObject;
	private var sphere:GameObject;
	private var txt:GameObject;
	
    public function new(){
		this.go = GameObject.New("go");
		this.go.AddComponent(typeof(unityengine.ParticleSystem));
		this.cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
		this.sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
		this.cube.transform.position = Vector3.New(3, 0, 0);
		var canvas = GameObject.Find("Canvas");		
		txt = Object.Instantiate(Resources.Load("TextPreb"));
		txt.transform.parent = canvas.transform;
		TimerHelper.AddUpdateListener(this, this.Update);
		
		//Coroutine 测试协程
		Coroutine.start(CoFunc);
		
		
    }
	
	public function Update():Void{
		var pos = this.cube.transform.position;
		var newPos = Vector3.New(pos.x + 0.01, pos.y, pos.z);
		this.cube.transform.position = newPos;
		//trace(this.cube.transform.position);
	}
	
	private function CoFunc():Void{
		var www = WWW.New("http://www.baidu.com");
		Coroutine.www(www);
		var content = DataHelper.WWWtoString(www);
		txt.GetComponent(typeof(Text)).text = "Bytes Downloaded:" + www.bytesDownloaded;
		Coroutine.wait(3);
		txt.GetComponent(typeof(Text)).text = "Coroutine Ended";
	}
	
}