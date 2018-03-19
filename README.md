
## LuHaxe
LuHaxe是我的一个脑洞概念实现，它的目标是让程序员通过编写Haxe（与ActionScript、TypeScript极其相似的体验和手感），完成Unity3D环境中lua脚本的开发工作。胶水中的胶水，不会lua也能写一手好lua的胶水。
## LuHaxe特点
* 底层采用某大神的[tolua](https://github.com/topameng/tolua)，成熟稳定，重复造车轮子不是脑洞的目的。因此本框架具有tolua的全部特点。
* 采用Haxe语言进行脚本编写，并“翻译”成lua执行，代替在tolua环境下进行lua脚本编写的传统开发模式。
* Haxe是强类型的面向对象语言，具有完整的面向对象特性，包括但不限于继承、接口、抽象、重载、g/setter、lambda、泛型模板等，详见[Wiki](https://en.wikipedia.org/wiki/Haxe)。更贴合Java、C#等程序员的书写和设计习惯。
* 支持HaxeDevelop(FlashDevelop)、VS Code等代码编辑工具，具有完善的代码提示、代码自动完成、Refactor、类型检测、编译时错误检测等。解决了当下lua开发中比较大的痛点，方便多人同步进行规模化开发。
* 可通过trace输出日志的方式调试Haxe文件，亦可以通过tolua的调试机制调试生成的lua文件。
* AS、TS、JS程序员可三分钟内上手。
* 有成品的Haxe库和底层库不依赖tolua，如：[PureMVC(MVC框架)](https://github.com/PureMVC/puremvc-haxe-multicore-framework)、[Enitias(ECS框架)](https://github.com/montonero/entithax)、[Protobuf（序列化）](https://github.com/nitrobin/protohx)、[Bson（序列化）](https://github.com/qifun/json-stream)、[TCP/UDP Socket](https://github.com/MattTuttle/hxnet)等。移植其他语言类库也比较容易。
* Haxe可输出成多种主流语言，因此前后端通用的战斗逻辑可统一用Haxe进行编写，然后输出成服务器相对应的语言即可。

<br />

## 安装(Windows)
* 下载Haxe [https://haxe.org/download/](https://haxe.org/download/)
* 下载IDE [推荐HaxeDevelop，用本框架可以免配置，其他编辑器需要手动配置](https://haxe.org/documentation/introduction/editors-and-ides.html)
* 打开HaxeDevelop并打开项目Haxe/Example，修改hx文件后，执行菜单中的Build Project。
* 打开Unity并打开项目Unity/Example，然后打开场景Unity/Example/Assets/Example，运行查看效果。
<br />

## 示例
```haxe
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
	//测试GameObject
	this.go = GameObject.New("go");
	this.go.AddComponent(typeof(unityengine.ParticleSystem));
	this.cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
	this.sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
	this.cube.transform.position = Vector3.New(3, 0, 0);

	//测试Prefab
	var canvas = GameObject.Find("Canvas");		
	this.txt = Object.Instantiate(Resources.Load("TextPreb"));
	this.txt.transform.parent = canvas.transform;

	//测试Update方法
	TimerHelper.AddUpdateListener(this, this.Update);

	//Coroutine 测试协程
	Coroutine.start(CoFunc);	
    }
	
    public function Update():Void{
	//测试GameObject位移
	var pos = this.cube.transform.position;
	var newPos = Vector3.New(pos.x + 0.01, pos.y, pos.z);
	this.cube.transform.position = newPos;
    }

    private function CoFunc():Void{
	//测试网络加载、协程、获取组件
	var www = WWW.New("http://www.baidu.com");
	Coroutine.www(www);
	var content = DataHelper.WWWtoString(www);
	trace(content);
	this.txt.GetComponent(typeof(Text)).text = "Bytes Downloaded:" + www.bytesDownloaded;
	Coroutine.wait(3);
	this.txt.GetComponent(typeof(Text)).text = "Coroutine Ended";
    }
}
```
<br />

## 创建API映射
Haxe调用tolua需要进行API映射，本框架映射API非常简单：
* tolua中的内容 (Vector3.lua)
```lua

function Vector3.New(x, y, z)				

	local t = {x = x or 0, y = y or 0, z = z or 0}

	setmetatable(t, Vector3)						

	return t

end
```

* Haxe映射文件 (Vector3.hx)
```haxe

package;

extern class Vector3 

{

	var x:Float;
	var y:Float;
	var z:Float;
	static function New(x:Float, y:Float, z:Float):Vector3;

}
```
* 注意：由于haxe的翻译规则，通过“冒号”进行方法调用lua指令，需要将lua当成“点”的模式进行处理，参考UpdateBeat.hx。

## 项目进度
当前搭建好了脚手架，进行了可行性验证，但是还有大量API未映射，希望得到各位大神的帮助。 
* 已测试特性：GameObject、协程、UGUI、TCP/WS Socket、WWW。
<br />

## 交流
QQ群：709673804  
验证码：撸Haxe


